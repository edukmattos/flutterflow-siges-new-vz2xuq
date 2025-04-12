import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_currency0_decimals_copy_widget.dart'
    show CpInputCurrency0DecimalsCopyWidget;
import 'package:flutter/material.dart';

class CpInputCurrency0DecimalsCopyModel
    extends FlutterFlowModel<CpInputCurrency0DecimalsCopyWidget> {
  ///  Local state fields for this component.

  String? cpLabelText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
