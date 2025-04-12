import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_show_card/cp_asset_show_card_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_asset_show_widget.dart' show PgAssetShowWidget;
import 'package:flutter/material.dart';

class PgAssetShowModel extends FlutterFlowModel<PgAssetShowWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpAssetShowCard component.
  late CpAssetShowCardModel cpAssetShowCardModel;
  // Model for cpAssetDatasheets component.
  late CpAssetDatasheetsModel cpAssetDatasheetsModel;
  // Model for cpAssetViews component.
  late CpAssetViewsModel cpAssetViewsModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpAssetShowCardModel = createModel(context, () => CpAssetShowCardModel());
    cpAssetDatasheetsModel =
        createModel(context, () => CpAssetDatasheetsModel());
    cpAssetViewsModel = createModel(context, () => CpAssetViewsModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpAssetShowCardModel.dispose();
    cpAssetDatasheetsModel.dispose();
    cpAssetViewsModel.dispose();
  }
}
