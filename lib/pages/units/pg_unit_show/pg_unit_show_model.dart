import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_unit_show_widget.dart' show PgUnitShowWidget;
import 'package:flutter/material.dart';

class PgUnitShowModel extends FlutterFlowModel<PgUnitShowWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpUnitCardShow component.
  late CpUnitCardShowModel cpUnitCardShowModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpUnitCardShowModel = createModel(context, () => CpUnitCardShowModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpUnitCardShowModel.dispose();
    cpMenuModel.dispose();
  }
}
