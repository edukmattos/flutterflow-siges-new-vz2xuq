import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_o_v_asset_list_item1_widget.dart' show CpOVAssetListItem1Widget;
import 'package:flutter/material.dart';

class CpOVAssetListItem1Model
    extends FlutterFlowModel<CpOVAssetListItem1Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedDisapprove;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedReview;
  // Stores action output result for [Action Block - abOVSelectedAssetImgCheck] action in IconButton widget.
  bool? resHasImages;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedApprove;
  // Stores action output result for [Action Block - abOVSelectedAssetImgCheck] action in IconButton widget.
  bool? resHasImages1;

  @override
  void initState(BuildContext context) {
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
  }

  @override
  void dispose() {
    cpOVProcessingModel.dispose();
  }
}
