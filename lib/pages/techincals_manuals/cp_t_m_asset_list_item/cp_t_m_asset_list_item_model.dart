import '/flutter_flow/flutter_flow_util.dart';
import '/pages/techincals_manuals/cp_t_m_asset_following/cp_t_m_asset_following_widget.dart';
import 'cp_t_m_asset_list_item_widget.dart' show CpTMAssetListItemWidget;
import 'package:flutter/material.dart';

class CpTMAssetListItemModel extends FlutterFlowModel<CpTMAssetListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpTMAssetFollowing component.
  late CpTMAssetFollowingModel cpTMAssetFollowingModel;

  @override
  void initState(BuildContext context) {
    cpTMAssetFollowingModel =
        createModel(context, () => CpTMAssetFollowingModel());
  }

  @override
  void dispose() {
    cpTMAssetFollowingModel.dispose();
  }
}
