import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pg_import_data_widget.dart' show PgImportDataWidget;
import 'package:flutter/material.dart';

class PgImportDataModel extends FlutterFlowModel<PgImportDataWidget> {
  ///  Local state fields for this page.

  List<int> lpstUsersId = [];
  void addToLpstUsersId(int item) => lpstUsersId.add(item);
  void removeFromLpstUsersId(int item) => lpstUsersId.remove(item);
  void removeAtIndexFromLpstUsersId(int index) => lpstUsersId.removeAt(index);
  void insertAtIndexInLpstUsersId(int index, int item) =>
      lpstUsersId.insert(index, item);
  void updateLpstUsersIdAtIndex(int index, Function(int) updateFn) =>
      lpstUsersId[index] = updateFn(lpstUsersId[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apiUsersAll)] action in Button widget.
  ApiCallResponse? resUsersAll;
  // Stores action output result for [Backend Call - API (apiImportUsersAll)] action in Button widget.
  ApiCallResponse? resUsersToImport;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UsersRow? resUserAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
