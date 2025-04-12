import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import '/index.dart';
import 'pg_unit_update_location_widget.dart' show PgUnitUpdateLocationWidget;
import 'package:flutter/material.dart';

class PgUnitUpdateLocationModel
    extends FlutterFlowModel<PgUnitUpdateLocationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpUnitCardShow component.
  late CpUnitCardShowModel cpUnitCardShowModel;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for tf_streetComplement widget.
  FocusNode? tfStreetComplementFocusNode;
  TextEditingController? tfStreetComplementTextController;
  String? Function(BuildContext, String?)?
      tfStreetComplementTextControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  @override
  void initState(BuildContext context) {
    cpUnitCardShowModel = createModel(context, () => CpUnitCardShowModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    cpUnitCardShowModel.dispose();
    tfStreetComplementFocusNode?.dispose();
    tfStreetComplementTextController?.dispose();

    cpMenuModel.dispose();
  }
}
