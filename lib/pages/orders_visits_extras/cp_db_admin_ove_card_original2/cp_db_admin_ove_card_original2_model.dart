import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_visits_extras/cp_o_v_e_button1/cp_o_v_e_button1_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_processing/cp_o_v_e_processing_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_extras/cp_ove_menu_extras_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_options/cp_ove_menu_options_widget.dart';
import 'cp_db_admin_ove_card_original2_widget.dart'
    show CpDbAdminOveCardOriginal2Widget;
import 'package:flutter/material.dart';

class CpDbAdminOveCardOriginal2Model
    extends FlutterFlowModel<CpDbAdminOveCardOriginal2Widget> {
  ///  Local state fields for this component.

  List<DtOrderVisitExtraTeamUserStruct> lcsvOVETeamUsers = [];
  void addToLcsvOVETeamUsers(DtOrderVisitExtraTeamUserStruct item) =>
      lcsvOVETeamUsers.add(item);
  void removeFromLcsvOVETeamUsers(DtOrderVisitExtraTeamUserStruct item) =>
      lcsvOVETeamUsers.remove(item);
  void removeAtIndexFromLcsvOVETeamUsers(int index) =>
      lcsvOVETeamUsers.removeAt(index);
  void insertAtIndexInLcsvOVETeamUsers(
          int index, DtOrderVisitExtraTeamUserStruct item) =>
      lcsvOVETeamUsers.insert(index, item);
  void updateLcsvOVETeamUsersAtIndex(
          int index, Function(DtOrderVisitExtraTeamUserStruct) updateFn) =>
      lcsvOVETeamUsers[index] = updateFn(lcsvOVETeamUsers[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (apiTeamUsersByOVEId)] action in cpDbAdminOveCardOriginal2 widget.
  ApiCallResponse? resOVETeamUsers;
  // Model for cpOVEButton1 component.
  late CpOVEButton1Model cpOVEButton1Model;
  // Model for cpOveMenuExtras component.
  late CpOveMenuExtrasModel cpOveMenuExtrasModel;
  // Model for cpOVEProcessing component.
  late CpOVEProcessingModel cpOVEProcessingModel;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOveMenuOptions component.
  late CpOveMenuOptionsModel cpOveMenuOptionsModel;

  @override
  void initState(BuildContext context) {
    cpOVEButton1Model = createModel(context, () => CpOVEButton1Model());
    cpOveMenuExtrasModel = createModel(context, () => CpOveMenuExtrasModel());
    cpOVEProcessingModel = createModel(context, () => CpOVEProcessingModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOveMenuOptionsModel = createModel(context, () => CpOveMenuOptionsModel());
  }

  @override
  void dispose() {
    cpOVEButton1Model.dispose();
    cpOveMenuExtrasModel.dispose();
    cpOVEProcessingModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOveMenuOptionsModel.dispose();
  }
}
