import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_o_v_e_list_item_widget.dart' show CpOVEListItemWidget;
import 'package:flutter/material.dart';

class CpOVEListItemModel extends FlutterFlowModel<CpOVEListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOButtonDisabled component.
  late CpOButtonDisabledModel cpOButtonDisabledModel;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<UsersRow>? resUserTeam;
  // Model for cpDropdownUsersDepartment component.
  late CpDropdownUsersDepartmentModel cpDropdownUsersDepartmentModel;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowedClose;
  // Stores action output result for [Action Block - abOVSelectedVehiclesCheck] action in Button widget.
  bool? resOVVehiclesCheckClose;

  @override
  void initState(BuildContext context) {
    cpOButtonDisabledModel =
        createModel(context, () => CpOButtonDisabledModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
    cpDropdownUsersDepartmentModel =
        createModel(context, () => CpDropdownUsersDepartmentModel());
  }

  @override
  void dispose() {
    cpOButtonDisabledModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOVProcessingModel.dispose();
    cpDropdownUsersDepartmentModel.dispose();
  }
}
