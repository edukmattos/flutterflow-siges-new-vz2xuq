import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_available_mono/cp_dd_o_types_subs_available_mono_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_causes_reasons/cp_dropdown_orders_causes_reasons_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import 'md_ove_menu_processing_widget.dart' show MdOveMenuProcessingWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MdOveMenuProcessingModel
    extends FlutterFlowModel<MdOveMenuProcessingWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Action Block - abGuardian] action in mdOveMenuProcessing widget.
  bool? isAllowed;
  // State field(s) for tf_o_mask widget.
  FocusNode? tfOMaskFocusNode;
  TextEditingController? tfOMaskTextController;
  String? Function(BuildContext, String?)? tfOMaskTextControllerValidator;
  String? _tfOMaskTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zrvxt36x' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // State field(s) for tf_requeted_services widget.
  FocusNode? tfRequetedServicesFocusNode;
  TextEditingController? tfRequetedServicesTextController;
  String? Function(BuildContext, String?)?
      tfRequetedServicesTextControllerValidator;
  String? _tfRequetedServicesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3e5zsip6' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownOrdersTypes component.
  late CpDropdownOrdersTypesModel cpDropdownOrdersTypesModel;
  // Model for cpDdOTypesSubsAvailableMono component.
  late CpDdOTypesSubsAvailableMonoModel cpDdOTypesSubsAvailableMonoModel;
  // Model for cpDropdownOrdersCausesReasons component.
  late CpDropdownOrdersCausesReasonsModel cpDropdownOrdersCausesReasonsModel;
  // Model for cpDropdownOrdersPriorities component.
  late CpDropdownOrdersPrioritiesModel cpDropdownOrdersPrioritiesModel;
  // State field(s) for tf_started_at widget.
  FocusNode? tfStartedAtFocusNode;
  TextEditingController? tfStartedAtTextController;
  final tfStartedAtMask = MaskTextInputFormatter(mask: '##/##/#### ##:##');
  String? Function(BuildContext, String?)? tfStartedAtTextControllerValidator;
  String? _tfStartedAtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dvzau0wr' /* Obrigatório. */,
      );
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for tf_ended_at widget.
  FocusNode? tfEndedAtFocusNode;
  TextEditingController? tfEndedAtTextController;
  final tfEndedAtMask = MaskTextInputFormatter(mask: '##/##/#### ##:##');
  String? Function(BuildContext, String?)? tfEndedAtTextControllerValidator;
  String? _tfEndedAtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kvnvb4k9' /* Obrigatório. */,
      );
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for tf_disapproved_comments widget.
  FocusNode? tfDisapprovedCommentsFocusNode;
  TextEditingController? tfDisapprovedCommentsTextController;
  String? Function(BuildContext, String?)?
      tfDisapprovedCommentsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tfOMaskTextControllerValidator = _tfOMaskTextControllerValidator;
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    tfRequetedServicesTextControllerValidator =
        _tfRequetedServicesTextControllerValidator;
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpDdOTypesSubsAvailableMonoModel =
        createModel(context, () => CpDdOTypesSubsAvailableMonoModel());
    cpDropdownOrdersCausesReasonsModel =
        createModel(context, () => CpDropdownOrdersCausesReasonsModel());
    cpDropdownOrdersPrioritiesModel =
        createModel(context, () => CpDropdownOrdersPrioritiesModel());
    tfStartedAtTextControllerValidator = _tfStartedAtTextControllerValidator;
    tfEndedAtTextControllerValidator = _tfEndedAtTextControllerValidator;
  }

  @override
  void dispose() {
    tfOMaskFocusNode?.dispose();
    tfOMaskTextController?.dispose();

    cpDropdownUnitsModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    tfRequetedServicesFocusNode?.dispose();
    tfRequetedServicesTextController?.dispose();

    cpDropdownOrdersTypesModel.dispose();
    cpDdOTypesSubsAvailableMonoModel.dispose();
    cpDropdownOrdersCausesReasonsModel.dispose();
    cpDropdownOrdersPrioritiesModel.dispose();
    tfStartedAtFocusNode?.dispose();
    tfStartedAtTextController?.dispose();

    tfEndedAtFocusNode?.dispose();
    tfEndedAtTextController?.dispose();

    tfDisapprovedCommentsFocusNode?.dispose();
    tfDisapprovedCommentsTextController?.dispose();
  }
}
