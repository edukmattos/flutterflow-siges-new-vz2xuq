import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_button1/cp_o_v_e_button1_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_processing/cp_o_v_e_processing_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_extras/cp_ove_menu_extras_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_options/cp_ove_menu_options_widget.dart';
import 'x_xmd_o_v_e_show_widget.dart' show XXmdOVEShowWidget;
import 'package:flutter/material.dart';

class XXmdOVEShowModel extends FlutterFlowModel<XXmdOVEShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOVEButton.
  late CpOVEButton1Model cpOVEButtonModel;
  // Model for cpOveMenuExtras component.
  late CpOveMenuExtrasModel cpOveMenuExtrasModel;
  // Model for cpOVEProcessing component.
  late CpOVEProcessingModel cpOVEProcessingModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VUsersRow>? resTeamLeader;
  // Stores action output result for [Backend Call - API (apiTeamUsersByOVEId)] action in Button widget.
  ApiCallResponse? apiResulthyl;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpDropdownUsersDepartment component.
  late CpDropdownUsersDepartmentModel cpDropdownUsersDepartmentModel;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  OrdersVisitsExtrasTeamsRow? resTeamUserAdded;
  // Model for cpOveMenuOptions component.
  late CpOveMenuOptionsModel cpOveMenuOptionsModel;

  @override
  void initState(BuildContext context) {
    cpOVEButtonModel = createModel(context, () => CpOVEButton1Model());
    cpOveMenuExtrasModel = createModel(context, () => CpOveMenuExtrasModel());
    cpOVEProcessingModel = createModel(context, () => CpOVEProcessingModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpDropdownUsersDepartmentModel =
        createModel(context, () => CpDropdownUsersDepartmentModel());
    cpOveMenuOptionsModel = createModel(context, () => CpOveMenuOptionsModel());
  }

  @override
  void dispose() {
    cpOVEButtonModel.dispose();
    cpOveMenuExtrasModel.dispose();
    cpOVEProcessingModel.dispose();
    cpCompanyLogoModel.dispose();
    cpDropdownUsersDepartmentModel.dispose();
    cpOveMenuOptionsModel.dispose();
  }
}
