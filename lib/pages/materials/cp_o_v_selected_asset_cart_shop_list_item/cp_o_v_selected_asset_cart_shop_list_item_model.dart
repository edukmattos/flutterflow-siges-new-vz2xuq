import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_currency0_decimals_copy/cp_input_currency0_decimals_copy_widget.dart';
import 'cp_o_v_selected_asset_cart_shop_list_item_widget.dart'
    show CpOVSelectedAssetCartShopListItemWidget;
import 'package:flutter/material.dart';

class CpOVSelectedAssetCartShopListItemModel
    extends FlutterFlowModel<CpOVSelectedAssetCartShopListItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputCurrency0DecimalsCopy component.
  late CpInputCurrency0DecimalsCopyModel cpInputCurrency0DecimalsCopyModel;

  @override
  void initState(BuildContext context) {
    cpInputCurrency0DecimalsCopyModel =
        createModel(context, () => CpInputCurrency0DecimalsCopyModel());
    cpInputCurrency0DecimalsCopyModel.textControllerValidator =
        _formTextFieldValidator;
  }

  @override
  void dispose() {
    cpInputCurrency0DecimalsCopyModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tkucld5j' /* Obrigatório. */,
      );
    }

    return null;
  }
}
