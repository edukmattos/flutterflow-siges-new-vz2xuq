import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_admin_nav_bar/cp_d_b_admin_nav_bar_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_db_admin_o_new_widget.dart' show PgDbAdminONewWidget;
import 'package:flutter/material.dart';

class PgDbAdminONewModel extends FlutterFlowModel<PgDbAdminONewWidget> {
  ///  Local state fields for this page.

  String lpsvOrderOrVisits = 'orders';

  int? lpsvOrderStatusId;

  bool? lpsvIsParent = true;

  int lpsvVisitsProcessingId = 1;

  int lpsvOPFiltersDays = 0;

  int lpsvOTeamId = 0;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOveCreate;
  // State field(s) for tf_ove_id widget.
  FocusNode? tfOveIdFocusNode;
  TextEditingController? tfOveIdTextController;
  String? Function(BuildContext, String?)? tfOveIdTextControllerValidator;
  DateTime? datePicked;
  // Model for cpDBAdminNavBar component.
  late CpDBAdminNavBarModel cpDBAdminNavBarModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpDBAdminNavBarModel = createModel(context, () => CpDBAdminNavBarModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    tfOveIdFocusNode?.dispose();
    tfOveIdTextController?.dispose();

    cpDBAdminNavBarModel.dispose();
  }
}
