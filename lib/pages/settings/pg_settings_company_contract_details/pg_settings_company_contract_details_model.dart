import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/cp_settings_company_contract_show_card/cp_settings_company_contract_show_card_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_settings_company_contract_details_widget.dart'
    show PgSettingsCompanyContractDetailsWidget;
import 'package:flutter/material.dart';

class PgSettingsCompanyContractDetailsModel
    extends FlutterFlowModel<PgSettingsCompanyContractDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpSettingsCompanyShowCard component.
  late CpSettingsCompanyShowCardModel cpSettingsCompanyShowCardModel;
  // Model for cpSettingsCompanyContractShowCard component.
  late CpSettingsCompanyContractShowCardModel
      cpSettingsCompanyContractShowCardModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VContractsManagersRow>? resContractManager;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpSettingsCompanyShowCardModel =
        createModel(context, () => CpSettingsCompanyShowCardModel());
    cpSettingsCompanyContractShowCardModel =
        createModel(context, () => CpSettingsCompanyContractShowCardModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpSettingsCompanyShowCardModel.dispose();
    cpSettingsCompanyContractShowCardModel.dispose();
    tabBarController?.dispose();
    cpInputTextModel.dispose();
    cpMenuModel.dispose();
  }
}
