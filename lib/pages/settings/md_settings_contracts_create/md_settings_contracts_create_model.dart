import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_departments_company/cp_dropdown_departments_company_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'md_settings_contracts_create_widget.dart'
    show MdSettingsContractsCreateWidget;
import 'package:flutter/material.dart';

class MdSettingsContractsCreateModel
    extends FlutterFlowModel<MdSettingsContractsCreateWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputTextCode.
  late CpInputTextModel cpInputTextCodeModel;
  // Model for cpInputTextDescription.
  late CpInputTextModel cpInputTextDescriptionModel;
  // Model for cpDropdownDepartmentsCompany component.
  late CpDropdownDepartmentsCompanyModel cpDropdownDepartmentsCompanyModel;

  @override
  void initState(BuildContext context) {
    cpInputTextCodeModel = createModel(context, () => CpInputTextModel());
    cpInputTextDescriptionModel =
        createModel(context, () => CpInputTextModel());
    cpDropdownDepartmentsCompanyModel =
        createModel(context, () => CpDropdownDepartmentsCompanyModel());
    cpInputTextCodeModel.inputTextTextControllerValidator =
        _formTextFieldValidator1;
    cpInputTextDescriptionModel.inputTextTextControllerValidator =
        _formTextFieldValidator2;
  }

  @override
  void dispose() {
    cpInputTextCodeModel.dispose();
    cpInputTextDescriptionModel.dispose();
    cpDropdownDepartmentsCompanyModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n9if0oqf' /* Obrigatório. */,
      );
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd0jfflla' /* Obrigatório. */,
      );
    }

    return null;
  }
}
