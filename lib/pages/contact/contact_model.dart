import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/mobile_footer_widget.dart';
import '/components/mobile_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_widget.dart' show ContactWidget;
import 'package:flutter/material.dart';

class ContactModel extends FlutterFlowModel<ContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for mobileMenu component.
  late MobileMenuModel mobileMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    footerModel.dispose();
    mobileFooterModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
