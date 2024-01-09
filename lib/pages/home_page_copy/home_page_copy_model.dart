import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/mobile_menu_widget.dart';
import '/components/mobile_social_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/tools/tools_widget.dart';
import '/pages/tools_copy/tools_copy_widget.dart';
import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:flutter/material.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for mobileMenu component.
  late MobileMenuModel mobileMenuModel;
  // Model for tools component.
  late ToolsModel toolsModel;
  // Model for toolsCopy component.
  late ToolsCopyModel toolsCopyModel;
  // Model for footer component.
  late FooterModel footerModel;
  // Model for mobileSocial component.
  late MobileSocialModel mobileSocialModel;
  // Model for mobileFooter component.
  late MobileFooterModel mobileFooterModel;
  // Model for drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    mobileMenuModel = createModel(context, () => MobileMenuModel());
    toolsModel = createModel(context, () => ToolsModel());
    toolsCopyModel = createModel(context, () => ToolsCopyModel());
    footerModel = createModel(context, () => FooterModel());
    mobileSocialModel = createModel(context, () => MobileSocialModel());
    mobileFooterModel = createModel(context, () => MobileFooterModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    mobileMenuModel.dispose();
    toolsModel.dispose();
    toolsCopyModel.dispose();
    footerModel.dispose();
    mobileSocialModel.dispose();
    mobileFooterModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
