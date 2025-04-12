import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'cp_asset_materials_list_item_widget.dart'
    show CpAssetMaterialsListItemWidget;
import 'package:flutter/material.dart';

class CpAssetMaterialsListItemModel
    extends FlutterFlowModel<CpAssetMaterialsListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpInputMaterialCodeDescription.
  late CpInputTextModel cpInputMaterialCodeDescriptionModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? resAllowedAssetMaterials;
  // Stores action output result for [Backend Call - API (apiMaterialsSearchable)] action in IconButton widget.
  ApiCallResponse? resMaterials;

  @override
  void initState(BuildContext context) {
    cpInputMaterialCodeDescriptionModel =
        createModel(context, () => CpInputTextModel());
  }

  @override
  void dispose() {
    cpInputMaterialCodeDescriptionModel.dispose();
  }
}
