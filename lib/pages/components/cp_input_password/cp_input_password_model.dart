import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_password_widget.dart' show CpInputPasswordWidget;
import 'package:flutter/material.dart';

class CpInputPasswordModel extends FlutterFlowModel<CpInputPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for inputPassword widget.
  FocusNode? inputPasswordFocusNode;
  TextEditingController? inputPasswordTextController;
  late bool inputPasswordVisibility;
  String? Function(BuildContext, String?)? inputPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputPasswordVisibility = false;
  }

  @override
  void dispose() {
    inputPasswordFocusNode?.dispose();
    inputPasswordTextController?.dispose();
  }
}
