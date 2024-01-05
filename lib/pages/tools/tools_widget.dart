import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'tools_model.dart';
export 'tools_model.dart';

class ToolsWidget extends StatefulWidget {
  const ToolsWidget({super.key});

  @override
  _ToolsWidgetState createState() => _ToolsWidgetState();
}

class _ToolsWidgetState extends State<ToolsWidget> {
  late ToolsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToolsModel());

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
                            'assets/lottie_animations/firebase.json',
                            width: 150.0,
                            height: 130.0,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                        if (MediaQuery.sizeOf(context).width > 350.0)
                          Text(
                            FFLocalizations.of(context).getText(
                              'x344puov' /* Firebase */,
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
                            'assets/lottie_animations/postman.json',
                            width: 150.0,
                            height: 130.0,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'ywmv6d1s' /* Postman */,
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
                            'assets/lottie_animations/vscode.json',
                            width: 150.0,
                            height: 130.0,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'njvka6ho' /* VS code */,
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
                            'assets/lottie_animations/google.json',
                            width: 150.0,
                            height: 130.0,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'z6z5z10q' /* Google services */,
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
    );
  }
}
