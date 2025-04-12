import '/components/cp_company_logo_widget.dart';
import '/components/cp_user_notifications_amount_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'cp_d_b_user_available_widget.dart' show CpDBUserAvailableWidget;
import 'package:flutter/material.dart';

class CpDBUserAvailableModel extends FlutterFlowModel<CpDBUserAvailableWidget> {
  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimerGPS;
  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // Model for cpUserNotificationsAmount component.
  late CpUserNotificationsAmountModel cpUserNotificationsAmountModel;

  @override
  void initState(BuildContext context) {
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
    cpUserNotificationsAmountModel =
        createModel(context, () => CpUserNotificationsAmountModel());
  }

  @override
  void dispose() {
    instantTimerGPS?.cancel();
    cpCompanyLogoModel.dispose();
    cpUserPicProfileModel.dispose();
    cpUserNotificationsAmountModel.dispose();
  }
}
