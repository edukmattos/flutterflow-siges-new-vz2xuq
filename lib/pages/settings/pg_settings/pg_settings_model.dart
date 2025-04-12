import '/flutter_flow/flutter_flow_util.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_settings_widget.dart' show PgSettingsWidget;
import 'package:flutter/material.dart';

class PgSettingsModel extends FlutterFlowModel<PgSettingsWidget> {
  ///  State fields for stateful widgets in this page.

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
