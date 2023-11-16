import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'skills_model.dart';
export 'skills_model.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key});

  @override
  _SkillsWidgetState createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget>
    with TickerProviderStateMixin {
  late SkillsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'headerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(0.0, -56.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(-52.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(52.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(52.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(52.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkillsModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => setState(() {}),
                  child: const HeaderWidget(),
                ).animateOnPageLoad(
                    animationsMap['headerOnPageLoadAnimation']!),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.35,
                          height: MediaQuery.sizeOf(context).height * 0.35,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'hedst07e' /* My Story */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '1diupjcb' /* 영어에서 번역됨-채우기 텍스트는 실제 작성된 텍스트의 ... */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'on99v923' /* My Skills */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Noto Serif',
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.14,
                                      decoration: const BoxDecoration(),
                                      child: CircularPercentIndicator(
                                        percent: 0.7,
                                        radius:
                                            MediaQuery.sizeOf(context).width *
                                                0.035,
                                        lineWidth: 20.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: const Color(0xFF3176AB),
                                        backgroundColor: const Color(0xFFA0A0A1),
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            '97q9wgxp' /* 70% */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Lottie.asset(
                                          'assets/lottie_animations/Animation_-_1700016202144.json',
                                          width: 50.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '8si3mps1' /* Flutter */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.14,
                                      decoration: const BoxDecoration(),
                                      child: CircularPercentIndicator(
                                        percent: 0.6,
                                        radius:
                                            MediaQuery.sizeOf(context).width *
                                                0.035,
                                        lineWidth: 20.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: const Color(0xFF3176AB),
                                        backgroundColor: const Color(0xFFA0A0A1),
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            'a8a5xwbf' /* 60% */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Lottie.asset(
                                          'assets/lottie_animations/flutterflow.json',
                                          width: 50.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '3zs1wkn9' /* Flutterflow */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.14,
                                      decoration: const BoxDecoration(),
                                      child: CircularPercentIndicator(
                                        percent: 0.7,
                                        radius:
                                            MediaQuery.sizeOf(context).width *
                                                0.035,
                                        lineWidth: 20.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: const Color(0xFF3176AB),
                                        backgroundColor: const Color(0xFFA0A0A1),
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            'xo0b3y2p' /* 70% */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Lottie.asset(
                                          'assets/lottie_animations/firebase.json',
                                          width: 50.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'wkwmvqb4' /* Firebase */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.14,
                                      decoration: const BoxDecoration(),
                                      child: CircularPercentIndicator(
                                        percent: 0.7,
                                        radius:
                                            MediaQuery.sizeOf(context).width *
                                                0.035,
                                        lineWidth: 20.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: const Color(0xFF3176AB),
                                        backgroundColor: const Color(0xFFA0A0A1),
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            'ct83dan4' /* 70% */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Lottie.asset(
                                          'assets/lottie_animations/github.json',
                                          width: 50.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'enjyc087' /* Github */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation1']!),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.14,
                                decoration: const BoxDecoration(),
                                child: CircularPercentIndicator(
                                  percent: 0.8,
                                  radius:
                                      MediaQuery.sizeOf(context).width * 0.035,
                                  lineWidth: 20.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor: const Color(0xFF3176AB),
                                  backgroundColor: const Color(0xFFA0A0A1),
                                  center: Text(
                                    FFLocalizations.of(context).getText(
                                      '5b9lm59k' /* 80% */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Lottie.asset(
                                    'assets/lottie_animations/language.json',
                                    width: 50.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '7pvsyyy7' /* English */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.14,
                                decoration: const BoxDecoration(),
                                child: CircularPercentIndicator(
                                  percent: 0.5,
                                  radius:
                                      MediaQuery.sizeOf(context).width * 0.035,
                                  lineWidth: 20.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor: const Color(0xFF3176AB),
                                  backgroundColor: const Color(0xFFA0A0A1),
                                  center: Text(
                                    FFLocalizations.of(context).getText(
                                      'k437ir3u' /* 50% */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Lottie.asset(
                                    'assets/lottie_animations/language.json',
                                    width: 50.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'u0gg7wca' /* Korean */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.14,
                                decoration: const BoxDecoration(),
                                child: CircularPercentIndicator(
                                  percent: 1.0,
                                  radius:
                                      MediaQuery.sizeOf(context).width * 0.035,
                                  lineWidth: 20.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor: const Color(0xFF3176AB),
                                  backgroundColor: const Color(0xFFA0A0A1),
                                  center: Text(
                                    FFLocalizations.of(context).getText(
                                      'c8pudp7s' /* 100% */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Lottie.asset(
                                    'assets/lottie_animations/language.json',
                                    width: 50.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '4y71aa5z' /* Uzbek */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation2']!),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.footerModel,
                    updateCallback: () => setState(() {}),
                    child: const FooterWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
