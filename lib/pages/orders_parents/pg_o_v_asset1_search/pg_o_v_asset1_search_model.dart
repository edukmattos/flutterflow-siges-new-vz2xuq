import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_v_asset1_search_widget.dart' show PgOVAsset1SearchWidget;
import 'package:flutter/material.dart';

class PgOVAsset1SearchModel extends FlutterFlowModel<PgOVAsset1SearchWidget> {
  ///  Local state fields for this page.

  List<DtOrderVisitAssetStruct> lpsvOVAssetSelected = [];
  void addToLpsvOVAssetSelected(DtOrderVisitAssetStruct item) =>
      lpsvOVAssetSelected.add(item);
  void removeFromLpsvOVAssetSelected(DtOrderVisitAssetStruct item) =>
      lpsvOVAssetSelected.remove(item);
  void removeAtIndexFromLpsvOVAssetSelected(int index) =>
      lpsvOVAssetSelected.removeAt(index);
  void insertAtIndexInLpsvOVAssetSelected(
          int index, DtOrderVisitAssetStruct item) =>
      lpsvOVAssetSelected.insert(index, item);
  void updateLpsvOVAssetSelectedAtIndex(
          int index, Function(DtOrderVisitAssetStruct) updateFn) =>
      lpsvOVAssetSelected[index] = updateFn(lpsvOVAssetSelected[index]);

  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  var resScan = '';
  // Stores action output result for [Backend Call - API (apiAssetByCode)] action in Barcode widget.
  ApiCallResponse? resAsset1;
  // Model for cpInputAssetCode.
  late CpInputTextModel cpInputAssetCodeModel;
  // Stores action output result for [Backend Call - API (apiAssetByCode)] action in IconButton widget.
  ApiCallResponse? resAsset;
  // Stores action output result for [Backend Call - Insert Row] action in cpAssetListItemCard widget.
  OrdersVisitsAssetsRow? resOVAssetAdded;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpInputAssetCodeModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpInputAssetCodeModel.dispose();
    cpMenuModel.dispose();
  }
}
