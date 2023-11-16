import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());
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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 60.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'v067qzyq' /* John */,
              ),
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Outfit',
                    fontSize: 25.0,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.updatePage(() {
                            FFAppState().pageState = 1;
                          });

                          context.pushNamed(
                            'HomePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered1 = true);
                                setState(() {
                                  FFAppState().changeColor = true;
                                });
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered1 = false);
                                setState(() {
                                  FFAppState().changeColor = false;
                                });
                              }),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'wb2qlsu6' /* Home */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: _model.mouseRegionHovered1 == true
                                          ? const Color(0xFF068DE2)
                                          : Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            if (FFAppState().pageState == 1)
                              const SizedBox(
                                width: 35.0,
                                child: Divider(
                                  thickness: 3.0,
                                  color: Color(0xFF068DE2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.updatePage(() {
                            FFAppState().pageState = 2;
                          });

                          context.pushNamed(
                            'resumePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered2 = true);
                                setState(() {
                                  FFAppState().aboutColor = true;
                                });
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered2 = false);
                                setState(() {
                                  FFAppState().aboutColor = false;
                                });
                              }),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '7owa06lk' /* Resume */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FFAppState().aboutColor
                                          ? const Color(0xFF068DE2)
                                          : Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            if (FFAppState().pageState == 2)
                              const SizedBox(
                                width: 35.0,
                                child: Divider(
                                  thickness: 3.0,
                                  color: Color(0xFF068DE2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.updatePage(() {
                            FFAppState().pageState = 3;
                          });

                          context.pushNamed(
                            'skills',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered3 = true);
                                setState(() {
                                  FFAppState().skillsColor = true;
                                });
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered3 = false);
                                setState(() {
                                  FFAppState().skillsColor = false;
                                });
                              }),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'wez49gqg' /* Skills */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FFAppState().skillsColor
                                          ? const Color(0xFF068DE2)
                                          : Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            if (FFAppState().pageState == 3)
                              const SizedBox(
                                width: 35.0,
                                child: Divider(
                                  thickness: 3.0,
                                  color: Color(0xFF068DE2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.updatePage(() {
                            FFAppState().pageState = 4;
                          });

                          context.pushNamed(
                            'Projects',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered4 = true);
                                setState(() {
                                  FFAppState().projectsColor = true;
                                });
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered4 = false);
                                setState(() {
                                  FFAppState().projectsColor = false;
                                });
                              }),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'lwf65uwl' /* Works */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FFAppState().projectsColor
                                          ? const Color(0xFF068DE2)
                                          : Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            if (FFAppState().pageState == 4)
                              const SizedBox(
                                width: 35.0,
                                child: Divider(
                                  thickness: 3.0,
                                  color: Color(0xFF068DE2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.updatePage(() {
                            FFAppState().pageState = 5;
                          });

                          context.pushNamed(
                            'Contact',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered5 = true);
                                setState(() {
                                  FFAppState().contactColor = true;
                                });
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered5 = false);
                                setState(() {
                                  FFAppState().contactColor = false;
                                });
                              }),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'njqdhmm1' /* Contact */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FFAppState().contactColor
                                          ? const Color(0xFF068DE2)
                                          : Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            if (FFAppState().pageState == 5)
                              const SizedBox(
                                width: 45.0,
                                child: Divider(
                                  thickness: 3.0,
                                  color: Color(0xFF068DE2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
