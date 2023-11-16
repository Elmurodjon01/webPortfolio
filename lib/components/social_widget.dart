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
          Lottie.asset(
            'assets/lottie_animations/githubsocial.json',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Lottie.asset(
            'assets/lottie_animations/linkedin.json',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Lottie.asset(
            'assets/lottie_animations/twitter.json',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
            animate: true,
          ),
        ],
      ),
    );
  }
}
