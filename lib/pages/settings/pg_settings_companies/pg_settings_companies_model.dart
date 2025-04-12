import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_settings_companies_widget.dart' show PgSettingsCompaniesWidget;
import 'package:flutter/material.dart';

class PgSettingsCompaniesModel
    extends FlutterFlowModel<PgSettingsCompaniesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apiCompaniesAll)] action in pgSettingsCompanies widget.
  ApiCallResponse? apiResultxhk;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
  }
}
