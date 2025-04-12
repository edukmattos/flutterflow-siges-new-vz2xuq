import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_systems_by_parent/cp_dropdown_systems_by_parent_widget.dart';
import '/pages/components/cp_dropdown_systems_parent/cp_dropdown_systems_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_by_parent/cp_dropdown_units_types_by_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_parent/cp_dropdown_units_types_parent_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_dropdown_units_statuses/cp_dropdown_units_statuses_widget.dart';
import '/index.dart';
import 'pg_unit_create_ori_widget.dart' show PgUnitCreateOriWidget;
import 'package:flutter/material.dart';

class PgUnitCreateOriModel extends FlutterFlowModel<PgUnitCreateOriWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
        '6k6dnehy' /* Obrigatório. */,
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
        'l73azyub' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownUnitsStatuses component.
  late CpDropdownUnitsStatusesModel cpDropdownUnitsStatusesModel;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for tf_streetComplement widget.
  FocusNode? tfStreetComplementFocusNode;
  TextEditingController? tfStreetComplementTextController;
  String? Function(BuildContext, String?)?
      tfStreetComplementTextControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UnitsRow? resUnitCreated;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
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
    cpDropdownSystemsParentModel.dispose();
    cpDropdownSystemsByParentModel.dispose();
    cpDropdownUnitsTypesParentModel.dispose();
    cpDropdownUnitsTypesByParentModel.dispose();
    tfCodeFocusNode?.dispose();
    tfCodeTextController?.dispose();

    tfDescriptionFocusNode?.dispose();
    tfDescriptionTextController?.dispose();

    cpDropdownUnitsStatusesModel.dispose();
    tfStreetComplementFocusNode?.dispose();
    tfStreetComplementTextController?.dispose();

    cpMenuModel.dispose();
  }
}
