import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'tools_copy_model.dart';
export 'tools_copy_model.dart';

class ToolsCopyWidget extends StatefulWidget {
  const ToolsCopyWidget({super.key});

  @override
  _ToolsCopyWidgetState createState() => _ToolsCopyWidgetState();
}

class _ToolsCopyWidgetState extends State<ToolsCopyWidget> {
  late ToolsCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToolsCopyModel());

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
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 175.0,
          height: MediaQuery.sizeOf(context).height * 0.45,
          decoration: const BoxDecoration(),
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ),
            child: MasonryGridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 100.0,
              itemCount: 4,
              itemBuilder: (context, index) {
                return [
                  () => Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: const BoxDecoration(),
                            child: Lottie.asset(
                              'assets/lottie_animations/Animation_-_1700016202144.json',
                              width: 150.0,
                              height: 130.0,
                              fit: BoxFit.cover,
                              animate: true,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '709mzitg' /* Flutter */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Roboto Mono',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                          ),
                        ],
                      ),
                  () => Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: const BoxDecoration(),
                            child: Lottie.asset(
                              'assets/lottie_animations/figmaa.json',
                              width: 150.0,
                              height: 130.0,
                              fit: BoxFit.cover,
                              animate: true,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'lkk98fya' /* Figma */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Roboto Mono',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                          ),
                        ],
                      ),
                  () => Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: const BoxDecoration(),
                            child: Lottie.asset(
                              'assets/lottie_animations/github.json',
                              width: 150.0,
                              height: 130.0,
                              fit: BoxFit.cover,
                              animate: true,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'uu7qum1u' /* Github */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Roboto Mono',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                          ),
                        ],
                      ),
                  () => Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: const BoxDecoration(),
                            child: Lottie.asset(
                              'assets/lottie_animations/flutterflow.json',
                              width: 150.0,
                              height: 130.0,
                              fit: BoxFit.cover,
                              animate: true,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'x2iorzy1' /* FlutterFlow */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Roboto Mono',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                          ),
                        ],
                      ),
                ][index]();
              },
            ),
          ),
        ),
      ),
    );
  }
}
