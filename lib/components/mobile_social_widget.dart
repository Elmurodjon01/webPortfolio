import '/components/social_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'mobile_social_model.dart';
export 'mobile_social_model.dart';

class MobileSocialWidget extends StatefulWidget {
  const MobileSocialWidget({super.key});

  @override
  _MobileSocialWidgetState createState() => _MobileSocialWidgetState();
}

class _MobileSocialWidgetState extends State<MobileSocialWidget> {
  late MobileSocialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileSocialModel());

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

    return Visibility(
      visible: MediaQuery.sizeOf(context).width < 600.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: GradientText(
              FFLocalizations.of(context).getText(
                'n1zhnz3u' /* Go to my social */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
              colors: [
                FlutterFlowTheme.of(context).secondary,
                FlutterFlowTheme.of(context).primaryBackground
              ],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
          ),
          wrapWithModel(
            model: _model.socialModel,
            updateCallback: () => setState(() {}),
            child: const SocialWidget(),
          ),
        ],
      ),
    );
  }
}
