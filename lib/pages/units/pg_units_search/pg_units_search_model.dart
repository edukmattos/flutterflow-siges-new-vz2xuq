import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_units_search_widget.dart' show PgUnitsSearchWidget;
import 'package:flutter/material.dart';

class PgUnitsSearchModel extends FlutterFlowModel<PgUnitsSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // State field(s) for tf_searchTerms widget.
  FocusNode? tfSearchTermsFocusNode;
  TextEditingController? tfSearchTermsTextController;
  String? Function(BuildContext, String?)? tfSearchTermsTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiUnitsSearch)] action in IconButton widget.
  ApiCallResponse? apiResultoth;
  // Stores action output result for [Action Block - abGuardian] action in Icon widget.
  bool? isAllowed;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    tfSearchTermsFocusNode?.dispose();
    tfSearchTermsTextController?.dispose();

    cpMenuModel.dispose();
  }
}
