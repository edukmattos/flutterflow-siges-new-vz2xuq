import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_connectivity_icon_model.dart';
export 'cp_connectivity_icon_model.dart';

class CpConnectivityIconWidget extends StatefulWidget {
  const CpConnectivityIconWidget({super.key});

  @override
  State<CpConnectivityIconWidget> createState() =>
      _CpConnectivityIconWidgetState();
}

class _CpConnectivityIconWidgetState extends State<CpConnectivityIconWidget> {
  late CpConnectivityIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpConnectivityIconModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isConnected = await actions.caCheckConnectivity();
      if (_model.isConnected!) {
        FFAppState().stIsConnected = _model.isConnected!;
        safeSetState(() {});
      } else {
        FFAppState().stIsConnected = _model.isConnected!;
        safeSetState(() {});
        _model.instantTimerConnectivity = InstantTimer.periodic(
          duration: Duration(milliseconds: 15000),
          callback: (timer) async {
            _model.isConnectedRefresh = await actions.caCheckConnectivity();
            if (_model.isConnected!) {
              FFAppState().stIsConnected = _model.isConnected!;
              safeSetState(() {});
              _model.instantTimerConnectivity?.cancel();
            }
          },
          startImmediately: true,
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return Builder(
      builder: (context) {
        if (FFAppState().stIsConnected) {
          return FaIcon(
            FontAwesomeIcons.wifi,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          );
        } else {
          return Icon(
            Icons.wifi_off,
            color: FlutterFlowTheme.of(context).error,
            size: 24.0,
          );
        }
      },
    );
  }
}
