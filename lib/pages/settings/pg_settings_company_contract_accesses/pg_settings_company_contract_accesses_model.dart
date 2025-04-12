import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_app_pages/cp_dropdown_app_pages_widget.dart';
import '/pages/components/cp_dropdown_app_pages_providers/cp_dropdown_app_pages_providers_widget.dart';
import '/pages/components/cp_dropdown_departments_company/cp_dropdown_departments_company_widget.dart';
import '/pages/components/cp_dropdown_profiles_department/cp_dropdown_profiles_department_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'dart:async';
import 'pg_settings_company_contract_accesses_widget.dart'
    show PgSettingsCompanyContractAccessesWidget;
import 'package:flutter/material.dart';

class PgSettingsCompanyContractAccessesModel
    extends FlutterFlowModel<PgSettingsCompanyContractAccessesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpSettingsCompanyShowCard component.
  late CpSettingsCompanyShowCardModel cpSettingsCompanyShowCardModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for cpDropdownDepartmentsCompany component.
  late CpDropdownDepartmentsCompanyModel cpDropdownDepartmentsCompanyModel;
  // Model for cpDropdownProfilesDepartment component.
  late CpDropdownProfilesDepartmentModel cpDropdownProfilesDepartmentModel;
  Completer<List<VProfilesPermissionsRow>>? requestCompleter;
  // Model for cpDropdownAppPages component.
  late CpDropdownAppPagesModel cpDropdownAppPagesModel;
  // Model for cpDropdownAppPagesProviders component.
  late CpDropdownAppPagesProvidersModel cpDropdownAppPagesProvidersModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpSettingsCompanyShowCardModel =
        createModel(context, () => CpSettingsCompanyShowCardModel());
    cpDropdownDepartmentsCompanyModel =
        createModel(context, () => CpDropdownDepartmentsCompanyModel());
    cpDropdownProfilesDepartmentModel =
        createModel(context, () => CpDropdownProfilesDepartmentModel());
    cpDropdownAppPagesModel =
        createModel(context, () => CpDropdownAppPagesModel());
    cpDropdownAppPagesProvidersModel =
        createModel(context, () => CpDropdownAppPagesProvidersModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpSettingsCompanyShowCardModel.dispose();
    tabBarController?.dispose();
    cpDropdownDepartmentsCompanyModel.dispose();
    cpDropdownProfilesDepartmentModel.dispose();
    cpDropdownAppPagesModel.dispose();
    cpDropdownAppPagesProvidersModel.dispose();
    cpMenuModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
