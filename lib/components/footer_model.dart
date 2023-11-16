import '/components/social_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'footer_widget.dart' show FooterWidget;
import 'package:flutter/material.dart';

class FooterModel extends FlutterFlowModel<FooterWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for social component.
  late SocialModel socialModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    socialModel = createModel(context, () => SocialModel());
  }

  @override
  void dispose() {
    socialModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
