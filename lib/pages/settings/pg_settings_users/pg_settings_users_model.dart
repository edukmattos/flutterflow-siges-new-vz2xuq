import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_settings_users_widget.dart' show PgSettingsUsersWidget;
import 'package:flutter/material.dart';

class PgSettingsUsersModel extends FlutterFlowModel<PgSettingsUsersWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apiUsersByCompanyId)] action in pgSettingsUsers widget.
  ApiCallResponse? apiResultinw;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    tabBarController?.dispose();
  }
}
