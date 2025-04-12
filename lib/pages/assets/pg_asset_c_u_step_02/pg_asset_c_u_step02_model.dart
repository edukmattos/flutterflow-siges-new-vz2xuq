import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_priorities/cp_dropdown_assets_priorities_widget.dart';
import '/pages/assets/cp_dropdown_assets_statuses/cp_dropdown_assets_statuses_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags_subs/cp_dropdown_assets_tags_subs_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_currency2_decimals/cp_input_currency2_decimals_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_asset_c_u_step02_widget.dart' show PgAssetCUStep02Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PgAssetCUStep02Model extends FlutterFlowModel<PgAssetCUStep02Widget> {
  ///  Local state fields for this page.

  DateTime? lpsvStatusAt;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpAssetCreateCard component.
  late CpAssetCreateCardModel cpAssetCreateCardModel;
  // State field(s) for tf_brand widget.
  FocusNode? tfBrandFocusNode;
  TextEditingController? tfBrandTextController;
  String? Function(BuildContext, String?)? tfBrandTextControllerValidator;
  String? _tfBrandTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3ci76pek' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_model widget.
  FocusNode? tfModelFocusNode;
  TextEditingController? tfModelTextController;
  String? Function(BuildContext, String?)? tfModelTextControllerValidator;
  String? _tfModelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '733b3y1k' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_serial widget.
  FocusNode? tfSerialFocusNode;
  TextEditingController? tfSerialTextController;
  String? Function(BuildContext, String?)? tfSerialTextControllerValidator;
  String? _tfSerialTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ngrkb5rh' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Model for cpDropdownAssetsTagsSubs component.
  late CpDropdownAssetsTagsSubsModel cpDropdownAssetsTagsSubsModel;
  // Model for cpDropdownAssetsPriorities component.
  late CpDropdownAssetsPrioritiesModel cpDropdownAssetsPrioritiesModel;
  // State field(s) for tf_location widget.
  FocusNode? tfLocationFocusNode;
  TextEditingController? tfLocationTextController;
  String? Function(BuildContext, String?)? tfLocationTextControllerValidator;
  // Model for cpDropdownAssetsStatuses component.
  late CpDropdownAssetsStatusesModel cpDropdownAssetsStatusesModel;
  // State field(s) for tf_status_at widget.
  FocusNode? tfStatusAtFocusNode;
  TextEditingController? tfStatusAtTextController;
  final tfStatusAtMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? tfStatusAtTextControllerValidator;
  String? _tfStatusAtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7criomz9' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_comments widget.
  FocusNode? tfCommentsFocusNode;
  TextEditingController? tfCommentsTextController;
  String? Function(BuildContext, String?)? tfCommentsTextControllerValidator;
  // State field(s) for tf_aquisition_at widget.
  FocusNode? tfAquisitionAtFocusNode;
  TextEditingController? tfAquisitionAtTextController;
  final tfAquisitionAtMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      tfAquisitionAtTextControllerValidator;
  String? _tfAquisitionAtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2mamc0uj' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpInputAcquisitionValue.
  late CpInputCurrency2DecimalsModel cpInputAcquisitionValueModel;
  // Stores action output result for [Custom Action - caCheckDateBrStringIsValid] action in Button widget.
  bool? resStatusAtIsValid;
  // Stores action output result for [Custom Action - caCheckDateBrStringIsValid] action in Button widget.
  bool? resAcquisitionAtIsValid;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VUnitsRow>? resUnit;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CfgAssetsTagsRow>? resAssetTag;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CfgAssetsTagsSubsRow>? resAssetTagSub;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CfgAssetsStatusesRow>? resAssetStatus;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CfgAssetsPrioritiesRow>? resAssetPriority;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AssetsRow? resAssetCreated;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpAssetCreateCardModel =
        createModel(context, () => CpAssetCreateCardModel());
    tfBrandTextControllerValidator = _tfBrandTextControllerValidator;
    tfModelTextControllerValidator = _tfModelTextControllerValidator;
    tfSerialTextControllerValidator = _tfSerialTextControllerValidator;
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownAssetsTagsSubsModel =
        createModel(context, () => CpDropdownAssetsTagsSubsModel());
    cpDropdownAssetsPrioritiesModel =
        createModel(context, () => CpDropdownAssetsPrioritiesModel());
    cpDropdownAssetsStatusesModel =
        createModel(context, () => CpDropdownAssetsStatusesModel());
    tfStatusAtTextControllerValidator = _tfStatusAtTextControllerValidator;
    tfAquisitionAtTextControllerValidator =
        _tfAquisitionAtTextControllerValidator;
    cpInputAcquisitionValueModel =
        createModel(context, () => CpInputCurrency2DecimalsModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpAssetCreateCardModel.dispose();
    tfBrandFocusNode?.dispose();
    tfBrandTextController?.dispose();

    tfModelFocusNode?.dispose();
    tfModelTextController?.dispose();

    tfSerialFocusNode?.dispose();
    tfSerialTextController?.dispose();

    cpDropdownUnitsModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownAssetsTagsSubsModel.dispose();
    cpDropdownAssetsPrioritiesModel.dispose();
    tfLocationFocusNode?.dispose();
    tfLocationTextController?.dispose();

    cpDropdownAssetsStatusesModel.dispose();
    tfStatusAtFocusNode?.dispose();
    tfStatusAtTextController?.dispose();

    tfCommentsFocusNode?.dispose();
    tfCommentsTextController?.dispose();

    tfAquisitionAtFocusNode?.dispose();
    tfAquisitionAtTextController?.dispose();

    cpInputAcquisitionValueModel.dispose();
  }
}
