import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_status_card/cp_asset_status_card_widget.dart';
import 'cp_asset_moves_list_item_widget.dart' show CpAssetMovesListItemWidget;
import 'package:flutter/material.dart';

class CpAssetMovesListItemModel
    extends FlutterFlowModel<CpAssetMovesListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpAssetStatusCard component.
  late CpAssetStatusCardModel cpAssetStatusCardModel1;
  // Model for cpAssetStatusCard component.
  late CpAssetStatusCardModel cpAssetStatusCardModel2;

  @override
  void initState(BuildContext context) {
    cpAssetStatusCardModel1 =
        createModel(context, () => CpAssetStatusCardModel());
    cpAssetStatusCardModel2 =
        createModel(context, () => CpAssetStatusCardModel());
  }

  @override
  void dispose() {
    cpAssetStatusCardModel1.dispose();
    cpAssetStatusCardModel2.dispose();
  }
}
