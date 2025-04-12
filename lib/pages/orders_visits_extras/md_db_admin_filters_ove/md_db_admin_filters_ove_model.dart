import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags/cp_dropdown_filters_assets_tags_widget.dart';
import '/pages/dashboard/cp_dd_o_types_multi_all/cp_dd_o_types_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_multi_all/cp_dd_o_types_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_parent_multi_all/cp_dd_systems_parent_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_subs_multi_all/cp_dd_systems_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_teams_department/cp_dropdown_filters_teams_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types/cp_dropdown_filters_units_types_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import '/pages/orders_parents/cp_dd_orders_causes_reasons_multi/cp_dd_orders_causes_reasons_multi_widget.dart';
import 'md_db_admin_filters_ove_widget.dart' show MdDbAdminFiltersOveWidget;
import 'package:flutter/material.dart';

class MdDbAdminFiltersOveModel
    extends FlutterFlowModel<MdDbAdminFiltersOveWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDdSystemsParentMultiAll component.
  late CpDdSystemsParentMultiAllModel cpDdSystemsParentMultiAllModel;
  // Model for cpDdSystemsSubsMultiAll component.
  late CpDdSystemsSubsMultiAllModel cpDdSystemsSubsMultiAllModel;
  // Model for cpDropdownFiltersUnitsTypesParent component.
  late CpDropdownFiltersUnitsTypesParentModel
      cpDropdownFiltersUnitsTypesParentModel;
  // Model for cpDropdownFiltersUnitsTypes component.
  late CpDropdownFiltersUnitsTypesModel cpDropdownFiltersUnitsTypesModel;
  // Model for cpDropdownFiltersUnits component.
  late CpDropdownFiltersUnitsModel cpDropdownFiltersUnitsModel;
  // Model for cpDropdownFiltersAssetsTags component.
  late CpDropdownFiltersAssetsTagsModel cpDropdownFiltersAssetsTagsModel;
  // Model for cpDdOTypesMultiAll component.
  late CpDdOTypesMultiAllModel cpDdOTypesMultiAllModel;
  // Model for cpDdOTypesSubsMultiAll component.
  late CpDdOTypesSubsMultiAllModel cpDdOTypesSubsMultiAllModel;
  // Model for cpDropdownFiltersTeamsDepartment component.
  late CpDropdownFiltersTeamsDepartmentModel
      cpDropdownFiltersTeamsDepartmentModel;
  // Model for cpDdOrdersCausesReasonsMulti component.
  late CpDdOrdersCausesReasonsMultiModel cpDdOrdersCausesReasonsMultiModel;

  @override
  void initState(BuildContext context) {
    cpDdSystemsParentMultiAllModel =
        createModel(context, () => CpDdSystemsParentMultiAllModel());
    cpDdSystemsSubsMultiAllModel =
        createModel(context, () => CpDdSystemsSubsMultiAllModel());
    cpDropdownFiltersUnitsTypesParentModel =
        createModel(context, () => CpDropdownFiltersUnitsTypesParentModel());
    cpDropdownFiltersUnitsTypesModel =
        createModel(context, () => CpDropdownFiltersUnitsTypesModel());
    cpDropdownFiltersUnitsModel =
        createModel(context, () => CpDropdownFiltersUnitsModel());
    cpDropdownFiltersAssetsTagsModel =
        createModel(context, () => CpDropdownFiltersAssetsTagsModel());
    cpDdOTypesMultiAllModel =
        createModel(context, () => CpDdOTypesMultiAllModel());
    cpDdOTypesSubsMultiAllModel =
        createModel(context, () => CpDdOTypesSubsMultiAllModel());
    cpDropdownFiltersTeamsDepartmentModel =
        createModel(context, () => CpDropdownFiltersTeamsDepartmentModel());
    cpDdOrdersCausesReasonsMultiModel =
        createModel(context, () => CpDdOrdersCausesReasonsMultiModel());
  }

  @override
  void dispose() {
    cpDdSystemsParentMultiAllModel.dispose();
    cpDdSystemsSubsMultiAllModel.dispose();
    cpDropdownFiltersUnitsTypesParentModel.dispose();
    cpDropdownFiltersUnitsTypesModel.dispose();
    cpDropdownFiltersUnitsModel.dispose();
    cpDropdownFiltersAssetsTagsModel.dispose();
    cpDdOTypesMultiAllModel.dispose();
    cpDdOTypesSubsMultiAllModel.dispose();
    cpDropdownFiltersTeamsDepartmentModel.dispose();
    cpDdOrdersCausesReasonsMultiModel.dispose();
  }
}
