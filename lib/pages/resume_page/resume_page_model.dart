import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resume_page_widget.dart' show ResumePageWidget;
import 'package:flutter/material.dart';

class ResumePageModel extends FlutterFlowModel<ResumePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for footer component.
  late FooterModel footerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    footerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
