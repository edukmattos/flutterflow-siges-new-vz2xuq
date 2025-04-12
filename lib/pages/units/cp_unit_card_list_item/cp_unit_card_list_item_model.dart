import '/flutter_flow/flutter_flow_util.dart';
import '/pages/units/cp_unit_status_card/cp_unit_status_card_widget.dart';
import 'cp_unit_card_list_item_widget.dart' show CpUnitCardListItemWidget;
import 'package:flutter/material.dart';

class CpUnitCardListItemModel
    extends FlutterFlowModel<CpUnitCardListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpUnitStatusCard component.
  late CpUnitStatusCardModel cpUnitStatusCardModel;

  @override
  void initState(BuildContext context) {
    cpUnitStatusCardModel = createModel(context, () => CpUnitStatusCardModel());
  }

  @override
  void dispose() {
    cpUnitStatusCardModel.dispose();
  }
}
