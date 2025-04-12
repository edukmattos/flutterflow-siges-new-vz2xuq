import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_integer_widget.dart' show CpInputIntegerWidget;
import 'package:flutter/material.dart';

class CpInputIntegerModel extends FlutterFlowModel<CpInputIntegerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputText widget.
  FocusNode? inputTextFocusNode;
  TextEditingController? inputTextTextController;
  String? Function(BuildContext, String?)? inputTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTextFocusNode?.dispose();
    inputTextTextController?.dispose();
  }
}
