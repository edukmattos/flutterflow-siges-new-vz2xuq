import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_user_nav_bar/cp_d_b_user_nav_bar_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_db_user_ove_widget.dart' show PgDbUserOveWidget;
import 'package:flutter/material.dart';

class PgDbUserOveModel extends FlutterFlowModel<PgDbUserOveWidget> {
  ///  Local state fields for this page.

  int? lpsvOveProcessingId = 1;

  bool lpsvOveProcessingIsFiled = false;

  bool lpsvOveFollowingIsVisible = false;

  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpDBUserNavBar component.
  late CpDBUserNavBarModel cpDBUserNavBarModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOveCreate;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpDBUserNavBarModel = createModel(context, () => CpDBUserNavBarModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpDBUserNavBarModel.dispose();
    cpMenuModel.dispose();
  }
}
