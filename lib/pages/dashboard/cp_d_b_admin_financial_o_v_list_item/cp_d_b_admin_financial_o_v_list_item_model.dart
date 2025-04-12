import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_priority/cp_o_priority_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_d_b_admin_financial_o_v_list_item_widget.dart'
    show CpDBAdminFinancialOVListItemWidget;
import 'package:flutter/material.dart';

class CpDBAdminFinancialOVListItemModel
    extends FlutterFlowModel<CpDBAdminFinancialOVListItemWidget> {
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

  String? lcsvOVFinancialViewOption;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (apiTeamUsersByOVId)] action in cpDBAdminFinancialOVListItem widget.
  ApiCallResponse? apiResultj2z;
  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpOProgress component.
  late CpOProgressModel cpOProgressModel;
  // Model for cpOStatus component.
  late CpOStatusModel cpOStatusModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<UsersRow>? resUserTeam;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<DtOrderVisitVehicleStruct>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<DtOrderVisitServiceStruct>();

  @override
  void initState(BuildContext context) {
    cpOPriorityModel = createModel(context, () => CpOPriorityModel());
    cpOProgressModel = createModel(context, () => CpOProgressModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
  }

  @override
  void dispose() {
    cpOPriorityModel.dispose();
    cpOProgressModel.dispose();
    cpOStatusModel.dispose();
    cpOVProcessingModel.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
  }
}
