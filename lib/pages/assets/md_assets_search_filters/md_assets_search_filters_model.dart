import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_dropdown_filters_assets_statuses/cp_dropdown_filters_assets_statuses_widget.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags/cp_dropdown_filters_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags_subs/cp_dropdown_filters_assets_tags_subs_widget.dart';
import '/pages/assets/cp_dropdown_filters_assets_types/cp_dropdown_filters_assets_types_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_assets_units/cp_dropdown_filters_assets_units_widget.dart';
import 'md_assets_search_filters_widget.dart' show MdAssetsSearchFiltersWidget;
import 'package:flutter/material.dart';

class MdAssetsSearchFiltersModel
    extends FlutterFlowModel<MdAssetsSearchFiltersWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownFiltersAssetsUnits component.
  late CpDropdownFiltersAssetsUnitsModel cpDropdownFiltersAssetsUnitsModel;
  // Model for cpDropdownFiltersAssetsTypes component.
  late CpDropdownFiltersAssetsTypesModel cpDropdownFiltersAssetsTypesModel;
  // Model for cpDropdownFiltersAssetsTags component.
  late CpDropdownFiltersAssetsTagsModel cpDropdownFiltersAssetsTagsModel;
  // Model for cpDropdownFiltersAssetsTagsSubs component.
  late CpDropdownFiltersAssetsTagsSubsModel
      cpDropdownFiltersAssetsTagsSubsModel;
  // Model for cpDropdownFiltersAssetsStatuses component.
  late CpDropdownFiltersAssetsStatusesModel
      cpDropdownFiltersAssetsStatusesModel;
  // State field(s) for tf_code_description widget.
  FocusNode? tfCodeDescriptionFocusNode;
  TextEditingController? tfCodeDescriptionTextController;
  String? Function(BuildContext, String?)?
      tfCodeDescriptionTextControllerValidator;
  String? _tfCodeDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'as5murjl' /* Obrigatório. */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cpDropdownFiltersAssetsUnitsModel =
        createModel(context, () => CpDropdownFiltersAssetsUnitsModel());
    cpDropdownFiltersAssetsTypesModel =
        createModel(context, () => CpDropdownFiltersAssetsTypesModel());
    cpDropdownFiltersAssetsTagsModel =
        createModel(context, () => CpDropdownFiltersAssetsTagsModel());
    cpDropdownFiltersAssetsTagsSubsModel =
        createModel(context, () => CpDropdownFiltersAssetsTagsSubsModel());
    cpDropdownFiltersAssetsStatusesModel =
        createModel(context, () => CpDropdownFiltersAssetsStatusesModel());
    tfCodeDescriptionTextControllerValidator =
        _tfCodeDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    cpDropdownFiltersAssetsUnitsModel.dispose();
    cpDropdownFiltersAssetsTypesModel.dispose();
    cpDropdownFiltersAssetsTagsModel.dispose();
    cpDropdownFiltersAssetsTagsSubsModel.dispose();
    cpDropdownFiltersAssetsStatusesModel.dispose();
    tfCodeDescriptionFocusNode?.dispose();
    tfCodeDescriptionTextController?.dispose();
  }
}
