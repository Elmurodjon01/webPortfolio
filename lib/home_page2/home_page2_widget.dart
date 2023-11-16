import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'home_page2_model.dart';
export 'home_page2_model.dart';

class HomePage2Widget extends StatefulWidget {
  const HomePage2Widget({super.key});

  @override
  _HomePage2WidgetState createState() => _HomePage2WidgetState();
}

class _HomePage2WidgetState extends State<HomePage2Widget>
    with TickerProviderStateMixin {
  late HomePage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-56.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'mouseRegionOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.02, 1.0),
        ),
      ],
    ),
    'mouseRegionOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 0.1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(19.0, 27.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(3.5, 3.5),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 0.7,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 500.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(0.98, 1.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 0.4,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(12.999999999999986, 19.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(2.0, 2.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.6,
          end: 1.0,
        ),
      ],
    ),
    'imageOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.1, 1.1),
        ),
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: -0.06,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(57.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePage2Model());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF010110),
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/logo_shape_light.png',
                              width: 44.0,
                              height: 44.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'v5pke990' /* builderking.io */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'cf1kloau' /* BUILD LIKE A KING! */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFAEAEAE),
                                      fontSize: 11.0,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation1']!),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MouseRegion(
                          opaque: false,
                          cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.componentHovered = true);
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation3'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation3']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation1'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation1']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation1'] !=
                                null) {
                              animationsMap[
                                      'containerOnActionTriggerAnimation1']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation2'] !=
                                null) {
                              animationsMap[
                                      'containerOnActionTriggerAnimation2']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation2'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation2']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation2'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation2']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation3'] !=
                                null) {
                              animationsMap[
                                      'containerOnActionTriggerAnimation3']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                          }),
                          onExit: ((event) async {
                            setState(() => _model.componentHovered = false);
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation3'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation3']!
                                  .controller
                                  .reverse();
                            }
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation1'] !=
                                null) {
                              animationsMap[
                                      'containerOnActionTriggerAnimation1']!
                                  .controller
                                  .reverse();
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation1'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation1']!
                                  .controller
                                  .reverse();
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation2'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation2']!
                                  .controller
                                  .reverse();
                            }
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation3'] !=
                                null) {
                              animationsMap[
                                      'containerOnActionTriggerAnimation3']!
                                  .controller
                                  .reverse();
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation3'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation3']!
                                  .controller
                                  .reverse();
                            }
                            if (animationsMap[
                                    'imageOnActionTriggerAnimation2'] !=
                                null) {
                              animationsMap['imageOnActionTriggerAnimation2']!
                                  .controller
                                  .reverse();
                            }
                          }),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              }
                              context.pushNamed(
                                'HomePage2',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );
                            },
                            child: SizedBox(
                              width: 250.0,
                              height: 250.0,
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/blugggg.png',
                                        height: 317.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'imageOnActionTriggerAnimation1']!,
                                    ),
                                  ),
                                  Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 64.0,
                                          color: Color(0x26A474E9),
                                          offset: Offset(0.0, 12.0),
                                        )
                                      ],
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF150031),
                                          Color(0xFF320A6F)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(0.0, -1.0),
                                        end: AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: const Color(0xFF2D0C61),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 125.0,
                                          color: Color(0x26BC8DFF),
                                          offset: Offset(0.0, 12.0),
                                        )
                                      ],
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF150031),
                                          Color(0xFF320A6F)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(0.0, -1.0),
                                        end: AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: const Color(0xFF2D0C61),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation1']!,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      width: 250.0,
                                      height: 250.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                4.00, 4.00),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/blugggg.png',
                                                height: 576.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'imageOnActionTriggerAnimation2']!,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uayue4xg' /* EFFECTS */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: const Color(
                                                                0xFFA678F3),
                                                            fontSize: 11.0,
                                                            fontWeight:
                                                                FontWeight.w200,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xr74tgre' /* Interactive
Components */
                                                            ,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  2.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'atx9mt81' /* Create interactive components ... */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: const Color(
                                                                          0x81FFFFFF),
                                                                      fontSize:
                                                                          9.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w200,
                                                                      lineHeight:
                                                                          1.6,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 38.0,
                                                            height: 38.0,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: Color(
                                                                  0x3BFFFFFF),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.00, 0.00),
                                                            child: Container(
                                                              width: 32.0,
                                                              height: 32.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_right_alt,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'containerOnActionTriggerAnimation3']!,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                4.50, -3.80),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/ggg-gggggg.png',
                                                height: 220.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'imageOnActionTriggerAnimation3']!,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation2']!,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                            .animateOnPageLoad(animationsMap[
                                'mouseRegionOnPageLoadAnimation']!)
                            .animateOnActionTrigger(
                              animationsMap[
                                  'mouseRegionOnActionTriggerAnimation']!,
                            ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 44.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/flutter-flow-leb9ou/assets/gnxx63uv2siz/@3xlogo_primary_color_white.png',
                              width: 120.0,
                              height: 44.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation2']!),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
