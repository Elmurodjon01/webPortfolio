import '/components/social_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobile_social_widget.dart' show MobileSocialWidget;
import 'package:flutter/material.dart';

class MobileSocialModel extends FlutterFlowModel<MobileSocialWidget> {
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
