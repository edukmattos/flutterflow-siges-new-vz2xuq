import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_status_card/cp_asset_status_card_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_o_v_asset_list_item_card_widget.dart'
    show CpOVAssetListItemCardWidget;
import 'package:flutter/material.dart';

class CpOVAssetListItemCardModel
    extends FlutterFlowModel<CpOVAssetListItemCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Model for cpAssetStatusCard component.
  late CpAssetStatusCardModel cpAssetStatusCardModel;

  @override
  void initState(BuildContext context) {
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
    cpAssetStatusCardModel =
        createModel(context, () => CpAssetStatusCardModel());
  }

  @override
  void dispose() {
    cpOVProcessingModel.dispose();
    cpAssetStatusCardModel.dispose();
  }
}
