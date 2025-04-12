import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_assets_types/cp_dropdown_assets_types_widget.dart';
import '/pages/components/cp_dropdown_t_m_types/cp_dropdown_t_m_types_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'md_t_m_create_widget.dart' show MdTMCreateWidget;
import 'package:flutter/material.dart';

class MdTMCreateModel extends FlutterFlowModel<MdTMCreateWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownTMTypes component.
  late CpDropdownTMTypesModel cpDropdownTMTypesModel;
  // Model for cpDropdownAssetsTypes component.
  late CpDropdownAssetsTypesModel cpDropdownAssetsTypesModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TechnicalsManualsRow? resTechManualAdded;

  @override
  void initState(BuildContext context) {
    cpDropdownTMTypesModel =
        createModel(context, () => CpDropdownTMTypesModel());
    cpDropdownAssetsTypesModel =
        createModel(context, () => CpDropdownAssetsTypesModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpInputTextModel.inputTextTextControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    cpDropdownTMTypesModel.dispose();
    cpDropdownAssetsTypesModel.dispose();
    cpInputTextModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'g7ypl1no' /* Obrigatório. */,
      );
    }

    return null;
  }
}
