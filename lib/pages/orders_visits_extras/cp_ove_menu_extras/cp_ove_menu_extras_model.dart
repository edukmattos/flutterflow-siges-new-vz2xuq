import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_ove_follow/cp_ove_follow_widget.dart';
import 'cp_ove_menu_extras_widget.dart' show CpOveMenuExtrasWidget;
import 'package:flutter/material.dart';

class CpOveMenuExtrasModel extends FlutterFlowModel<CpOveMenuExtrasWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOveFollow component.
  late CpOveFollowModel cpOveFollowModel;

  @override
  void initState(BuildContext context) {
    cpOveFollowModel = createModel(context, () => CpOveFollowModel());
  }

  @override
  void dispose() {
    cpOveFollowModel.dispose();
  }
}
