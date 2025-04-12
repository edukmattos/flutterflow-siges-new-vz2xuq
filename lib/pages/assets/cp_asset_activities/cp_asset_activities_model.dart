import '/flutter_flow/flutter_flow_util.dart';
import 'cp_asset_activities_widget.dart' show CpAssetActivitiesWidget;
import 'package:flutter/material.dart';

class CpAssetActivitiesModel extends FlutterFlowModel<CpAssetActivitiesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
