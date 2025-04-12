import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import '/pages/vehicles/cp_dropdown_vehicles/cp_dropdown_vehicles_widget.dart';
import 'md_o_v_vehicle_c_u_widget.dart' show MdOVVehicleCUWidget;
import 'package:flutter/material.dart';

class MdOVVehicleCUModel extends FlutterFlowModel<MdOVVehicleCUWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownVehicles component.
  late CpDropdownVehiclesModel cpDropdownVehiclesModel;
  // Model for cpInputInteger component.
  late CpInputIntegerModel cpInputIntegerModel1;
  // Model for cpInputInteger component.
  late CpInputIntegerModel cpInputIntegerModel2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VVehiclesRow>? resVehicleSelected;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VVehiclesRow>? resVehicleSelectedNew;

  @override
  void initState(BuildContext context) {
    cpDropdownVehiclesModel =
        createModel(context, () => CpDropdownVehiclesModel());
    cpInputIntegerModel1 = createModel(context, () => CpInputIntegerModel());
    cpInputIntegerModel2 = createModel(context, () => CpInputIntegerModel());
  }

  @override
  void dispose() {
    cpDropdownVehiclesModel.dispose();
    cpInputIntegerModel1.dispose();
    cpInputIntegerModel2.dispose();
  }
}
