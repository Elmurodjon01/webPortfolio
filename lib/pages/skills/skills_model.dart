import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/mobile_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'skills_widget.dart' show SkillsWidget;
import 'package:flutter/material.dart';

class SkillsModel extends FlutterFlowModel<SkillsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for mobileMenu component.
  late MobileMenuModel mobileMenuModel;
  // Model for footer component.
  late FooterModel footerModel;
  // Model for mobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    mobileMenuModel = createModel(context, () => MobileMenuModel());
    footerModel = createModel(context, () => FooterModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    mobileMenuModel.dispose();
    footerModel.dispose();
    mobileFooterModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
