import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_visits_extras/cp_o_v_e_list_item/cp_o_v_e_list_item_widget.dart';
import 'pg_o_v_e_test_widget.dart' show PgOVETestWidget;
import 'package:flutter/material.dart';

class PgOVETestModel extends FlutterFlowModel<PgOVETestWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpOVEListItem component.
  late CpOVEListItemModel cpOVEListItemModel;

  @override
  void initState(BuildContext context) {
    cpOVEListItemModel = createModel(context, () => CpOVEListItemModel());
  }

  @override
  void dispose() {
    cpOVEListItemModel.dispose();
  }
}
