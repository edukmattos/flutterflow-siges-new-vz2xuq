import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/dashboard/cp_d_b_user_nav_bar/cp_d_b_user_nav_bar_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'pg_d_b_user_o_v_widget.dart' show PgDBUserOVWidget;
import 'package:flutter/material.dart';

class PgDBUserOVModel extends FlutterFlowModel<PgDBUserOVWidget> {
  ///  Local state fields for this page.

  int? lpsvOVProcessingId = 1;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? painelAtendimentosUsuarioController;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel1;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel2;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel3;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel4;
  // Model for cpDBUserNavBar component.
  late CpDBUserNavBarModel cpDBUserNavBarModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVProcessingModel1 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel2 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel3 = createModel(context, () => CpOVProcessingModel());
    cpOVProcessingModel4 = createModel(context, () => CpOVProcessingModel());
    cpDBUserNavBarModel = createModel(context, () => CpDBUserNavBarModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    painelAtendimentosUsuarioController?.finish();
    cpDBUserAvailableModel.dispose();
    cpOVProcessingModel1.dispose();
    cpOVProcessingModel2.dispose();
    cpOVProcessingModel3.dispose();
    cpOVProcessingModel4.dispose();
    cpDBUserNavBarModel.dispose();
    cpMenuModel.dispose();
  }
}
