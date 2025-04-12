import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_companies_available/cp_dropdown_companies_available_widget.dart';
import '/index.dart';
import 'pg_signin_widget.dart' show PgSigninWidget;
import 'package:flutter/material.dart';

class PgSigninModel extends FlutterFlowModel<PgSigninWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for cpDropdownCompaniesAvailable component.
  late CpDropdownCompaniesAvailableModel cpDropdownCompaniesAvailableModel;
  // State field(s) for tf_userName widget.
  FocusNode? tfUserNameFocusNode;
  TextEditingController? tfUserNameTextController;
  String? Function(BuildContext, String?)? tfUserNameTextControllerValidator;
  String? _tfUserNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9lvinwup' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_password widget.
  FocusNode? tfPasswordFocusNode;
  TextEditingController? tfPasswordTextController;
  late bool tfPasswordVisibility;
  String? Function(BuildContext, String?)? tfPasswordTextControllerValidator;
  String? _tfPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ge46rber' /* Obrigatório. */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cpDropdownCompaniesAvailableModel =
        createModel(context, () => CpDropdownCompaniesAvailableModel());
    tfUserNameTextControllerValidator = _tfUserNameTextControllerValidator;
    tfPasswordVisibility = false;
    tfPasswordTextControllerValidator = _tfPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    cpDropdownCompaniesAvailableModel.dispose();
    tfUserNameFocusNode?.dispose();
    tfUserNameTextController?.dispose();

    tfPasswordFocusNode?.dispose();
    tfPasswordTextController?.dispose();
  }
}
