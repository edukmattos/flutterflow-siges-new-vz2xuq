import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_o_v_selected_asset_cart_widget.dart'
    show CpOVSelectedAssetCartWidget;
import 'package:flutter/material.dart';

class CpOVSelectedAssetCartModel
    extends FlutterFlowModel<CpOVSelectedAssetCartWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tf_searchTerms widget.
  FocusNode? tfSearchTermsFocusNode;
  TextEditingController? tfSearchTermsTextController;
  String? Function(BuildContext, String?)? tfSearchTermsTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiMaterialsSearchable)] action in IconButton widget.
  ApiCallResponse? resMaterials;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfSearchTermsFocusNode?.dispose();
    tfSearchTermsTextController?.dispose();
  }
}
