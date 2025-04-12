import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_show_card/cp_asset_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_asset_c_u_step04_image_widget.dart' show PgAssetCUStep04ImageWidget;
import 'package:flutter/material.dart';

class PgAssetCUStep04ImageModel
    extends FlutterFlowModel<PgAssetCUStep04ImageWidget> {
  ///  Local state fields for this page.

  String? lpsvFilePath;

  String? lpsvFileNameToDelete;

  bool lpsvIsThereFileName = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpAssetShowCard component.
  late CpAssetShowCardModel cpAssetShowCardModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpAssetShowCardModel = createModel(context, () => CpAssetShowCardModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpAssetShowCardModel.dispose();
  }
}
