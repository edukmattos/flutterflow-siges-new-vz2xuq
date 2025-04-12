import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_my_team_widget.dart' show PgMyTeamWidget;
import 'package:flutter/material.dart';

class PgMyTeamModel extends FlutterFlowModel<PgMyTeamWidget> {
  ///  Local state fields for this page.

  List<DtUserStruct> lpsvUsers = [];
  void addToLpsvUsers(DtUserStruct item) => lpsvUsers.add(item);
  void removeFromLpsvUsers(DtUserStruct item) => lpsvUsers.remove(item);
  void removeAtIndexFromLpsvUsers(int index) => lpsvUsers.removeAt(index);
  void insertAtIndexInLpsvUsers(int index, DtUserStruct item) =>
      lpsvUsers.insert(index, item);
  void updateLpsvUsersAtIndex(int index, Function(DtUserStruct) updateFn) =>
      lpsvUsers[index] = updateFn(lpsvUsers[index]);

  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Stores action output result for [Backend Call - API (apiUsersSearchByNameFull)] action in IconButton widget.
  ApiCallResponse? apiResult0dw;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpInputTextModel.dispose();
    cpMenuModel.dispose();
  }
}
