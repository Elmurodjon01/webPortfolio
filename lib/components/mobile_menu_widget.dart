import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mobile_menu_model.dart';
export 'mobile_menu_model.dart';

class MobileMenuWidget extends StatefulWidget {
  const MobileMenuWidget({super.key});

  @override
  _MobileMenuWidgetState createState() => _MobileMenuWidgetState();
}

class _MobileMenuWidgetState extends State<MobileMenuWidget> {
  late MobileMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileMenuModel());

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
      visible: MediaQuery.sizeOf(context).width < 500.0,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 65.0,
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(
                  Icons.menu_outlined,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 30.0,
                ),
              ),
              FlutterFlowLanguageSelector(
                width: 130.0,
                borderColor: Colors.transparent,
                dropdownIconColor: Colors.white,
                borderRadius: 8.0,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                ),
                hideFlags: true,
                flagSize: 24.0,
                flagTextGap: 8.0,
                currentLanguage: FFLocalizations.of(context).languageCode,
                languages: FFLocalizations.languages(),
                onChanged: (lang) => setAppLanguage(context, lang),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
