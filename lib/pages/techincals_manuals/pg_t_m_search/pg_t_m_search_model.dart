import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_assets_types/cp_dropdown_assets_types_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_t_m_search_widget.dart' show PgTMSearchWidget;
import 'package:flutter/material.dart';

class PgTMSearchModel extends FlutterFlowModel<PgTMSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Model for cpDropdownAssetsTypes component.
  late CpDropdownAssetsTypesModel cpDropdownAssetsTypesModel;
  // Stores action output result for [Backend Call - API (apiTMsBySearchTermsAndAssetTypeId)] action in IconButton widget.
  ApiCallResponse? resTMs;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Stores action output result for [Action Block - abGuardian] action in Icon widget.
  bool? isAllowedTMCreate;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpDropdownAssetsTypesModel =
        createModel(context, () => CpDropdownAssetsTypesModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpInputTextModel.dispose();
    cpDropdownAssetsTypesModel.dispose();
    cpMenuModel.dispose();
  }
}
