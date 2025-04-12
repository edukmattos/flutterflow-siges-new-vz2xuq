import '/flutter_flow/flutter_flow_util.dart';
import '/pages/dashboard/cp_dd_systems_parent_multi_all/cp_dd_systems_parent_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_subs_multi_all/cp_dd_systems_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types/cp_dropdown_filters_units_types_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import '/pages/units/cp_dropdown_units_statuses/cp_dropdown_units_statuses_widget.dart';
import 'md_units_search_filters_widget.dart' show MdUnitsSearchFiltersWidget;
import 'package:flutter/material.dart';

class MdUnitsSearchFiltersModel
    extends FlutterFlowModel<MdUnitsSearchFiltersWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDdSystemsParentMultiAll component.
  late CpDdSystemsParentMultiAllModel cpDdSystemsParentMultiAllModel;
  // Model for cpDdSystemsSubsMultiAll component.
  late CpDdSystemsSubsMultiAllModel cpDdSystemsSubsMultiAllModel;
  // Model for cpDropdownFiltersUnitsTypesParent component.
  late CpDropdownFiltersUnitsTypesParentModel
      cpDropdownFiltersUnitsTypesParentModel;
  // Model for cpDropdownFiltersUnitsTypes component.
  late CpDropdownFiltersUnitsTypesModel cpDropdownFiltersUnitsTypesModel;
  // Model for cpDropdownUnitsStatuses component.
  late CpDropdownUnitsStatusesModel cpDropdownUnitsStatusesModel;
  // State field(s) for tf_code_description widget.
  FocusNode? tfCodeDescriptionFocusNode;
  TextEditingController? tfCodeDescriptionTextController;
  String? Function(BuildContext, String?)?
      tfCodeDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    cpDdSystemsParentMultiAllModel =
        createModel(context, () => CpDdSystemsParentMultiAllModel());
    cpDdSystemsSubsMultiAllModel =
        createModel(context, () => CpDdSystemsSubsMultiAllModel());
    cpDropdownFiltersUnitsTypesParentModel =
        createModel(context, () => CpDropdownFiltersUnitsTypesParentModel());
    cpDropdownFiltersUnitsTypesModel =
        createModel(context, () => CpDropdownFiltersUnitsTypesModel());
    cpDropdownUnitsStatusesModel =
        createModel(context, () => CpDropdownUnitsStatusesModel());
  }

  @override
  void dispose() {
    cpDdSystemsParentMultiAllModel.dispose();
    cpDdSystemsSubsMultiAllModel.dispose();
    cpDropdownFiltersUnitsTypesParentModel.dispose();
    cpDropdownFiltersUnitsTypesModel.dispose();
    cpDropdownUnitsStatusesModel.dispose();
    tfCodeDescriptionFocusNode?.dispose();
    tfCodeDescriptionTextController?.dispose();
  }
}
