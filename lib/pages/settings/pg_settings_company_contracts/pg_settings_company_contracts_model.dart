import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_settings_company_contracts_widget.dart'
    show PgSettingsCompanyContractsWidget;
import 'package:flutter/material.dart';

class PgSettingsCompanyContractsModel
    extends FlutterFlowModel<PgSettingsCompanyContractsWidget> {
  ///  Local state fields for this page.

  List<DtContractStruct> lpsvContracts = [];
  void addToLpsvContracts(DtContractStruct item) => lpsvContracts.add(item);
  void removeFromLpsvContracts(DtContractStruct item) =>
      lpsvContracts.remove(item);
  void removeAtIndexFromLpsvContracts(int index) =>
      lpsvContracts.removeAt(index);
  void insertAtIndexInLpsvContracts(int index, DtContractStruct item) =>
      lpsvContracts.insert(index, item);
  void updateLpsvContractsAtIndex(
          int index, Function(DtContractStruct) updateFn) =>
      lpsvContracts[index] = updateFn(lpsvContracts[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apiContractsByClientCompanyId)] action in pgSettingsCompanyContracts widget.
  ApiCallResponse? resClientContracts;
  // Stores action output result for [Backend Call - API (apiContractsByProviderCompanyId)] action in pgSettingsCompanyContracts widget.
  ApiCallResponse? resProviderContracts;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpSettingsCompanyShowCard component.
  late CpSettingsCompanyShowCardModel cpSettingsCompanyShowCardModel;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpSettingsCompanyShowCardModel =
        createModel(context, () => CpSettingsCompanyShowCardModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpSettingsCompanyShowCardModel.dispose();
  }
}
