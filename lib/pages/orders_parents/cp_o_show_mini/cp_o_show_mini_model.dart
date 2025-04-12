import '/components/cp_company_logo_widget.dart';
import '/components/cp_o_card_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_parents/cp_o_button/cp_o_button_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import 'cp_o_show_mini_widget.dart' show CpOShowMiniWidget;
import 'package:flutter/material.dart';

class CpOShowMiniModel extends FlutterFlowModel<CpOShowMiniWidget> {
  ///  Local state fields for this component.

  bool lcsvDetailsRequest = false;

  ///  State fields for stateful widgets in this component.

  // Model for cpOButton component.
  late CpOButtonModel cpOButtonModel;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOStatus component.
  late CpOStatusModel cpOStatusModel;
  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // Model for cpOCardBack component.
  late CpOCardBackModel cpOCardBackModel;

  @override
  void initState(BuildContext context) {
    cpOButtonModel = createModel(context, () => CpOButtonModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
    cpOCardBackModel = createModel(context, () => CpOCardBackModel());
  }

  @override
  void dispose() {
    cpOButtonModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOStatusModel.dispose();
    cpUserPicProfileModel.dispose();
    cpOCardBackModel.dispose();
  }
}
