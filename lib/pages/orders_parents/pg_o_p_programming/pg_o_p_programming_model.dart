import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
import '/index.dart';
import 'pg_o_p_programming_widget.dart' show PgOPProgrammingWidget;
import 'package:flutter/material.dart';

class PgOPProgrammingModel extends FlutterFlowModel<PgOPProgrammingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpOPShow component.
  late CpOPShowModel cpOPShowModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;

  @override
  void initState(BuildContext context) {
    cpOPShowModel = createModel(context, () => CpOPShowModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
  }

  @override
  void dispose() {
    cpOPShowModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
  }
}
