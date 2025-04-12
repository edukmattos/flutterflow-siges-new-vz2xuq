import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pg_password_recovery_widget.dart' show PgPasswordRecoveryWidget;
import 'package:flutter/material.dart';

class PgPasswordRecoveryModel
    extends FlutterFlowModel<PgPasswordRecoveryWidget> {
  ///  Local state fields for this page.

  DtUserStruct? lpsvUserDt;
  void updateLpsvUserDtStruct(Function(DtUserStruct) updateFn) {
    updateFn(lpsvUserDt ??= DtUserStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf_recovery_email widget.
  FocusNode? tfRecoveryEmailFocusNode;
  TextEditingController? tfRecoveryEmailTextController;
  String? Function(BuildContext, String?)?
      tfRecoveryEmailTextControllerValidator;
  String? _tfRecoveryEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hbjay68r' /* Obrigatório. */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ngz05ogk' /* Inválido. */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    tfRecoveryEmailTextControllerValidator =
        _tfRecoveryEmailTextControllerValidator;
  }

  @override
  void dispose() {
    tfRecoveryEmailFocusNode?.dispose();
    tfRecoveryEmailTextController?.dispose();
  }
}
