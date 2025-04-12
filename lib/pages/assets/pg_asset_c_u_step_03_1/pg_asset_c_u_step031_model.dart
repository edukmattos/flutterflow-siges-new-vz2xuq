import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_currency2_decimals/cp_input_currency2_decimals_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_asset_c_u_step031_widget.dart' show PgAssetCUStep031Widget;
import 'package:flutter/material.dart';

class PgAssetCUStep031Model extends FlutterFlowModel<PgAssetCUStep031Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpAssetCreateCard component.
  late CpAssetCreateCardModel cpAssetCreateCardModel;
  // Model for cpInputPowerAmount.
  late CpInputCurrency2DecimalsModel cpInputPowerAmountModel;
  // State field(s) for tf_voltage widget.
  FocusNode? tfVoltageFocusNode;
  TextEditingController? tfVoltageTextController;
  String? Function(BuildContext, String?)? tfVoltageTextControllerValidator;
  String? _tfVoltageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ccca8v4j' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_amperage widget.
  FocusNode? tfAmperageFocusNode;
  TextEditingController? tfAmperageTextController;
  String? Function(BuildContext, String?)? tfAmperageTextControllerValidator;
  String? _tfAmperageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lnah084m' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_poles_amount widget.
  FocusNode? tfPolesAmountFocusNode;
  TextEditingController? tfPolesAmountTextController;
  String? Function(BuildContext, String?)? tfPolesAmountTextControllerValidator;
  // State field(s) for tf_rotation_amount widget.
  FocusNode? tfRotationAmountFocusNode;
  TextEditingController? tfRotationAmountTextController;
  String? Function(BuildContext, String?)?
      tfRotationAmountTextControllerValidator;
  // Model for cpInputServiceFactorAmount.
  late CpInputCurrency2DecimalsModel cpInputServiceFactorAmountModel;
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
    cpInputPowerAmountModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
    tfVoltageTextControllerValidator = _tfVoltageTextControllerValidator;
    tfAmperageTextControllerValidator = _tfAmperageTextControllerValidator;
    cpInputServiceFactorAmountModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpAssetCreateCardModel.dispose();
    cpInputPowerAmountModel.dispose();
    tfVoltageFocusNode?.dispose();
    tfVoltageTextController?.dispose();

    tfAmperageFocusNode?.dispose();
    tfAmperageTextController?.dispose();

    tfPolesAmountFocusNode?.dispose();
    tfPolesAmountTextController?.dispose();

    tfRotationAmountFocusNode?.dispose();
    tfRotationAmountTextController?.dispose();

    cpInputServiceFactorAmountModel.dispose();
    tfWeightAmountFocusNode?.dispose();
    tfWeightAmountTextController?.dispose();
  }
}
