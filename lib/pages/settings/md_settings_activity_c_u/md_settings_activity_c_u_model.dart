import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'md_settings_activity_c_u_widget.dart' show MdSettingsActivityCUWidget;
import 'package:flutter/material.dart';

class MdSettingsActivityCUModel
    extends FlutterFlowModel<MdSettingsActivityCUWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputTextDescription.
  late CpInputTextModel cpInputTextDescriptionModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<CfgActivitiesRow>? resActivityUpdated;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CfgActivitiesRow? resActivityCreated;

  @override
  void initState(BuildContext context) {
    cpInputTextDescriptionModel =
        createModel(context, () => CpInputTextModel());
  }

  @override
  void dispose() {
    cpInputTextDescriptionModel.dispose();
  }
}
