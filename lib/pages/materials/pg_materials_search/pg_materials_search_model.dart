import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_selected_asset_cart/cp_o_v_selected_asset_cart_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_materials_search_widget.dart' show PgMaterialsSearchWidget;
import 'package:flutter/material.dart';

class PgMaterialsSearchModel extends FlutterFlowModel<PgMaterialsSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVSelectedAssetCart component.
  late CpOVSelectedAssetCartModel cpOVSelectedAssetCartModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVSelectedAssetCartModel =
        createModel(context, () => CpOVSelectedAssetCartModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpOVSelectedAssetCartModel.dispose();
    cpMenuModel.dispose();
  }
}
