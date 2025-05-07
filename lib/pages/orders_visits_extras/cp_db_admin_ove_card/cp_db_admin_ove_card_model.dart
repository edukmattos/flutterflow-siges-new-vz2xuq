import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_button1/cp_o_v_e_button1_widget.dart';
import '/pages/orders_visits_extras/cp_o_v_e_processing/cp_o_v_e_processing_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_extras/cp_ove_menu_extras_widget.dart';
import '/pages/orders_visits_extras/cp_ove_menu_options/cp_ove_menu_options_widget.dart';
import 'cp_db_admin_ove_card_widget.dart' show CpDbAdminOveCardWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpDbAdminOveCardModel extends FlutterFlowModel<CpDbAdminOveCardWidget> {
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

  int? lcsvTeamLeaderId;

  ///  State fields for stateful widgets in this component.

  // Model for cpOVEButton1 component.
  late CpOVEButton1Model cpOVEButton1Model;
  // Model for cpOveMenuExtras component.
  late CpOveMenuExtrasModel cpOveMenuExtrasModel;
  // Model for cpOVEProcessing component.
  late CpOVEProcessingModel cpOVEProcessingModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VUsersRow>? resTeamLeader;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersVisitsExtrasRow>? resOVEUpdated;
  // Stores action output result for [Backend Call - API (apiTeamUsersByOVEId)] action in Button widget.
  ApiCallResponse? apiResulthyl;
  Completer<List<VOrdersVisitsExtrasTeamsRow>>? requestCompleter;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpDropdownUsersDepartment component.
  late CpDropdownUsersDepartmentModel cpDropdownUsersDepartmentModel;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  OrdersVisitsExtrasTeamsRow? resTeamUserAdded;
  // Model for cpOveMenuOptions component.
  late CpOveMenuOptionsModel cpOveMenuOptionsModel;

  @override
  void initState(BuildContext context) {
    cpOVEButton1Model = createModel(context, () => CpOVEButton1Model());
    cpOveMenuExtrasModel = createModel(context, () => CpOveMenuExtrasModel());
    cpOVEProcessingModel = createModel(context, () => CpOVEProcessingModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpDropdownUsersDepartmentModel =
        createModel(context, () => CpDropdownUsersDepartmentModel());
    cpOveMenuOptionsModel = createModel(context, () => CpOveMenuOptionsModel());
  }

  @override
  void dispose() {
    cpOVEButton1Model.dispose();
    cpOveMenuExtrasModel.dispose();
    cpOVEProcessingModel.dispose();
    cpCompanyLogoModel.dispose();
    cpDropdownUsersDepartmentModel.dispose();
    cpOveMenuOptionsModel.dispose();
  }

  /// Action blocks.
  Future aBcLOveSelectedTeamUsers(
    BuildContext context, {
    required int? abOveId,
  }) async {
    ApiCallResponse? resOVETeamUsers1;

    resOVETeamUsers1 =
        await ApiOrdersVisitsExtrasTeamsGroup.apiTeamUsersByOVEIdCall.call(
      apiUrl: FFDevEnvironmentValues().envApiUrl,
      apiKey: FFDevEnvironmentValues().envApiKey,
      accessToken: currentJwtToken,
      oveId: abOveId,
    );

    if ((resOVETeamUsers1.succeeded ?? true)) {
      lcsvOVETeamUsers = ((resOVETeamUsers1.jsonBody ?? '')
              .toList()
              .map<DtOrderVisitExtraTeamUserStruct?>(
                  DtOrderVisitExtraTeamUserStruct.maybeFromMap)
              .toList() as Iterable<DtOrderVisitExtraTeamUserStruct?>)
          .withoutNulls
          .toList()
          .cast<DtOrderVisitExtraTeamUserStruct>();
    }
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
