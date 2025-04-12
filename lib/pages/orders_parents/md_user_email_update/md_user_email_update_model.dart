import '/flutter_flow/flutter_flow_util.dart';
import 'md_user_email_update_widget.dart' show MdUserEmailUpdateWidget;
import 'package:flutter/material.dart';

class MdUserEmailUpdateModel extends FlutterFlowModel<MdUserEmailUpdateWidget> {
  ///  Local state fields for this component.

  String? lpsvUserEmail;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf_user_email_prefix widget.
  FocusNode? tfUserEmailPrefixFocusNode;
  TextEditingController? tfUserEmailPrefixTextController;
  String? Function(BuildContext, String?)?
      tfUserEmailPrefixTextControllerValidator;
  String? _tfUserEmailPrefixTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'onj6x4un' /* Obrigatório. */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tfUserEmailPrefixTextControllerValidator =
        _tfUserEmailPrefixTextControllerValidator;
  }

  @override
  void dispose() {
    tfUserEmailPrefixFocusNode?.dispose();
    tfUserEmailPrefixTextController?.dispose();
  }
}
