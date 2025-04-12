import '/flutter_flow/flutter_flow_util.dart';
import 'modal11_create_note_widget.dart' show Modal11CreateNoteWidget;
import 'package:flutter/material.dart';

class Modal11CreateNoteModel extends FlutterFlowModel<Modal11CreateNoteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
