import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
import 'pg_o_p_show_copy_widget.dart' show PgOPShowCopyWidget;
import 'package:flutter/material.dart';

class PgOPShowCopyModel extends FlutterFlowModel<PgOPShowCopyWidget> {
  ///  Local state fields for this page.

  int? lspvOid;

  int? lspvOVId;

  String? lpsvFilePath;

  String? lpsvFileNameToDelete;

  bool lpsvIsThereFileName = false;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOPShow component.
  late CpOPShowModel cpOPShowModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOPShowModel = createModel(context, () => CpOPShowModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpOPShowModel.dispose();
  }
}
