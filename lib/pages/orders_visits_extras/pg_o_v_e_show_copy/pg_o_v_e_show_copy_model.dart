import '/backend/schema/structs/index.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_o_v_e_show_copy_widget.dart' show PgOVEShowCopyWidget;
import 'package:flutter/material.dart';

class PgOVEShowCopyModel extends FlutterFlowModel<PgOVEShowCopyWidget> {
  ///  Local state fields for this page.

  int? lpsvOStatusId = 5;

  List<DtUserStruct> lpsvTeamUsersToAdd = [];
  void addToLpsvTeamUsersToAdd(DtUserStruct item) =>
      lpsvTeamUsersToAdd.add(item);
  void removeFromLpsvTeamUsersToAdd(DtUserStruct item) =>
      lpsvTeamUsersToAdd.remove(item);
  void removeAtIndexFromLpsvTeamUsersToAdd(int index) =>
      lpsvTeamUsersToAdd.removeAt(index);
  void insertAtIndexInLpsvTeamUsersToAdd(int index, DtUserStruct item) =>
      lpsvTeamUsersToAdd.insert(index, item);
  void updateLpsvTeamUsersToAddAtIndex(
          int index, Function(DtUserStruct) updateFn) =>
      lpsvTeamUsersToAdd[index] = updateFn(lpsvTeamUsersToAdd[index]);

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOButtonDisabled component.
  late CpOButtonDisabledModel cpOButtonDisabledModel;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Model for cpDropdownUsersDepartment component.
  late CpDropdownUsersDepartmentModel cpDropdownUsersDepartmentModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOButtonDisabledModel =
        createModel(context, () => CpOButtonDisabledModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
    cpDropdownUsersDepartmentModel =
        createModel(context, () => CpDropdownUsersDepartmentModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOButtonDisabledModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOVProcessingModel.dispose();
    cpDropdownUsersDepartmentModel.dispose();
  }
}
