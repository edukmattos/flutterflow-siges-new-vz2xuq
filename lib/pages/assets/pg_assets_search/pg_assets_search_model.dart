import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_assets_search_widget.dart' show PgAssetsSearchWidget;
import 'package:flutter/material.dart';

class PgAssetsSearchModel extends FlutterFlowModel<PgAssetsSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  var resScan = '';
  // Stores action output result for [Backend Call - API (apiAssetByCode)] action in Barcode widget.
  ApiCallResponse? resScanAsset;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (apiAssetByCode)] action in IconButton widget.
  ApiCallResponse? resAssets;
  // Stores action output result for [Action Block - abGuardian] action in Icon widget.
  bool? isAllowed;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
