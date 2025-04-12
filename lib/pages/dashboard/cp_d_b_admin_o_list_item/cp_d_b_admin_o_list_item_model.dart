import '/components/cp_company_logo_widget.dart';
import '/components/cp_o_card_back_widget.dart';
import '/components/cp_o_progress_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_parents/cp_o_button/cp_o_button_widget.dart';
import '/pages/orders_parents/cp_o_status/cp_o_status_widget.dart';
import 'cp_d_b_admin_o_list_item_widget.dart' show CpDBAdminOListItemWidget;
import 'package:flutter/material.dart';

class CpDBAdminOListItemModel
    extends FlutterFlowModel<CpDBAdminOListItemWidget> {
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
  // Model for cpOProgress component.
  late CpOProgressModel cpOProgressModel;
  // Model for cpOCardBack component.
  late CpOCardBackModel cpOCardBackModel;

  @override
  void initState(BuildContext context) {
    cpOButtonModel = createModel(context, () => CpOButtonModel());
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOStatusModel = createModel(context, () => CpOStatusModel());
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
    cpOProgressModel = createModel(context, () => CpOProgressModel());
    cpOCardBackModel = createModel(context, () => CpOCardBackModel());
  }

  @override
  void dispose() {
    cpOButtonModel.dispose();
    cpCompanyLogoModel.dispose();
    cpOStatusModel.dispose();
    cpUserPicProfileModel.dispose();
    cpOProgressModel.dispose();
    cpOCardBackModel.dispose();
  }
}
