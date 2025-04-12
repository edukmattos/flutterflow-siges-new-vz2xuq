import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_email_widget.dart' show CpInputEmailWidget;
import 'package:flutter/material.dart';

class CpInputEmailModel extends FlutterFlowModel<CpInputEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();
  }
}
