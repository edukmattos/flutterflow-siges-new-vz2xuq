import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_admin_nav_bar/cp_d_b_admin_nav_bar_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_d_b_admin_o_widget.dart' show PgDBAdminOWidget;
import 'package:flutter/material.dart';

class PgDBAdminOModel extends FlutterFlowModel<PgDBAdminOWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersOrVisits = 'orders';

  int? lpsvOrderStatusId;

  bool? lpsvIsParent = true;

  int lpsvVisitsProcessingId = 1;

  int lpsvOPFiltersDays = 0;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOPCreate;
  // State field(s) for TextFieldO widget.
  FocusNode? textFieldOFocusNode1;
  TextEditingController? textFieldOTextController1;
  String? Function(BuildContext, String?)? textFieldOTextController1Validator;
  // State field(s) for TextFieldO widget.
  FocusNode? textFieldOFocusNode2;
  TextEditingController? textFieldOTextController2;
  String? Function(BuildContext, String?)? textFieldOTextController2Validator;
  // State field(s) for TextFieldO widget.
  FocusNode? textFieldOFocusNode3;
  TextEditingController? textFieldOTextController3;
  String? Function(BuildContext, String?)? textFieldOTextController3Validator;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VOrdersRow>? resOrder;
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
    textFieldOFocusNode1?.dispose();
    textFieldOTextController1?.dispose();

    textFieldOFocusNode2?.dispose();
    textFieldOTextController2?.dispose();

    textFieldOFocusNode3?.dispose();
    textFieldOTextController3?.dispose();

    cpDBAdminNavBarModel.dispose();
  }
}
