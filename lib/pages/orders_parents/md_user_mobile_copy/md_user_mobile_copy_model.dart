import '/flutter_flow/flutter_flow_util.dart';
import 'md_user_mobile_copy_widget.dart' show MdUserMobileCopyWidget;
import 'package:flutter/material.dart';

class MdUserMobileCopyModel extends FlutterFlowModel<MdUserMobileCopyWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf_password widget.
  FocusNode? tfPasswordFocusNode;
  TextEditingController? tfPasswordTextController;
  late bool tfPasswordVisibility;
  String? Function(BuildContext, String?)? tfPasswordTextControllerValidator;
  String? _tfPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bx8rriae' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_password_confirm widget.
  FocusNode? tfPasswordConfirmFocusNode;
  TextEditingController? tfPasswordConfirmTextController;
  late bool tfPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      tfPasswordConfirmTextControllerValidator;
  String? _tfPasswordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bwbhdc14' /* Obrigatório. */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tfPasswordVisibility = false;
    tfPasswordTextControllerValidator = _tfPasswordTextControllerValidator;
    tfPasswordConfirmVisibility = false;
    tfPasswordConfirmTextControllerValidator =
        _tfPasswordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    tfPasswordFocusNode?.dispose();
    tfPasswordTextController?.dispose();

    tfPasswordConfirmFocusNode?.dispose();
    tfPasswordConfirmTextController?.dispose();
  }
}
