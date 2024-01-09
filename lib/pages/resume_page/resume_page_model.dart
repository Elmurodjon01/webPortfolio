import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/mobile_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resume_page_widget.dart' show ResumePageWidget;
import 'package:flutter/material.dart';

class ResumePageModel extends FlutterFlowModel<ResumePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for mobileMenu component.
  late MobileMenuModel mobileMenuModel;
  // Model for footer component.
  late FooterModel footerModel;
  // Model for drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    mobileMenuModel = createModel(context, () => MobileMenuModel());
    footerModel = createModel(context, () => FooterModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    mobileMenuModel.dispose();
    footerModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
