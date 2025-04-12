import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pg_password_update_widget.dart' show PgPasswordUpdateWidget;
import 'package:flutter/material.dart';

class PgPasswordUpdateModel extends FlutterFlowModel<PgPasswordUpdateWidget> {
  ///  Local state fields for this page.

  String? lpsvMobileFull;

  String? lpsvMobileWhatsapp;

  String? lpsvMobile;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - caCheckResetPasswordLink] action in pgPasswordUpdate widget.
  String? resCheckResetPasswordLink;
  // State field(s) for tf_recovery_password widget.
  FocusNode? tfRecoveryPasswordFocusNode;
  TextEditingController? tfRecoveryPasswordTextController;
  late bool tfRecoveryPasswordVisibility;
  String? Function(BuildContext, String?)?
      tfRecoveryPasswordTextControllerValidator;
  String? _tfRecoveryPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ml61dm6w' /* Obrigatório */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'eprdlx42' /* Mín 06 carateres */,
      );
    }

    return null;
  }

  // State field(s) for tf_recovery_password_confirm widget.
  FocusNode? tfRecoveryPasswordConfirmFocusNode;
  TextEditingController? tfRecoveryPasswordConfirmTextController;
  late bool tfRecoveryPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      tfRecoveryPasswordConfirmTextControllerValidator;
  String? _tfRecoveryPasswordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5uiqdmbg' /* Obrigatório */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tfRecoveryPasswordVisibility = false;
    tfRecoveryPasswordTextControllerValidator =
        _tfRecoveryPasswordTextControllerValidator;
    tfRecoveryPasswordConfirmVisibility = false;
    tfRecoveryPasswordConfirmTextControllerValidator =
        _tfRecoveryPasswordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    tfRecoveryPasswordFocusNode?.dispose();
    tfRecoveryPasswordTextController?.dispose();

    tfRecoveryPasswordConfirmFocusNode?.dispose();
    tfRecoveryPasswordConfirmTextController?.dispose();
  }
}
