import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_show/cp_o_show_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_show_widget.dart' show PgOShowWidget;
import 'package:flutter/material.dart';

class PgOShowModel extends FlutterFlowModel<PgOShowWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apiOVByOId)] action in pgOShow widget.
  ApiCallResponse? resOVs;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOShow component.
  late CpOShowModel cpOShowModel;
  // Stores action output result for [Action Block - abIsGpsOn] action in IconButton widget.
  bool? isGpsOn;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<OrdersRow>? resOUpdate;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  OrdersVisitsRow? resOVCreated;
  // Stores action output result for [Backend Call - API (apiUsersByTeamId)] action in IconButton widget.
  ApiCallResponse? resUsersTeamCurrent;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOShowModel = createModel(context, () => CpOShowModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOShowModel.dispose();
  }
}
