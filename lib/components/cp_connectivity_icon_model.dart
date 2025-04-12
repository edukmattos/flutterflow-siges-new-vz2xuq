import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'cp_connectivity_icon_widget.dart' show CpConnectivityIconWidget;
import 'package:flutter/material.dart';

class CpConnectivityIconModel
    extends FlutterFlowModel<CpConnectivityIconWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - caCheckConnectivity] action in cpConnectivityIcon widget.
  bool? isConnected;
  InstantTimer? instantTimerConnectivity;
  // Stores action output result for [Custom Action - caCheckConnectivity] action in cpConnectivityIcon widget.
  bool? isConnectedRefresh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimerConnectivity?.cancel();
  }
}
