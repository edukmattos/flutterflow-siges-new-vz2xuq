import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_couplings_models/cp_dropdown_assets_couplings_models_widget.dart';
import '/pages/components/cp_input_currency2_decimals/cp_input_currency2_decimals_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_asset_c_u_step032_widget.dart' show PgAssetCUStep032Widget;
import 'package:flutter/material.dart';

class PgAssetCUStep032Model extends FlutterFlowModel<PgAssetCUStep032Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpAssetCreateCard component.
  late CpAssetCreateCardModel cpAssetCreateCardModel;
  // State field(s) for tf_poles_amount widget.
  FocusNode? tfPolesAmountFocusNode;
  TextEditingController? tfPolesAmountTextController;
  String? Function(BuildContext, String?)? tfPolesAmountTextControllerValidator;
  // State field(s) for tf_rotation_amount widget.
  FocusNode? tfRotationAmountFocusNode;
  TextEditingController? tfRotationAmountTextController;
  String? Function(BuildContext, String?)?
      tfRotationAmountTextControllerValidator;
  // Model for cpInputCurrency2Decimals component.
  late CpInputCurrency2DecimalsModel cpInputCurrency2DecimalsModel;
  // Model for cpInputPressureMax.
  late CpInputCurrency2DecimalsModel cpInputPressureMaxModel;
  // Model for cpInputFlowRateMin.
  late CpInputCurrency2DecimalsModel cpInputFlowRateMinModel;
  // Model for cpInputPressureOperation.
  late CpInputCurrency2DecimalsModel cpInputPressureOperationModel;
  // Model for cpInputFlowRateOperation.
  late CpInputCurrency2DecimalsModel cpInputFlowRateOperationModel;
  // Model for cpInputPressureMin.
  late CpInputCurrency2DecimalsModel cpInputPressureMinModel;
  // Model for cpInputFlowRateMax.
  late CpInputCurrency2DecimalsModel cpInputFlowRateMaxModel;
  // Model for cpDropdownAssetsCouplingsModels component.
  late CpDropdownAssetsCouplingsModelsModel
      cpDropdownAssetsCouplingsModelsModel;
  // State field(s) for tf_weight_amount widget.
  FocusNode? tfWeightAmountFocusNode;
  TextEditingController? tfWeightAmountTextController;
  String? Function(BuildContext, String?)?
      tfWeightAmountTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AssetsRow? resAssetCreated;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpAssetCreateCardModel =
        createModel(context, () => CpAssetCreateCardModel());
    cpInputCurrency2DecimalsModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpInputPressureMaxModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpInputFlowRateMinModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpInputPressureOperationModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpInputFlowRateOperationModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpInputPressureMinModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpInputFlowRateMaxModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    cpDropdownAssetsCouplingsModelsModel =
        createModel(context, () => CpDropdownAssetsCouplingsModelsModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpAssetCreateCardModel.dispose();
    tfPolesAmountFocusNode?.dispose();
    tfPolesAmountTextController?.dispose();

    tfRotationAmountFocusNode?.dispose();
    tfRotationAmountTextController?.dispose();

    cpInputCurrency2DecimalsModel.dispose();
    cpInputPressureMaxModel.dispose();
    cpInputFlowRateMinModel.dispose();
    cpInputPressureOperationModel.dispose();
    cpInputFlowRateOperationModel.dispose();
    cpInputPressureMinModel.dispose();
    cpInputFlowRateMaxModel.dispose();
    cpDropdownAssetsCouplingsModelsModel.dispose();
    tfWeightAmountFocusNode?.dispose();
    tfWeightAmountTextController?.dispose();
  }
}
