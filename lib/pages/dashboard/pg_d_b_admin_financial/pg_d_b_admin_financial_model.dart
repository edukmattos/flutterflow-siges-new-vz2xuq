import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_admin_nav_bar/cp_d_b_admin_nav_bar_widget.dart';
import '/pages/orders_parents/cp_dropdown_contracts/cp_dropdown_contracts_widget.dart';
import '/pages/orders_parents/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_d_b_admin_financial_widget.dart' show PgDBAdminFinancialWidget;
import 'package:flutter/material.dart';

class PgDBAdminFinancialModel
    extends FlutterFlowModel<PgDBAdminFinancialWidget> {
  ///  Local state fields for this page.

  int? lpsvProcessingId;

  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for cpDropdownContracts component.
  late CpDropdownContractsModel cpDropdownContractsModel;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel1;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel2;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel3;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel4;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel5;
  // Model for cpDBAdminNavBar component.
  late CpDBAdminNavBarModel cpDBAdminNavBarModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpDropdownContractsModel =
        createModel(context, () => CpDropdownContractsModel());
    cpOVProcessingCardModel1 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel2 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel3 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel4 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel5 =
        createModel(context, () => CpOVProcessingCardModel());
    cpDBAdminNavBarModel = createModel(context, () => CpDBAdminNavBarModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpDropdownContractsModel.dispose();
    cpOVProcessingCardModel1.dispose();
    cpOVProcessingCardModel2.dispose();
    cpOVProcessingCardModel3.dispose();
    cpOVProcessingCardModel4.dispose();
    cpOVProcessingCardModel5.dispose();
    cpDBAdminNavBarModel.dispose();
    cpMenuModel.dispose();
  }
}
