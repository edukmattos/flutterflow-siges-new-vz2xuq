import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_db_admin_ove_widget.dart' show PgDbAdminOveWidget;
import 'package:flutter/material.dart';

class PgDbAdminOveModel extends FlutterFlowModel<PgDbAdminOveWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // State field(s) for tf_ove_date_start1 widget.
  FocusNode? tfOveDateStart1FocusNode;
  TextEditingController? tfOveDateStart1TextController;
  String? Function(BuildContext, String?)?
      tfOveDateStart1TextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for tf_ove_date_end1 widget.
  FocusNode? tfOveDateEnd1FocusNode;
  TextEditingController? tfOveDateEnd1TextController;
  String? Function(BuildContext, String?)? tfOveDateEnd1TextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for tf_ove_id widget.
  FocusNode? tfOveIdFocusNode;
  TextEditingController? tfOveIdTextController;
  String? Function(BuildContext, String?)? tfOveIdTextControllerValidator;
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
    tfOveDateStart1FocusNode?.dispose();
    tfOveDateStart1TextController?.dispose();

    tfOveDateEnd1FocusNode?.dispose();
    tfOveDateEnd1TextController?.dispose();

    tfOveIdFocusNode?.dispose();
    tfOveIdTextController?.dispose();
  }
}
