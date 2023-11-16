import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'email_success_model.dart';
export 'email_success_model.dart';

class EmailSuccessWidget extends StatefulWidget {
  const EmailSuccessWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  _EmailSuccessWidgetState createState() => _EmailSuccessWidgetState();
}

class _EmailSuccessWidgetState extends State<EmailSuccessWidget> {
  late EmailSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailSuccessModel());

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

    return Align(
      alignment: const AlignmentDirectional(-0.10, -0.29),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.28,
        height: MediaQuery.sizeOf(context).height * 0.35,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(15.0),
        ),
        alignment: const AlignmentDirectional(0.00, 0.00),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(1.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 15.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Text(
                widget.message!,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Noto Serif',
                    ),
              ),
            ),
            Lottie.asset(
              'assets/lottie_animations/emailsuccess.json',
              width: 200.0,
              height: 190.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}
