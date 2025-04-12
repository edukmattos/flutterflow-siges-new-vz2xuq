import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_asset_materials_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_activities/cp_asset_activities_widget.dart';
import '/pages/assets/cp_asset_moves/cp_asset_moves_widget.dart';
import '/pages/assets/cp_asset_t_m_list_item/cp_asset_t_m_list_item_widget.dart';
import '/pages/orders_parents/cp_o_v_selected_asset_cart/cp_o_v_selected_asset_cart_widget.dart';
import 'cp_asset_views_widget.dart' show CpAssetViewsWidget;
import 'package:flutter/material.dart';

class CpAssetViewsModel extends FlutterFlowModel<CpAssetViewsWidget> {
  ///  Local state fields for this component.

  bool lcsvIsSearching = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Delete Row(s)] action in IconButton widget.
  List<OrdersVisitsAssetsMaterialsRow>? resOVAssetMaterials;
  // Stores action output result for [Backend Call - Delete Row(s)] action in IconButton widget.
  List<OrdersVisitsAssetsRow>? resOVAsset;
  // Model for cpAssetMaterialsListItem component.
  late CpAssetMaterialsListItemModel cpAssetMaterialsListItemModel;
  // Model for cpAssetTMListItem component.
  late CpAssetTMListItemModel cpAssetTMListItemModel;
  // Model for cpAssetMoves component.
  late CpAssetMovesModel cpAssetMovesModel;
  // Model for cpOVSelectedAssetCart component.
  late CpOVSelectedAssetCartModel cpOVSelectedAssetCartModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (apiAssetByCodeUnit)] action in IconButton widget.
  ApiCallResponse? resAssets;
  // Stores action output result for [Backend Call - API (apiAssetByCode)] action in IconButton widget.
  ApiCallResponse? resAssets2;
  // Stores action output result for [Action Block - abOVSelectedAssetCUD] action in cpAssetListItemCard widget.
  bool? resOVAssetCUD;
  // Model for cpAssetActivities component.
  late CpAssetActivitiesModel cpAssetActivitiesModel;

  @override
  void initState(BuildContext context) {
    cpAssetMaterialsListItemModel =
        createModel(context, () => CpAssetMaterialsListItemModel());
    cpAssetTMListItemModel =
        createModel(context, () => CpAssetTMListItemModel());
    cpAssetMovesModel = createModel(context, () => CpAssetMovesModel());
    cpOVSelectedAssetCartModel =
        createModel(context, () => CpOVSelectedAssetCartModel());
    cpAssetActivitiesModel =
        createModel(context, () => CpAssetActivitiesModel());
  }

  @override
  void dispose() {
    cpAssetMaterialsListItemModel.dispose();
    cpAssetTMListItemModel.dispose();
    cpAssetMovesModel.dispose();
    cpOVSelectedAssetCartModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cpAssetActivitiesModel.dispose();
  }
}
