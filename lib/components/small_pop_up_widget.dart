import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'small_pop_up_model.dart';
export 'small_pop_up_model.dart';

class SmallPopUpWidget extends StatefulWidget {
  const SmallPopUpWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  _SmallPopUpWidgetState createState() => _SmallPopUpWidgetState();
}

class _SmallPopUpWidgetState extends State<SmallPopUpWidget> {
  late SmallPopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmallPopUpModel());
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
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
