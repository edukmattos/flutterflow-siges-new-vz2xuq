import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_status_card/cp_asset_status_card_widget.dart';
import '/pages/cp_asset_following/cp_asset_following_widget.dart';
import 'cp_asset_show_card_widget.dart' show CpAssetShowCardWidget;
import 'package:flutter/material.dart';

class CpAssetShowCardModel extends FlutterFlowModel<CpAssetShowCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpAssetFollowing component.
  late CpAssetFollowingModel cpAssetFollowingModel;
  // Model for cpAssetStatusCard component.
  late CpAssetStatusCardModel cpAssetStatusCardModel;

  @override
  void initState(BuildContext context) {
    cpAssetFollowingModel = createModel(context, () => CpAssetFollowingModel());
    cpAssetStatusCardModel =
        createModel(context, () => CpAssetStatusCardModel());
  }

  @override
  void dispose() {
    cpAssetFollowingModel.dispose();
    cpAssetStatusCardModel.dispose();
  }
}
