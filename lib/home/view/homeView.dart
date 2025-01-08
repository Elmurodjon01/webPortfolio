import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:webpage/helpers/dateHelper.dart';
import 'package:webpage/helpers/prefs.dart';
import 'package:webpage/home/view/widgets/menuDock.dart';
import 'package:webpage/locator.dart';
import 'package:webpage/main.dart';
import 'package:webpage/router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ValueNotifier<bool> isHovered = ValueNotifier(false);
  ValueNotifier<bool> isLogoClicked = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isLogoClicked.value = false,
      child: Material(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/walpapers/blueWalpaper.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  statusBar(onLogoClicked: () {
                    isLogoClicked.value = !isLogoClicked.value;
                  }),
                  menuDock(context, isHovered),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: isLogoClicked,
              builder: (context, value, child) {
                if (value) {
                  return Container(
                    margin: const EdgeInsets.only(left: 5, top: 30),
                    padding: const EdgeInsets.only(top: 12, left: 15),
                    height: 340,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About This Mac',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        const Divider(),
                        const Text(
                          'System Settings...',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'App Store',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Divider(),
                        const Text(
                          'Recent Items',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Divider(),
                        const Text(
                          'Force Quit Chrome',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Divider(),
                        const Text(
                          'Sleep',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Restart...',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Shut Down...',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () async {
                            isFirstTime =
                                await getIt.get<Storage>().getUserCred();
                            context.goNamed(Routes.splash.name);
                            setState(() {});
                          },
                          child: const Text(
                            'Lock Screen',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Log Out MacBook Pro...',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget statusBar({required Function() onLogoClicked}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity,
    height: 30,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 128, 128, 128).withOpacity(
        0.7,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: onLogoClicked,
              child: Image.asset(
                'assets/icons/apple.png',
                filterQuality: FilterQuality.high,
                height: 20,
              ),
            ),
            const Gap(20),
            const Text(
              'Chrome',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'File',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Edit',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'View',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'History',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Bookmarks',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Profiles',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Tab',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Window',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Gap(20),
            const Text(
              'Help',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/icons/wifi.png',
              filterQuality: FilterQuality.high,
              height: 15,
            ),
            const Gap(20),
            Image.asset(
              'assets/icons/search.png',
              filterQuality: FilterQuality.high,
              height: 15,
            ),
            const Gap(20),
            Image.asset(
              'assets/icons/profile.png',
              filterQuality: FilterQuality.high,
              height: 15,
            ),
            const Gap(20),
            Image.asset(
              'assets/icons/controlCenter.png',
              filterQuality: FilterQuality.high,
              height: 15,
            ),
            const Gap(20),
            Text(
              dateFormat.format(DateTime.now()),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    ),
  );
}
