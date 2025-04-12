import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_o_p_show_widget.dart' show PgOPShowWidget;
import 'package:flutter/material.dart';

class PgOPShowModel extends FlutterFlowModel<PgOPShowWidget> {
  ///  Local state fields for this page.

  int? lspvOid;

  int? lspvOVId;

  String? lpsvFilePath;

  String? lpsvFileNameToDelete;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOPShoww.
  late CpOPShowModel cpOPShowwModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOPShowwModel = createModel(context, () => CpOPShowModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOPShowwModel.dispose();
  }
}
