import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_follow/cp_o_follow_widget.dart';
import '/pages/orders_parents/cp_o_p_button/cp_o_p_button_widget.dart';
import 'cp_d_b_admin_o_p_show_mini_widget.dart' show CpDBAdminOPShowMiniWidget;
import 'package:flutter/material.dart';

class CpDBAdminOPShowMiniModel
    extends FlutterFlowModel<CpDBAdminOPShowMiniWidget> {
  ///  Local state fields for this component.

  bool lpsvIsFollowing = true;

  ///  State fields for stateful widgets in this component.

  // Model for cpOPButton component.
  late CpOPButtonModel cpOPButtonModel;
  // Model for cpOFollow component.
  late CpOFollowModel cpOFollowModel;

  @override
  void initState(BuildContext context) {
    cpOPButtonModel = createModel(context, () => CpOPButtonModel());
    cpOFollowModel = createModel(context, () => CpOFollowModel());
  }

  @override
  void dispose() {
    cpOPButtonModel.dispose();
    cpOFollowModel.dispose();
  }
}
