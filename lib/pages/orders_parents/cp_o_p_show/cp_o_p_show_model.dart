import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_follow/cp_o_follow_widget.dart';
import '/pages/orders_parents/cp_o_p_button/cp_o_p_button_widget.dart';
import 'cp_o_p_show_widget.dart' show CpOPShowWidget;
import 'package:flutter/material.dart';

class CpOPShowModel extends FlutterFlowModel<CpOPShowWidget> {
  ///  Local state fields for this component.

  bool lcsvIsFollowing = false;

  bool lcsvIsThereFileName = false;

  String? lcsvFilePath;

  String? lcsvFileNameToDelete;

  bool lcsvImgToUpload = false;

  ///  State fields for stateful widgets in this component.

  // Model for cpOPButton component.
  late CpOPButtonModel cpOPButtonModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for cpOFollow component.
  late CpOFollowModel cpOFollowModel;

  @override
  void initState(BuildContext context) {
    cpOPButtonModel = createModel(context, () => CpOPButtonModel());
    cpOFollowModel = createModel(context, () => CpOFollowModel());
  }

  @override
  void dispose() {
    cpOPButtonModel.dispose();
    cpOFollowModel.dispose();
  }
}
