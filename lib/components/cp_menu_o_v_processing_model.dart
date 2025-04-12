import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_menu_o_v_processing_widget.dart' show CpMenuOVProcessingWidget;
import 'package:flutter/material.dart';

class CpMenuOVProcessingModel
    extends FlutterFlowModel<CpMenuOVProcessingWidget> {
  ///  Local state fields for this component.

  bool lcsvMnuIsOpen = false;

  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel1;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel2;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel3;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel4;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel5;

  @override
  void initState(BuildContext context) {
    cpOVProcessingModel1 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel2 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel3 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel4 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel5 = createModel(context, () => CpOVProcessingModel());
  }

  @override
  void dispose() {
    cpOVProcessingModel1.dispose();
    cpOVProcessingModel2.dispose();
    cpOVProcessingModel3.dispose();
    cpOVProcessingModel4.dispose();
    cpOVProcessingModel5.dispose();
  }
}
