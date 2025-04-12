import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'cp_users_list_item_widget.dart' show CpUsersListItemWidget;
import 'package:flutter/material.dart';

class CpUsersListItemModel extends FlutterFlowModel<CpUsersListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Stores action output result for [Backend Call - API (apiUsersLeadersByTeamId)] action in Switch widget.
  ApiCallResponse? resUsersLeadersTeamSelected;

  @override
  void initState(BuildContext context) {
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
  }

  @override
  void dispose() {
    cpUserPicProfileModel.dispose();
  }
}
