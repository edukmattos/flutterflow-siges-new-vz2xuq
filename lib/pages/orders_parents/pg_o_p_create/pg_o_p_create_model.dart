import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_connectivity_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_p_create_widget.dart' show PgOPCreateWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PgOPCreateModel extends FlutterFlowModel<PgOPCreateWidget> {
  ///  Local state fields for this page.

  int lpcvOCounter = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpConnectivityIcon component.
  late CpConnectivityIconModel cpConnectivityIconModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Model for cpDropdownOrdersTypes component.
  late CpDropdownOrdersTypesModel cpDropdownOrdersTypesModel;
  // State field(s) for tf_requested_services widget.
  FocusNode? tfRequestedServicesFocusNode;
  TextEditingController? tfRequestedServicesTextController;
  String? Function(BuildContext, String?)?
      tfRequestedServicesTextControllerValidator;
  String? _tfRequestedServicesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gncehtvq' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownOrdersPriorities component.
  late CpDropdownOrdersPrioritiesModel cpDropdownOrdersPrioritiesModel;
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
        'il1e0pgn' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (apiOCounterRequest)] action in Button widget.
  ApiCallResponse? resOCounterReq;
  // Stores action output result for [Action Block - abOfflineUnitSelected] action in Button widget.
  DtUnitStruct? resOfflineUnitSelected;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? resOPCreated;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpConnectivityIconModel =
        createModel(context, () => CpConnectivityIconModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    tfRequestedServicesTextControllerValidator =
        _tfRequestedServicesTextControllerValidator;
    cpDropdownOrdersPrioritiesModel =
        createModel(context, () => CpDropdownOrdersPrioritiesModel());
    tfRequesterPhoneTextControllerValidator =
        _tfRequesterPhoneTextControllerValidator;
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpConnectivityIconModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpDropdownUnitsModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    tfRequestedServicesFocusNode?.dispose();
    tfRequestedServicesTextController?.dispose();

    cpDropdownOrdersPrioritiesModel.dispose();
    tfRequesterPhoneFocusNode?.dispose();
    tfRequesterPhoneTextController?.dispose();

    cpMenuModel.dispose();
  }
}
