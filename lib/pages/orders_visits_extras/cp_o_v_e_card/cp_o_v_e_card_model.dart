import '/backend/supabase/supabase.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/orders_parents/cp_o_button/cp_o_button_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/orders_parents/cp_o_v_values/cp_o_v_values_widget.dart';
import 'cp_o_v_e_card_widget.dart' show CpOVECardWidget;
import 'package:flutter/material.dart';

class CpOVECardModel extends FlutterFlowModel<CpOVECardWidget> {
  ///  Local state fields for this component.

  bool? lcsvImgToUpload = false;

  String? lcsvFilePath;

  bool lcsvIsThereFileName = false;

  String? lcsvFileNameToDelete;

  ///  State fields for stateful widgets in this component.

  // Model for cpOButtonDisabled component.
  late CpOButtonDisabledModel cpOButtonDisabledModel;
  // Model for cpOButton component.
  late CpOButtonModel cpOButtonModel;
  // Model for cpOProgress component.
  late CpOProgressModel cpOProgressModel;
  // Model for cpOStatus component.
  late CpOStatusModel cpOStatusModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<UsersRow>? resUserTeam;
  // Model for cpDropdownUsersDepartment component.
  late CpDropdownUsersDepartmentModel cpDropdownUsersDepartmentModel;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowedClose;
  // Stores action output result for [Action Block - abOVSelectedVehiclesCheck] action in Button widget.
  bool? resOVVehiclesCheckClose;
  // Model for cpOVValues component.
  late CpOVValuesModel cpOVValuesModel;

  @override
  void initState(BuildContext context) {
    cpOButtonDisabledModel =
        createModel(context, () => CpOButtonDisabledModel());
    cpOButtonModel = createModel(context, () => CpOButtonModel());
    cpOProgressModel = createModel(context, () => CpOProgressModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
    cpDropdownUsersDepartmentModel =
        createModel(context, () => CpDropdownUsersDepartmentModel());
    cpOVValuesModel = createModel(context, () => CpOVValuesModel());
  }

  @override
  void dispose() {
    cpOButtonDisabledModel.dispose();
    cpOButtonModel.dispose();
    cpOProgressModel.dispose();
    cpOStatusModel.dispose();
    cpOVProcessingModel.dispose();
    cpDropdownUsersDepartmentModel.dispose();
    cpOVValuesModel.dispose();
  }
}
