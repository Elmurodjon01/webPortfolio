import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:webpage/helpers/prefs.dart';
import 'package:webpage/helpers/shakeError.dart';
import 'package:webpage/locator.dart';
import 'package:webpage/lockscreen/view/widgets/lockTextField.dart';
import 'package:webpage/main.dart';
import 'package:webpage/router.dart';

class Lockscreenview extends StatefulWidget {
  const Lockscreenview({super.key});

  @override
  State<Lockscreenview> createState() => _LockscreenviewState();
}

class _LockscreenviewState extends State<Lockscreenview> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  ValueNotifier<bool> isLoading = ValueNotifier(false);
  late AnimationController _shakeController;

  @override
  void dispose() {
    _shakeController.dispose();
    userNameController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/walpapers/blueWalpaper.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'ABC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(3),
                  const Icon(
                    Icons.keyboard_alt_outlined,
                    color: Colors.white,
                    size: 14,
                  ),
                  const Gap(20),
                  Image.asset(
                    'assets/icons/battery.png',
                    filterQuality: FilterQuality.high,
                    height: 15,
                  ),
                  const Gap(20),
                  Image.asset(
                    'assets/icons/wifi.png',
                    filterQuality: FilterQuality.high,
                    height: 15,
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Text(
              DateFormat('EEEE, MMMM d').format(DateTime.now()),
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              DateFormat('h:mm').format(DateTime.now()),
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
            Expanded(flex: 8, child: Container()),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Image.asset('assets/icons/lock2.gif'),
                ),
                const Gap(15),
                Text(
                  isFirstTime['id'] ?? 'Guest',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Gap(10),
                lockTextField(userNameController, 'Enter Username', null),
                const Gap(10),
                ShakeError(
                  deltaX: 30,
                  duration: const Duration(milliseconds: 800),
                  controller: (controller) => _shakeController = controller,
                  child: lockTextField(
                    passController,
                    'Enter Password',
                    (value) async {
                      if (isFirstTime['password'] == null) {
                        await getIt.get<Storage>().storeCredentials(
                            userNameController.text.trim(),
                            passController.text.trim());
                        context.goNamed(Routes.home.name);
                      } else {
                        if (isFirstTime['password'] ==
                                passController.text.trim() &&
                            isFirstTime['id'] ==
                                userNameController.text.trim()) {
                          isLoading.value = true;
                          Timer(const Duration(seconds: 2), () {
                            isLoading.value = false;
                            context.goNamed(Routes.home.name);
                          });
                        } else {
                          isLoading.value = true;
                          Timer(const Duration(seconds: 2), () {
                            isLoading.value = false;
                            _shakeController
                                .forward()
                                .then((_) => _shakeController.reset());
                          });
                        }
                      }
                    },
                  ),
                ),
                const Gap(20),
                ValueListenableBuilder(
                  valueListenable: isLoading,
                  builder: (context, value, child) => value
                      ? Container(
                          height: 28,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 79, 79),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.white,
                          ),
                        )
                      : const SizedBox(
                          height: 28,
                        ),
                ),
              ],
            ),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      ),
    );
  }
}
