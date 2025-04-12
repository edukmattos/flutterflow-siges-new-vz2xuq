import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/techincals_manuals/cp_t_m_show/cp_t_m_show_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_t_m_show_widget.dart' show PgTMShowWidget;
import 'package:flutter/material.dart';

class PgTMShowModel extends FlutterFlowModel<PgTMShowWidget> {
  ///  Local state fields for this page.

  bool lpsvIsUpdate = true;

  String? lpsvFilePath;

  String? lpsvFileNameToDelete;

  List<DtAssetStruct> lpsvAssets = [];
  void addToLpsvAssets(DtAssetStruct item) => lpsvAssets.add(item);
  void removeFromLpsvAssets(DtAssetStruct item) => lpsvAssets.remove(item);
  void removeAtIndexFromLpsvAssets(int index) => lpsvAssets.removeAt(index);
  void insertAtIndexInLpsvAssets(int index, DtAssetStruct item) =>
      lpsvAssets.insert(index, item);
  void updateLpsvAssetsAtIndex(int index, Function(DtAssetStruct) updateFn) =>
      lpsvAssets[index] = updateFn(lpsvAssets[index]);

  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpTMShow component.
  late CpTMShowModel cpTMShowModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowed;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? resIsAllowed;
  // Model for cpInputSearchTerms.
  late CpInputTextModel cpInputSearchTermsModel;
  // Stores action output result for [Backend Call - API (apiAssetsBySearchTermsAndTypeId)] action in IconButton widget.
  ApiCallResponse? resAssetsList;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpTMShowModel = createModel(context, () => CpTMShowModel());
    cpInputSearchTermsModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpTMShowModel.dispose();
    cpInputSearchTermsModel.dispose();
    cpMenuModel.dispose();
  }
}
