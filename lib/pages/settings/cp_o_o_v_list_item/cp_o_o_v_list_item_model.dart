import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/orders_parents/cp_o_v_values/cp_o_v_values_widget.dart';
import 'cp_o_o_v_list_item_widget.dart' show CpOOVListItemWidget;
import 'package:flutter/material.dart';

class CpOOVListItemModel extends FlutterFlowModel<CpOOVListItemWidget> {
  ///  Local state fields for this component.

  List<DtOrderVisitTeamUserStruct> lcsvOVteamUsers = [];
  void addToLcsvOVteamUsers(DtOrderVisitTeamUserStruct item) =>
      lcsvOVteamUsers.add(item);
  void removeFromLcsvOVteamUsers(DtOrderVisitTeamUserStruct item) =>
      lcsvOVteamUsers.remove(item);
  void removeAtIndexFromLcsvOVteamUsers(int index) =>
      lcsvOVteamUsers.removeAt(index);
  void insertAtIndexInLcsvOVteamUsers(
          int index, DtOrderVisitTeamUserStruct item) =>
      lcsvOVteamUsers.insert(index, item);
  void updateLcsvOVteamUsersAtIndex(
          int index, Function(DtOrderVisitTeamUserStruct) updateFn) =>
      lcsvOVteamUsers[index] = updateFn(lcsvOVteamUsers[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (apiTeamUsersByOVId)] action in cpOOVListItem widget.
  ApiCallResponse? apiResultj2z;
  // Model for cpOButtonDisabled component.
  late CpOButtonDisabledModel cpOButtonDisabledModel;
  // Model for cpOProgress component.
  late CpOProgressModel cpOProgressModel;
  // Model for cpOStatus component.
  late CpOStatusModel cpOStatusModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Model for cpOVValues component.
  late CpOVValuesModel cpOVValuesModel;

  @override
  void initState(BuildContext context) {
    cpOButtonDisabledModel =
        createModel(context, () => CpOButtonDisabledModel());
    cpOProgressModel = createModel(context, () => CpOProgressModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
    cpOVValuesModel = createModel(context, () => CpOVValuesModel());
  }

  @override
  void dispose() {
    cpOButtonDisabledModel.dispose();
    cpOProgressModel.dispose();
    cpOStatusModel.dispose();
    cpOVProcessingModel.dispose();
    cpOVValuesModel.dispose();
  }
}
