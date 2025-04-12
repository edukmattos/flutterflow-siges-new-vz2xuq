import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_currency0_decimals_copy/cp_input_currency0_decimals_copy_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'cp_asset_material_add_list_item_widget.dart'
    show CpAssetMaterialAddListItemWidget;
import 'package:flutter/material.dart';

class CpAssetMaterialAddListItemModel
    extends FlutterFlowModel<CpAssetMaterialAddListItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputBrandModel.
  late CpInputTextModel cpInputBrandModelModel;
  // Model for cpInputLocation.
  late CpInputTextModel cpInputLocationModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for cpInputAmount.
  late CpInputCurrency0DecimalsCopyModel cpInputAmountModel;

  @override
  void initState(BuildContext context) {
    cpInputBrandModelModel = createModel(context, () => CpInputTextModel());
    cpInputLocationModel = createModel(context, () => CpInputTextModel());
    cpInputAmountModel =
        createModel(context, () => CpInputCurrency0DecimalsCopyModel());
  }

  @override
  void dispose() {
    cpInputBrandModelModel.dispose();
    cpInputLocationModel.dispose();
    cpInputAmountModel.dispose();
  }
}
