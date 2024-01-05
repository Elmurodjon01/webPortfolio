import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/social_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/tools/tools_widget.dart';
import '/pages/tools_copy/tools_copy_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for tools component.
  late ToolsModel toolsModel;
  // Model for toolsCopy component.
  late ToolsCopyModel toolsCopyModel;
  // Model for footer component.
  late FooterModel footerModel;
  // Model for social component.
  late SocialModel socialModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    toolsModel = createModel(context, () => ToolsModel());
    toolsCopyModel = createModel(context, () => ToolsCopyModel());
    footerModel = createModel(context, () => FooterModel());
    socialModel = createModel(context, () => SocialModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    toolsModel.dispose();
    toolsCopyModel.dispose();
    footerModel.dispose();
    socialModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
