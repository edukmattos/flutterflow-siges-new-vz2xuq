import '/flutter_flow/flutter_flow_util.dart';
import 'md_user_mobile_widget.dart' show MdUserMobileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MdUserMobileModel extends FlutterFlowModel<MdUserMobileWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mobile widget.
  FocusNode? mobileFocusNode;
  TextEditingController? mobileTextController;
  final mobileMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? mobileTextControllerValidator;
  String? _mobileTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3u7mdyjd' /* Obrigatório */,
      );
    }

    if (val.length < 15) {
      return 'Requires at least 15 characters.';
    }
    if (val.length > 15) {
      return 'Maximum 15 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Custom Action - caMobileFormats] action in Button widget.
  List<String>? resMobileFormats;

  @override
  void initState(BuildContext context) {
    mobileTextControllerValidator = _mobileTextControllerValidator;
  }

  @override
  void dispose() {
    mobileFocusNode?.dispose();
    mobileTextController?.dispose();
  }
}
