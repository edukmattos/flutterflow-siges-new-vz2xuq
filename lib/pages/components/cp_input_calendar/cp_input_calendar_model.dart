import '/flutter_flow/flutter_flow_util.dart';
import 'cp_input_calendar_widget.dart' show CpInputCalendarWidget;
import 'package:flutter/material.dart';

class CpInputCalendarModel extends FlutterFlowModel<CpInputCalendarWidget> {
  ///  Local state fields for this component.

  String? cpLabelText;

  DateTime? csvDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
