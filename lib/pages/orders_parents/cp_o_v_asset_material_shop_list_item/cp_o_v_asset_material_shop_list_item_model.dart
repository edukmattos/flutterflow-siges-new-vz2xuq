import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_currency0_decimals_copy/cp_input_currency0_decimals_copy_widget.dart';
import 'cp_o_v_asset_material_shop_list_item_widget.dart'
    show CpOVAssetMaterialShopListItemWidget;
import 'package:flutter/material.dart';

class CpOVAssetMaterialShopListItemModel
    extends FlutterFlowModel<CpOVAssetMaterialShopListItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputValueUnit.
  late CpInputCurrency0DecimalsCopyModel cpInputValueUnitModel;
  // Model for cpInputAD.
  late CpInputCurrency0DecimalsCopyModel cpInputADModel;
  // Model for cpInputAmount.
  late CpInputCurrency0DecimalsCopyModel cpInputAmountModel;

  @override
  void initState(BuildContext context) {
    cpInputValueUnitModel =
        createModel(context, () => CpInputCurrency0DecimalsCopyModel());
    cpInputADModel =
        createModel(context, () => CpInputCurrency0DecimalsCopyModel());
    cpInputAmountModel =
        createModel(context, () => CpInputCurrency0DecimalsCopyModel());
    cpInputADModel.textControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    cpInputValueUnitModel.dispose();
    cpInputADModel.dispose();
    cpInputAmountModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fdggwg3w' /* Obrigatório. */,
      );
    }

    return null;
  }
}
