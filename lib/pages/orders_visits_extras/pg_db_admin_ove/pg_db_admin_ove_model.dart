import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_db_admin_ove_widget.dart' show PgDbAdminOveWidget;
import 'package:flutter/material.dart';

class PgDbAdminOveModel extends FlutterFlowModel<PgDbAdminOveWidget> {
  ///  Local state fields for this page.

  int? lpsvOveProcessingId;

  bool lpsvOveProcessingIsFiled = false;

  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // State field(s) for tf_ove_date_start widget.
  FocusNode? tfOveDateStartFocusNode;
  TextEditingController? tfOveDateStartTextController;
  String? Function(BuildContext, String?)?
      tfOveDateStartTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for tf_ove_date_end widget.
  FocusNode? tfOveDateEndFocusNode;
  TextEditingController? tfOveDateEndTextController;
  String? Function(BuildContext, String?)? tfOveDateEndTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for tf_ove_id widget.
  FocusNode? tfOveIdFocusNode;
  TextEditingController? tfOveIdTextController;
  String? Function(BuildContext, String?)? tfOveIdTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiOVEById)] action in IconButton widget.
  ApiCallResponse? resOve;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOveCreate;

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
  }

  @override
  void dispose() {
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    tfOveDateStartFocusNode?.dispose();
    tfOveDateStartTextController?.dispose();

    tfOveDateEndFocusNode?.dispose();
    tfOveDateEndTextController?.dispose();

    tfOveIdFocusNode?.dispose();
    tfOveIdTextController?.dispose();
  }
}
