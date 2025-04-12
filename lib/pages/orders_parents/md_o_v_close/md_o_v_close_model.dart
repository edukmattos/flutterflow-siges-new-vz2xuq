import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_dropdown_o_close_statuses/cp_dropdown_o_close_statuses_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_suspended_reasons/cp_dropdown_orders_suspended_reasons_widget.dart';
import 'md_o_v_close_widget.dart' show MdOVCloseWidget;
import 'package:flutter/material.dart';

class MdOVCloseModel extends FlutterFlowModel<MdOVCloseWidget> {
  ///  Local state fields for this component.

  double lcsvProgress = 0.0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownOCloseStatuses component.
  late CpDropdownOCloseStatusesModel cpDropdownOCloseStatusesModel;
  // Model for cpDropdownOrdersSuspendedReasons component.
  late CpDropdownOrdersSuspendedReasonsModel
      cpDropdownOrdersSuspendedReasonsModel;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? resUserTeam;

  @override
  void initState(BuildContext context) {
    cpDropdownOCloseStatusesModel =
        createModel(context, () => CpDropdownOCloseStatusesModel());
    cpDropdownOrdersSuspendedReasonsModel =
        createModel(context, () => CpDropdownOrdersSuspendedReasonsModel());
  }

  @override
  void dispose() {
    cpDropdownOCloseStatusesModel.dispose();
    cpDropdownOrdersSuspendedReasonsModel.dispose();
  }
}
