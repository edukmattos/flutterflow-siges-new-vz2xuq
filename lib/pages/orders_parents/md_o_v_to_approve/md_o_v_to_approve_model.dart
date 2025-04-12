import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_available_mono/cp_dd_o_types_subs_available_mono_widget.dart';
import '/pages/orders_parents/cp_dropdown_o_close_statuses/cp_dropdown_o_close_statuses_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_causes_reasons/cp_dropdown_orders_causes_reasons_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_suspended_reasons/cp_dropdown_orders_suspended_reasons_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import 'md_o_v_to_approve_widget.dart' show MdOVToApproveWidget;
import 'package:flutter/material.dart';

class MdOVToApproveModel extends FlutterFlowModel<MdOVToApproveWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Model for cpDropdownOrdersTypes component.
  late CpDropdownOrdersTypesModel cpDropdownOrdersTypesModel;
  // Model for cpDdOTypesSubsAvailableMono component.
  late CpDdOTypesSubsAvailableMonoModel cpDdOTypesSubsAvailableMonoModel;
  // Model for cpDropdownOrdersPriorities component.
  late CpDropdownOrdersPrioritiesModel cpDropdownOrdersPrioritiesModel;
  // Model for cpDropdownOCloseStatuses component.
  late CpDropdownOCloseStatusesModel cpDropdownOCloseStatusesModel;
  // Model for cpDropdownOrdersSuspendedReasons component.
  late CpDropdownOrdersSuspendedReasonsModel
      cpDropdownOrdersSuspendedReasonsModel;
  // Model for cpDropdownOrdersCausesReasons component.
  late CpDropdownOrdersCausesReasonsModel cpDropdownOrdersCausesReasonsModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersVisitsRow>? resDurationHours;

  @override
  void initState(BuildContext context) {
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpDdOTypesSubsAvailableMonoModel =
        createModel(context, () => CpDdOTypesSubsAvailableMonoModel());
    cpDropdownOrdersPrioritiesModel =
        createModel(context, () => CpDropdownOrdersPrioritiesModel());
    cpDropdownOCloseStatusesModel =
        createModel(context, () => CpDropdownOCloseStatusesModel());
    cpDropdownOrdersSuspendedReasonsModel =
        createModel(context, () => CpDropdownOrdersSuspendedReasonsModel());
    cpDropdownOrdersCausesReasonsModel =
        createModel(context, () => CpDropdownOrdersCausesReasonsModel());
  }

  @override
  void dispose() {
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpDdOTypesSubsAvailableMonoModel.dispose();
    cpDropdownOrdersPrioritiesModel.dispose();
    cpDropdownOCloseStatusesModel.dispose();
    cpDropdownOrdersSuspendedReasonsModel.dispose();
    cpDropdownOrdersCausesReasonsModel.dispose();
  }
}
