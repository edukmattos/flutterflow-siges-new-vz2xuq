import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_leaders_teams/cp_dropdown_leaders_teams_widget.dart';
import '/pages/components/cp_dropdown_o_plans_departments/cp_dropdown_o_plans_departments_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import 'md_o_authorization_widget.dart' show MdOAuthorizationWidget;
import 'package:flutter/material.dart';

class MdOAuthorizationModel extends FlutterFlowModel<MdOAuthorizationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownTeamsDepartment component.
  late CpDropdownTeamsDepartmentModel cpDropdownTeamsDepartmentModel;
  // Model for cpDropdownLeadersTeams component.
  late CpDropdownLeadersTeamsModel cpDropdownLeadersTeamsModel;
  // Model for cpDropdownOPlansDepartments component.
  late CpDropdownOPlansDepartmentsModel cpDropdownOPlansDepartmentsModel;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? resValidForm;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersRow>? resOrderAuthorized1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersRow>? resOrderAuthorized2;

  @override
  void initState(BuildContext context) {
    cpDropdownTeamsDepartmentModel =
        createModel(context, () => CpDropdownTeamsDepartmentModel());
    cpDropdownLeadersTeamsModel =
        createModel(context, () => CpDropdownLeadersTeamsModel());
    cpDropdownOPlansDepartmentsModel =
        createModel(context, () => CpDropdownOPlansDepartmentsModel());
  }

  @override
  void dispose() {
    cpDropdownTeamsDepartmentModel.dispose();
    cpDropdownLeadersTeamsModel.dispose();
    cpDropdownOPlansDepartmentsModel.dispose();
  }
}
