import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/mobile_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: const Offset(0.0, -50.0),
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
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, -60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
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
    'rowOnPageLoadAnimation4': AnimationInfo(
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
    'rowOnPageLoadAnimation5': AnimationInfo(
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

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerModel,
            updateCallback: () => setState(() {}),
            child: const DrawerWidget(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primaryText,
                  const Color(0xD9000000)
                ],
                stops: const [0.0, 1.0],
                begin: const AlignmentDirectional(0.0, -1.0),
                end: const AlignmentDirectional(0, 1.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (MediaQuery.sizeOf(context).width > 600.0)
                    wrapWithModel(
                      model: _model.headerModel,
                      updateCallback: () => setState(() {}),
                      child: const HeaderWidget(),
                    ).animateOnPageLoad(
                        animationsMap['headerOnPageLoadAnimation']!),
                  if (MediaQuery.sizeOf(context).width < 500.0)
                    wrapWithModel(
                      model: _model.mobileMenuModel,
                      updateCallback: () => setState(() {}),
                      child: const MobileMenuWidget(),
                    ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.85,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.25,
                            decoration: const BoxDecoration(),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 15.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'hedst07e' /* My Story */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Noto Serif',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                  ),
                                ),
                                AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    '1diupjcb' /* 영어에서 번역됨-채우기 텍스트는 실제 작성된 텍스트의 ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation1']!),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 30.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'on99v923' /* My Skills */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ),
                        if (MediaQuery.sizeOf(context).width > 500.0)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 25.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 20.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 15.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 10.0;
                                            } else {
                                              return 20.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 24.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 19.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 14.0;
                                            } else {
                                              return 24.0;
                                            }
                                          }(),
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.7,
                                            radius: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.035,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '97q9wgxp' /* 70% */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    fontSize:
                                                        valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 12.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 24.0;
                                                        } else {
                                                          return 12.0;
                                                        }
                                                      }(),
                                                      12.0,
                                                    ),
                                                  ),
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8si3mps1' /* Flutter */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.14,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.6,
                                            radius: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.035,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'a8a5xwbf' /* 60% */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3zs1wkn9' /* Flutterflow */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.14,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.7,
                                            radius: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.035,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xo0b3y2p' /* 70% */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wkwmvqb4' /* Firebase */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.14,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.7,
                                            radius: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.035,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ct83dan4' /* 70% */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'enjyc087' /* Github */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                        if (MediaQuery.sizeOf(context).width > 500.0)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.1,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: const BoxDecoration(),
                                    child: CircularPercentIndicator(
                                      percent: 0.8,
                                      radius: MediaQuery.sizeOf(context).width *
                                          0.035,
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
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
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
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.1,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: const BoxDecoration(),
                                    child: CircularPercentIndicator(
                                      percent: 0.5,
                                      radius: MediaQuery.sizeOf(context).width *
                                          0.035,
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
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
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
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.1,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.14,
                                    decoration: const BoxDecoration(),
                                    child: CircularPercentIndicator(
                                      percent: 1.0,
                                      radius: MediaQuery.sizeOf(context).width *
                                          0.035,
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
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation2']!),
                        if (MediaQuery.sizeOf(context).width < 500.0)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 25.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80.0,
                                          height: 80.0,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.7,
                                            radius: 40.0,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8dvt80cz' /* 70% */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize:
                                                        valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 12.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 24.0;
                                                        } else {
                                                          return 12.0;
                                                        }
                                                      }(),
                                                      12.0,
                                                    ),
                                                  ),
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
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'iqqk7tco' /* Flutter */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 120.0,
                                          height: 120.0,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.6,
                                            radius: 40.0,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'pycwhfyw' /* 60% */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize:
                                                        valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 12.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 24.0;
                                                        } else {
                                                          return 12.0;
                                                        }
                                                      }(),
                                                      12.0,
                                                    ),
                                                  ),
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
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '914ca91w' /* Flutterflow */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80.0,
                                          height: 80.0,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.7,
                                            radius: 40.0,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dg7xrpb4' /* 70% */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize:
                                                        valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 12.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 24.0;
                                                        } else {
                                                          return 12.0;
                                                        }
                                                      }(),
                                                      12.0,
                                                    ),
                                                  ),
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
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4v5zk06y' /* Firebase */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation3']!),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 25.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80.0,
                                          height: 80.0,
                                          decoration: const BoxDecoration(),
                                          child: CircularPercentIndicator(
                                            percent: 0.7,
                                            radius: 40.0,
                                            lineWidth: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF3176AB),
                                            backgroundColor: const Color(0xFFA0A0A1),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ovdpr11u' /* 70% */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
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
                                              width: 25.0,
                                              height: 25.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ltb7o2c4' /* Github */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation4']!),
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation2']!),
                        if (MediaQuery.sizeOf(context).width < 500.0)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: const BoxDecoration(),
                                    child: CircularPercentIndicator(
                                      percent: 0.8,
                                      radius: 40.0,
                                      lineWidth: 20.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: const Color(0xFF3176AB),
                                      backgroundColor: const Color(0xFFA0A0A1),
                                      center: Text(
                                        FFLocalizations.of(context).getText(
                                          '65eukodj' /* 80% */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                            ),
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
                                        width: 25.0,
                                        height: 25.0,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'p9b3fsg1' /* English */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                            ),
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
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: const BoxDecoration(),
                                    child: CircularPercentIndicator(
                                      percent: 0.5,
                                      radius: 40.0,
                                      lineWidth: 20.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: const Color(0xFF3176AB),
                                      backgroundColor: const Color(0xFFA0A0A1),
                                      center: Text(
                                        FFLocalizations.of(context).getText(
                                          'n1g4c701' /* 50% */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                            ),
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
                                        width: 25.0,
                                        height: 25.0,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '3kz3ut9q' /* Korean */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                            ),
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
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: const BoxDecoration(),
                                    child: CircularPercentIndicator(
                                      percent: 1.0,
                                      radius: 40.0,
                                      lineWidth: 20.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: const Color(0xFF3176AB),
                                      backgroundColor: const Color(0xFFA0A0A1),
                                      center: Text(
                                        FFLocalizations.of(context).getText(
                                          'vhhsk12o' /* 100% */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                            ),
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
                                        width: 25.0,
                                        height: 25.0,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'aiye2l4y' /* Uzbek */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation5']!),
                      ],
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width > 500.0)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.footerModel,
                        updateCallback: () => setState(() {}),
                        child: const FooterWidget(),
                      ),
                    ),
                  if (MediaQuery.sizeOf(context).width < 500.0)
                    wrapWithModel(
                      model: _model.mobileFooterModel,
                      updateCallback: () => setState(() {}),
                      child: const MobileFooterWidget(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
