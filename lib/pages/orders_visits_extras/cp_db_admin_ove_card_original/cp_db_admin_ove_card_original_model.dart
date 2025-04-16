import '/backend/schema/structs/index.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_button1/cp_o_v_e_button1_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_processing/cp_o_v_e_processing_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_extras/cp_ove_menu_extras_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_options/cp_ove_menu_options_widget.dart';
import 'cp_db_admin_ove_card_original_widget.dart'
    show CpDbAdminOveCardOriginalWidget;
import 'package:flutter/material.dart';

class CpDbAdminOveCardOriginalModel
    extends FlutterFlowModel<CpDbAdminOveCardOriginalWidget> {
  ///  Local state fields for this component.

  List<DtOrderVisitExtraTeamUserStruct> lpsvOVETeamUsers = [];
  void addToLpsvOVETeamUsers(DtOrderVisitExtraTeamUserStruct item) =>
      lpsvOVETeamUsers.add(item);
  void removeFromLpsvOVETeamUsers(DtOrderVisitExtraTeamUserStruct item) =>
      lpsvOVETeamUsers.remove(item);
  void removeAtIndexFromLpsvOVETeamUsers(int index) =>
      lpsvOVETeamUsers.removeAt(index);
  void insertAtIndexInLpsvOVETeamUsers(
          int index, DtOrderVisitExtraTeamUserStruct item) =>
      lpsvOVETeamUsers.insert(index, item);
  void updateLpsvOVETeamUsersAtIndex(
          int index, Function(DtOrderVisitExtraTeamUserStruct) updateFn) =>
      lpsvOVETeamUsers[index] = updateFn(lpsvOVETeamUsers[index]);

  ///  State fields for stateful widgets in this component.

  // Model for cpOVEButton1 component.
  late CpOVEButton1Model cpOVEButton1Model;
  // Model for cpOveMenuExtras component.
  late CpOveMenuExtrasModel cpOveMenuExtrasModel;
  // Model for cpOVEProcessing component.
  late CpOVEProcessingModel cpOVEProcessingModel;
  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOveMenuOptions component.
  late CpOveMenuOptionsModel cpOveMenuOptionsModel;

  @override
  void initState(BuildContext context) {
    cpOVEButton1Model = createModel(context, () => CpOVEButton1Model());
    cpOveMenuExtrasModel = createModel(context, () => CpOveMenuExtrasModel());
    cpOVEProcessingModel = createModel(context, () => CpOVEProcessingModel());
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOveMenuOptionsModel = createModel(context, () => CpOveMenuOptionsModel());
  }

  @override
  void dispose() {
    cpOVEButton1Model.dispose();
    cpOveMenuExtrasModel.dispose();
    cpOVEProcessingModel.dispose();
    cpUserPicProfileModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOveMenuOptionsModel.dispose();
  }
}
