import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_p_button/cp_o_p_button_widget.dart';
import '/pages/orders_parents/cp_o_priority/cp_o_priority_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import 'cp_o_card_show_widget.dart' show CpOCardShowWidget;
import 'package:flutter/material.dart';

class CpOCardShowModel extends FlutterFlowModel<CpOCardShowWidget> {
  ///  Local state fields for this component.

  bool lcsvDetailsRequest = false;

  ///  State fields for stateful widgets in this component.

  // Model for cpOPButton component.
  late CpOPButtonModel cpOPButtonModel;
  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOStatus component.
  late CpOStatusModel cpOStatusModel;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowed;

  @override
  void initState(BuildContext context) {
    cpOPButtonModel = createModel(context, () => CpOPButtonModel());
    cpOPriorityModel = createModel(context, () => CpOPriorityModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
  }

  @override
  void dispose() {
    cpOPButtonModel.dispose();
    cpOPriorityModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOStatusModel.dispose();
  }
}
