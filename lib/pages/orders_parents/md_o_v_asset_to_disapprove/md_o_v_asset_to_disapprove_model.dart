import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'md_o_v_asset_to_disapprove_widget.dart'
    show MdOVAssetToDisapproveWidget;
import 'package:flutter/material.dart';

class MdOVAssetToDisapproveModel
    extends FlutterFlowModel<MdOVAssetToDisapproveWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;

  @override
  void initState(BuildContext context) {
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpInputTextModel.inputTextTextControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    cpInputTextModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gew4u13z' /* Obrigatório. */,
      );
    }

    return null;
  }
}
