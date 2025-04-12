import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_date_widget.dart' show CpInputDateWidget;
import 'package:flutter/material.dart';

class CpInputDateModel extends FlutterFlowModel<CpInputDateWidget> {
  ///  Local state fields for this component.

  DateTime? lcsvDatepicker;

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
