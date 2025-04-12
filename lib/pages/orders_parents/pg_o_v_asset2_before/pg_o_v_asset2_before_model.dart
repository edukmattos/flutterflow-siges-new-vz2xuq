import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_v_asset2_before_widget.dart' show PgOVAsset2BeforeWidget;
import 'package:flutter/material.dart';

class PgOVAsset2BeforeModel extends FlutterFlowModel<PgOVAsset2BeforeWidget> {
  ///  Local state fields for this page.

  String? lpsvFilePath;

  bool lpsvIsThereFileName = false;

  String? lpsvFileNameToDelete;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVAssetListItemCard component.
  late CpOVAssetListItemCardModel cpOVAssetListItemCardModel;
  // Model for cpAssetDatasheets component.
  late CpAssetDatasheetsModel cpAssetDatasheetsModel;
  // Model for cpAssetViews component.
  late CpAssetViewsModel cpAssetViewsModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Action Block - abOVSelectedAssetImgCheck] action in IconButton widget.
  bool? resOVAssetImgCheck;
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
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedReview1;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedApprove1;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVAssetListItemCardModel =
        createModel(context, () => CpOVAssetListItemCardModel());
    cpAssetDatasheetsModel =
        createModel(context, () => CpAssetDatasheetsModel());
    cpAssetViewsModel = createModel(context, () => CpAssetViewsModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOVAssetListItemCardModel.dispose();
    cpAssetDatasheetsModel.dispose();
    cpAssetViewsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
