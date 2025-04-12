import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_v_asset4_materials_search_widget.dart'
    show PgOVAsset4MaterialsSearchWidget;
import 'package:flutter/material.dart';

class PgOVAsset4MaterialsSearchModel
    extends FlutterFlowModel<PgOVAsset4MaterialsSearchWidget> {
  ///  Local state fields for this page.

  bool lpsvIsSearching = false;

  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVAssetListItemCard component.
  late CpOVAssetListItemCardModel cpOVAssetListItemCardModel;
  // Model for cpAssetDatasheets component.
  late CpAssetDatasheetsModel cpAssetDatasheetsModel;
  // Model for cpAssetViews component.
  late CpAssetViewsModel cpAssetViewsModel;
  // Model for cpInputMaterialCodeDescription.
  late CpInputTextModel cpInputMaterialCodeDescriptionModel;
  // Stores action output result for [Backend Call - API (apiMaterialsSearchable)] action in IconButton widget.
  ApiCallResponse? resMaterials;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVAssetListItemCardModel =
        createModel(context, () => CpOVAssetListItemCardModel());
    cpAssetDatasheetsModel =
        createModel(context, () => CpAssetDatasheetsModel());
    cpAssetViewsModel = createModel(context, () => CpAssetViewsModel());
    cpInputMaterialCodeDescriptionModel =
        createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpOVAssetListItemCardModel.dispose();
    cpAssetDatasheetsModel.dispose();
    cpAssetViewsModel.dispose();
    cpInputMaterialCodeDescriptionModel.dispose();
    cpMenuModel.dispose();
  }
}
