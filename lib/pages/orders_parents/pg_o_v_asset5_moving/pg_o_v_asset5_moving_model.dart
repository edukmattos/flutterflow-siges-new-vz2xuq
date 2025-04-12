import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_dropdown_assets_statuses/cp_dropdown_assets_statuses_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags_subs/cp_dropdown_assets_tags_subs_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_v_asset5_moving_widget.dart' show PgOVAsset5MovingWidget;
import 'package:flutter/material.dart';

class PgOVAsset5MovingModel extends FlutterFlowModel<PgOVAsset5MovingWidget> {
  ///  Local state fields for this page.

  bool lpsvSubmitAvailable = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVAssetListItemCard component.
  late CpOVAssetListItemCardModel cpOVAssetListItemCardModel;
  // Model for cpAssetDatasheets component.
  late CpAssetDatasheetsModel cpAssetDatasheetsModel;
  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Model for cpDropdownAssetsTagsSubs component.
  late CpDropdownAssetsTagsSubsModel cpDropdownAssetsTagsSubsModel;
  // Model for cpDropdownAssetsStatuses component.
  late CpDropdownAssetsStatusesModel cpDropdownAssetsStatusesModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVAssetListItemCardModel =
        createModel(context, () => CpOVAssetListItemCardModel());
    cpAssetDatasheetsModel =
        createModel(context, () => CpAssetDatasheetsModel());
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownAssetsTagsSubsModel =
        createModel(context, () => CpDropdownAssetsTagsSubsModel());
    cpDropdownAssetsStatusesModel =
        createModel(context, () => CpDropdownAssetsStatusesModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpOVAssetListItemCardModel.dispose();
    cpAssetDatasheetsModel.dispose();
    cpDropdownUnitsModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownAssetsTagsSubsModel.dispose();
    cpDropdownAssetsStatusesModel.dispose();
    cpInputTextModel.dispose();
  }
}
