import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_o_v_card_mini_widget.dart' show CpOVCardMiniWidget;
import 'package:flutter/material.dart';

class CpOVCardMiniModel extends FlutterFlowModel<CpOVCardMiniWidget> {
  ///  Local state fields for this component.

  List<DtOrderVisitTeamUserStruct> lcsvOVTeamUsers = [];
  void addToLcsvOVTeamUsers(DtOrderVisitTeamUserStruct item) =>
      lcsvOVTeamUsers.add(item);
  void removeFromLcsvOVTeamUsers(DtOrderVisitTeamUserStruct item) =>
      lcsvOVTeamUsers.remove(item);
  void removeAtIndexFromLcsvOVTeamUsers(int index) =>
      lcsvOVTeamUsers.removeAt(index);
  void insertAtIndexInLcsvOVTeamUsers(
          int index, DtOrderVisitTeamUserStruct item) =>
      lcsvOVTeamUsers.insert(index, item);
  void updateLcsvOVTeamUsersAtIndex(
          int index, Function(DtOrderVisitTeamUserStruct) updateFn) =>
      lcsvOVTeamUsers[index] = updateFn(lcsvOVTeamUsers[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (apiTeamUsersByOVId)] action in cpOVCardMini widget.
  ApiCallResponse? resOVTeamUsers;
  // Model for cpOButtonDisabled component.
  late CpOButtonDisabledModel cpOButtonDisabledModel;
  // Model for cpOProgress component.
  late CpOProgressModel cpOProgressModel;
  // Model for cpOStatus component.
  late CpOStatusModel cpOStatusModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;

  @override
  void initState(BuildContext context) {
    cpOButtonDisabledModel =
        createModel(context, () => CpOButtonDisabledModel());
    cpOProgressModel = createModel(context, () => CpOProgressModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
  }

  @override
  void dispose() {
    cpOButtonDisabledModel.dispose();
    cpOProgressModel.dispose();
    cpOStatusModel.dispose();
    cpOVProcessingModel.dispose();
  }
}
