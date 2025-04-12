import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/settings/cp_settings_contract_show_card/cp_settings_contract_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_settings_company_contract_services_search_widget.dart'
    show PgSettingsCompanyContractServicesSearchWidget;
import 'package:flutter/material.dart';

class PgSettingsCompanyContractServicesSearchModel
    extends FlutterFlowModel<PgSettingsCompanyContractServicesSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpSettingsContractShowCard component.
  late CpSettingsContractShowCardModel cpSettingsContractShowCardModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpSettingsContractShowCardModel =
        createModel(context, () => CpSettingsContractShowCardModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpSettingsContractShowCardModel.dispose();
    cpInputTextModel.dispose();
  }
}
