import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_available_mono/cp_dd_o_types_subs_available_mono_widget.dart';
import '/pages/orders_parents/cp_dropdown_contracts/cp_dropdown_contracts_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_objects/cp_dropdown_orders_objects_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
import '/index.dart';
import 'pg_o_create_widget.dart' show PgOCreateWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PgOCreateModel extends FlutterFlowModel<PgOCreateWidget> {
  ///  Local state fields for this page.

  int? lpsvOChildCounter;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpOPShow component.
  late CpOPShowModel cpOPShowModel;
  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // State field(s) for tf_requested_services widget.
  FocusNode? tfRequestedServicesFocusNode;
  TextEditingController? tfRequestedServicesTextController;
  String? Function(BuildContext, String?)?
      tfRequestedServicesTextControllerValidator;
  String? _tfRequestedServicesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hrlrxs5e' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownOrdersTypes component.
  late CpDropdownOrdersTypesModel cpDropdownOrdersTypesModel;
  // Model for cpDdOTypesSubsAvailableMono component.
  late CpDdOTypesSubsAvailableMonoModel cpDdOTypesSubsAvailableMonoModel;
  // Model for cpDropdownOrdersPriorities component.
  late CpDropdownOrdersPrioritiesModel cpDropdownOrdersPrioritiesModel;
  // Model for cpDropdownOrdersObjects component.
  late CpDropdownOrdersObjectsModel cpDropdownOrdersObjectsModel;
  // Model for cpDropdownContracts component.
  late CpDropdownContractsModel cpDropdownContractsModel;
  // State field(s) for tf_requester_phone widget.
  FocusNode? tfRequesterPhoneFocusNode;
  TextEditingController? tfRequesterPhoneTextController;
  final tfRequesterPhoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      tfRequesterPhoneTextControllerValidator;
  String? _tfRequesterPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't2t3r3if' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? resOrderAdded;

  @override
  void initState(BuildContext context) {
    cpOPShowModel = createModel(context, () => CpOPShowModel());
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    tfRequestedServicesTextControllerValidator =
        _tfRequestedServicesTextControllerValidator;
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpDdOTypesSubsAvailableMonoModel =
        createModel(context, () => CpDdOTypesSubsAvailableMonoModel());
    cpDropdownOrdersPrioritiesModel =
        createModel(context, () => CpDropdownOrdersPrioritiesModel());
    cpDropdownOrdersObjectsModel =
        createModel(context, () => CpDropdownOrdersObjectsModel());
    cpDropdownContractsModel =
        createModel(context, () => CpDropdownContractsModel());
    tfRequesterPhoneTextControllerValidator =
        _tfRequesterPhoneTextControllerValidator;
  }

  @override
  void dispose() {
    cpOPShowModel.dispose();
    cpDropdownUnitsModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    tfRequestedServicesFocusNode?.dispose();
    tfRequestedServicesTextController?.dispose();

    cpDropdownOrdersTypesModel.dispose();
    cpDdOTypesSubsAvailableMonoModel.dispose();
    cpDropdownOrdersPrioritiesModel.dispose();
    cpDropdownOrdersObjectsModel.dispose();
    cpDropdownContractsModel.dispose();
    tfRequesterPhoneFocusNode?.dispose();
    tfRequesterPhoneTextController?.dispose();
  }
}
