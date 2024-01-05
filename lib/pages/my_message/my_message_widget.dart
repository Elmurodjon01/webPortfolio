import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_message_model.dart';
export 'my_message_model.dart';

class MyMessageWidget extends StatefulWidget {
  const MyMessageWidget({super.key});

  @override
  _MyMessageWidgetState createState() => _MyMessageWidgetState();
}

class _MyMessageWidgetState extends State<MyMessageWidget> {
  late MyMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyMessageModel());

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

    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).height * 0.6,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.45,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: const BoxDecoration(),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '83hm3yvq' /* Sender */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF068DE2),
                                            ),
                                      ),
                                      Text(
                                        'example',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const SizedBox(
                                    height: 100.0,
                                    child: VerticalDivider(
                                      thickness: 1.0,
                                      color: Color(0xCC424242),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'ozskf8e0' /* Email address */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF068DE2),
                                            ),
                                      ),
                                      Text(
                                        'examp[le',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const SizedBox(
                                    height: 100.0,
                                    child: VerticalDivider(
                                      thickness: 1.0,
                                      color: Color(0xCC424242),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '816bvqpd' /* Message */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF068DE2),
                                            ),
                                      ),
                                      Text(
                                        'example',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const SizedBox(
                                    height: 100.0,
                                    child: VerticalDivider(
                                      thickness: 1.0,
                                      color: Color(0xCC424242),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '5rnc54w6' /* Date */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF068DE2),
                                            ),
                                      ),
                                      Text(
                                        'example',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.48, -0.56),
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
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}
