import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_card/cp_o_v_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_o_v_show_widget.dart' show PgOVShowWidget;
import 'package:flutter/material.dart';

class PgOVShowModel extends FlutterFlowModel<PgOVShowWidget> {
  ///  Local state fields for this page.

  int? lpsvOStatusId = 5;

  List<DtUserStruct> lpsvTeamUsersToAdd = [];
  void addToLpsvTeamUsersToAdd(DtUserStruct item) =>
      lpsvTeamUsersToAdd.add(item);
  void removeFromLpsvTeamUsersToAdd(DtUserStruct item) =>
      lpsvTeamUsersToAdd.remove(item);
  void removeAtIndexFromLpsvTeamUsersToAdd(int index) =>
      lpsvTeamUsersToAdd.removeAt(index);
  void insertAtIndexInLpsvTeamUsersToAdd(int index, DtUserStruct item) =>
      lpsvTeamUsersToAdd.insert(index, item);
  void updateLpsvTeamUsersToAddAtIndex(
          int index, Function(DtUserStruct) updateFn) =>
      lpsvTeamUsersToAdd[index] = updateFn(lpsvTeamUsersToAdd[index]);

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVCard component.
  late CpOVCardModel cpOVCardModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOVVehicles;
  // Model for cpInputAssetCode.
  late CpInputIntegerModel cpInputAssetCodeModel;
  // Stores action output result for [Backend Call - API (apiAssetByCodeZeroAndUnitId)] action in IconButton widget.
  ApiCallResponse? resAssetsZeros;
  // Stores action output result for [Backend Call - API (apiAssetByCode)] action in IconButton widget.
  ApiCallResponse? resAsset;
  // Stores action output result for [Action Block - abOVSelectedAssetCUD] action in cpAssetListItemCard widget.
  bool? resOVAssetCUD;
  // Model for cpInputServiceDescription.
  late CpInputTextModel cpInputServiceDescriptionModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOVServices;
  // Stores action output result for [Backend Call - API (apiSearchServicesByContractId)] action in IconButton widget.
  ApiCallResponse? resContractServices;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVCardModel = createModel(context, () => CpOVCardModel());
    cpInputAssetCodeModel = createModel(context, () => CpInputIntegerModel());
    cpInputServiceDescriptionModel =
        createModel(context, () => CpInputTextModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOVCardModel.dispose();
    cpInputAssetCodeModel.dispose();
    cpInputServiceDescriptionModel.dispose();
  }
}
