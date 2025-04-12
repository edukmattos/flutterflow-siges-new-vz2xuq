import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_systems_by_parent/cp_dropdown_systems_by_parent_widget.dart';
import '/pages/components/cp_dropdown_systems_parent/cp_dropdown_systems_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_by_parent/cp_dropdown_units_types_by_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_parent/cp_dropdown_units_types_parent_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_dropdown_units_statuses/cp_dropdown_units_statuses_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import '/index.dart';
import 'pg_unit_update_data_widget.dart' show PgUnitUpdateDataWidget;
import 'package:flutter/material.dart';

class PgUnitUpdateDataModel extends FlutterFlowModel<PgUnitUpdateDataWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpUnitCardShow component.
  late CpUnitCardShowModel cpUnitCardShowModel;
  // Model for cpDropdownSystemsParent component.
  late CpDropdownSystemsParentModel cpDropdownSystemsParentModel;
  // Model for cpDropdownSystemsByParent component.
  late CpDropdownSystemsByParentModel cpDropdownSystemsByParentModel;
  // Model for cpDropdownUnitsTypesParent component.
  late CpDropdownUnitsTypesParentModel cpDropdownUnitsTypesParentModel;
  // Model for cpDropdownUnitsTypesByParent component.
  late CpDropdownUnitsTypesByParentModel cpDropdownUnitsTypesByParentModel;
  // State field(s) for tf_code widget.
  FocusNode? tfCodeFocusNode;
  TextEditingController? tfCodeTextController;
  String? Function(BuildContext, String?)? tfCodeTextControllerValidator;
  String? _tfCodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'feqyu42y' /* Obrigatório. */,
      );
    }

    return null;
  }

  // State field(s) for tf_description widget.
  FocusNode? tfDescriptionFocusNode;
  TextEditingController? tfDescriptionTextController;
  String? Function(BuildContext, String?)? tfDescriptionTextControllerValidator;
  String? _tfDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3y2qswym' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownUnitsStatuses component.
  late CpDropdownUnitsStatusesModel cpDropdownUnitsStatusesModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpUnitCardShowModel = createModel(context, () => CpUnitCardShowModel());
    cpDropdownSystemsParentModel =
        createModel(context, () => CpDropdownSystemsParentModel());
    cpDropdownSystemsByParentModel =
        createModel(context, () => CpDropdownSystemsByParentModel());
    cpDropdownUnitsTypesParentModel =
        createModel(context, () => CpDropdownUnitsTypesParentModel());
    cpDropdownUnitsTypesByParentModel =
        createModel(context, () => CpDropdownUnitsTypesByParentModel());
    tfCodeTextControllerValidator = _tfCodeTextControllerValidator;
    tfDescriptionTextControllerValidator =
        _tfDescriptionTextControllerValidator;
    cpDropdownUnitsStatusesModel =
        createModel(context, () => CpDropdownUnitsStatusesModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpUnitCardShowModel.dispose();
    cpDropdownSystemsParentModel.dispose();
    cpDropdownSystemsByParentModel.dispose();
    cpDropdownUnitsTypesParentModel.dispose();
    cpDropdownUnitsTypesByParentModel.dispose();
    tfCodeFocusNode?.dispose();
    tfCodeTextController?.dispose();

    tfDescriptionFocusNode?.dispose();
    tfDescriptionTextController?.dispose();

    cpDropdownUnitsStatusesModel.dispose();
    cpMenuModel.dispose();
  }
}
