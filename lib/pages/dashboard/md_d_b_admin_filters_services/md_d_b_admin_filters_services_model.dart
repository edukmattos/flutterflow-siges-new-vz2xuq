import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags/cp_dropdown_filters_assets_tags_widget.dart';
import '/pages/dashboard/cp_dd_o_types_multi_all/cp_dd_o_types_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_multi_all/cp_dd_o_types_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_parent_multi_all/cp_dd_systems_parent_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_subs_multi_all/cp_dd_systems_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_contracts_department/cp_dropdown_filters_contracts_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_contracts_department_providers/cp_dropdown_filters_contracts_department_providers_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_o_objects/cp_dropdown_filters_o_objects_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_o_plans_department/cp_dropdown_filters_o_plans_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_teams_department/cp_dropdown_filters_teams_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import 'md_d_b_admin_filters_services_widget.dart'
    show MdDBAdminFiltersServicesWidget;
import 'package:flutter/material.dart';

class MdDBAdminFiltersServicesModel
    extends FlutterFlowModel<MdDBAdminFiltersServicesWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDdSystemsParentMultiAll component.
  late CpDdSystemsParentMultiAllModel cpDdSystemsParentMultiAllModel;
  // Model for cpDdSystemsSubsMultiAll component.
  late CpDdSystemsSubsMultiAllModel cpDdSystemsSubsMultiAllModel;
  // Model for cpDropdownFiltersUnitsTypesParent component.
  late CpDropdownFiltersUnitsTypesParentModel
      cpDropdownFiltersUnitsTypesParentModel;
  // Model for cpDropdownFiltersUnits component.
  late CpDropdownFiltersUnitsModel cpDropdownFiltersUnitsModel;
  // Model for cpDropdownFiltersAssetsTags component.
  late CpDropdownFiltersAssetsTagsModel cpDropdownFiltersAssetsTagsModel;
  // Model for cpDropdownFiltersOObjects component.
  late CpDropdownFiltersOObjectsModel cpDropdownFiltersOObjectsModel;
  // Model for cpDdOTypesMultiAll component.
  late CpDdOTypesMultiAllModel cpDdOTypesMultiAllModel;
  // Model for cpDdOTypesSubsMultiAll component.
  late CpDdOTypesSubsMultiAllModel cpDdOTypesSubsMultiAllModel;
  // Model for cpDropdownFiltersContractsDepartment component.
  late CpDropdownFiltersContractsDepartmentModel
      cpDropdownFiltersContractsDepartmentModel;
  // Model for cpDropdownFiltersContractsDepartmentProviders component.
  late CpDropdownFiltersContractsDepartmentProvidersModel
      cpDropdownFiltersContractsDepartmentProvidersModel;
  // Model for cpDropdownFiltersOPlansDepartment component.
  late CpDropdownFiltersOPlansDepartmentModel
      cpDropdownFiltersOPlansDepartmentModel;
  // Model for cpDropdownFiltersTeamsDepartment component.
  late CpDropdownFiltersTeamsDepartmentModel
      cpDropdownFiltersTeamsDepartmentModel;

  @override
  void initState(BuildContext context) {
    cpDdSystemsParentMultiAllModel =
        createModel(context, () => CpDdSystemsParentMultiAllModel());
    cpDdSystemsSubsMultiAllModel =
        createModel(context, () => CpDdSystemsSubsMultiAllModel());
    cpDropdownFiltersUnitsTypesParentModel =
        createModel(context, () => CpDropdownFiltersUnitsTypesParentModel());
    cpDropdownFiltersUnitsModel =
        createModel(context, () => CpDropdownFiltersUnitsModel());
    cpDropdownFiltersAssetsTagsModel =
        createModel(context, () => CpDropdownFiltersAssetsTagsModel());
    cpDropdownFiltersOObjectsModel =
        createModel(context, () => CpDropdownFiltersOObjectsModel());
    cpDdOTypesMultiAllModel =
        createModel(context, () => CpDdOTypesMultiAllModel());
    cpDdOTypesSubsMultiAllModel =
        createModel(context, () => CpDdOTypesSubsMultiAllModel());
    cpDropdownFiltersContractsDepartmentModel =
        createModel(context, () => CpDropdownFiltersContractsDepartmentModel());
    cpDropdownFiltersContractsDepartmentProvidersModel = createModel(
        context, () => CpDropdownFiltersContractsDepartmentProvidersModel());
    cpDropdownFiltersOPlansDepartmentModel =
        createModel(context, () => CpDropdownFiltersOPlansDepartmentModel());
    cpDropdownFiltersTeamsDepartmentModel =
        createModel(context, () => CpDropdownFiltersTeamsDepartmentModel());
  }

  @override
  void dispose() {
    cpDdSystemsParentMultiAllModel.dispose();
    cpDdSystemsSubsMultiAllModel.dispose();
    cpDropdownFiltersUnitsTypesParentModel.dispose();
    cpDropdownFiltersUnitsModel.dispose();
    cpDropdownFiltersAssetsTagsModel.dispose();
    cpDropdownFiltersOObjectsModel.dispose();
    cpDdOTypesMultiAllModel.dispose();
    cpDdOTypesSubsMultiAllModel.dispose();
    cpDropdownFiltersContractsDepartmentModel.dispose();
    cpDropdownFiltersContractsDepartmentProvidersModel.dispose();
    cpDropdownFiltersOPlansDepartmentModel.dispose();
    cpDropdownFiltersTeamsDepartmentModel.dispose();
  }
}
