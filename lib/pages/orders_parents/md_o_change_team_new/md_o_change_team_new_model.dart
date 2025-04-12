import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import '/pages/components/cp_dropdown_users_teams/cp_dropdown_users_teams_widget.dart';
import 'md_o_change_team_new_widget.dart' show MdOChangeTeamNewWidget;
import 'package:flutter/material.dart';

class MdOChangeTeamNewModel extends FlutterFlowModel<MdOChangeTeamNewWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownTeamsDepartment component.
  late CpDropdownTeamsDepartmentModel cpDropdownTeamsDepartmentModel;
  // Model for cpDropdownUsersTeams component.
  late CpDropdownUsersTeamsModel cpDropdownUsersTeamsModel;
  // Stores action output result for [Backend Call - API (apiUsersByTeamId)] action in cpDropdownUsersTeams widget.
  ApiCallResponse? apiResult1vlCopy;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? resValidForm;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersRow>? resOrderAuthorized1;

  @override
  void initState(BuildContext context) {
    cpDropdownTeamsDepartmentModel =
        createModel(context, () => CpDropdownTeamsDepartmentModel());
    cpDropdownUsersTeamsModel =
        createModel(context, () => CpDropdownUsersTeamsModel());
  }

  @override
  void dispose() {
    cpDropdownTeamsDepartmentModel.dispose();
    cpDropdownUsersTeamsModel.dispose();
  }
}
