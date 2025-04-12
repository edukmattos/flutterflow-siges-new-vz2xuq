import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/settings/cp_settings_company_show_card/cp_settings_company_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_settings_company_widget.dart' show PgSettingsCompanyWidget;
import 'package:flutter/material.dart';

class PgSettingsCompanyModel extends FlutterFlowModel<PgSettingsCompanyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpSettingsCompanyShowCard component.
  late CpSettingsCompanyShowCardModel cpSettingsCompanyShowCardModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpSettingsCompanyShowCardModel =
        createModel(context, () => CpSettingsCompanyShowCardModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpSettingsCompanyShowCardModel.dispose();
    cpMenuModel.dispose();
  }
}
