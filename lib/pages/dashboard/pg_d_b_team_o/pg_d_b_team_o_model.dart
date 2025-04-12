import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_user_nav_bar/cp_d_b_user_nav_bar_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_d_b_team_o_widget.dart' show PgDBTeamOWidget;
import 'package:flutter/material.dart';

class PgDBTeamOModel extends FlutterFlowModel<PgDBTeamOWidget> {
  ///  Local state fields for this page.

  int? lpsvOStatusId = 5;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpDBUserNavBar component.
  late CpDBUserNavBarModel cpDBUserNavBarModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpDBUserNavBarModel = createModel(context, () => CpDBUserNavBarModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpDBUserNavBarModel.dispose();
  }
}
