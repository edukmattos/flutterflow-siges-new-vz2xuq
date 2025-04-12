import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_dropdown_orders_cancel_reasons/cp_dropdown_orders_cancel_reasons_widget.dart';
import 'md_o_to_cancel_widget.dart' show MdOToCancelWidget;
import 'package:flutter/material.dart';

class MdOToCancelModel extends FlutterFlowModel<MdOToCancelWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownOrdersCancelReasons component.
  late CpDropdownOrdersCancelReasonsModel cpDropdownOrdersCancelReasonsModel;

  @override
  void initState(BuildContext context) {
    cpDropdownOrdersCancelReasonsModel =
        createModel(context, () => CpDropdownOrdersCancelReasonsModel());
  }

  @override
  void dispose() {
    cpDropdownOrdersCancelReasonsModel.dispose();
  }
}
