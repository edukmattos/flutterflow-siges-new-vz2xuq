import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import 'pg_not_allowed_widget.dart' show PgNotAllowedWidget;
import 'package:flutter/material.dart';

class PgNotAllowedModel extends FlutterFlowModel<PgNotAllowedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
  }
}
