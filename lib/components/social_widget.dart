import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'social_model.dart';
export 'social_model.dart';

class SocialWidget extends StatefulWidget {
  const SocialWidget({super.key});

  @override
  _SocialWidgetState createState() => _SocialWidgetState();
}

class _SocialWidgetState extends State<SocialWidget> {
  late SocialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 180.0,
      height: 80.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await launchURL(
                  'https://github.com/Elmurodjon01?tab=repositories');
            },
            child: Lottie.asset(
              'assets/lottie_animations/githubsocial.json',
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await launchURL(
                  'https://www.linkedin.com/in/elmurodjon-abdullajonov-9878a4215/');
            },
            child: Lottie.asset(
              'assets/lottie_animations/linkedin.json',
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await launchURL('https://twitter.com/EAbdullajonov');
            },
            child: Lottie.asset(
              'assets/lottie_animations/twitter.json',
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
        ],
      ),
    );
  }
}
