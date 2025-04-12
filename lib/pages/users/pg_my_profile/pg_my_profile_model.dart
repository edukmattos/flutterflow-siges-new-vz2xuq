import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/index.dart';
import 'pg_my_profile_widget.dart' show PgMyProfileWidget;
import 'package:flutter/material.dart';

class PgMyProfileModel extends FlutterFlowModel<PgMyProfileWidget> {
  ///  Local state fields for this page.

  String? lpsvFilePath;

  String? lpsvFileName;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (apiFaceDetection)] action in Image widget.
  ApiCallResponse? resUserFaceDetected;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
  }
}
