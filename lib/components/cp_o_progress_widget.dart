import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'cp_o_progress_model.dart';
export 'cp_o_progress_model.dart';

class CpOProgressWidget extends StatefulWidget {
  const CpOProgressWidget({
    super.key,
    double? cpValue,
  }) : this.cpValue = cpValue ?? 0.0;

  final double cpValue;

  @override
  State<CpOProgressWidget> createState() => _CpOProgressWidgetState();
}

class _CpOProgressWidgetState extends State<CpOProgressWidget> {
  late CpOProgressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOProgressModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      percent: widget.cpValue,
      radius: 25.0,
      lineWidth: 6.0,
      animation: true,
      animateFromLastPercent: true,
      progressColor: valueOrDefault<Color>(
        () {
          if (widget.cpValue <= 0.25) {
            return FlutterFlowTheme.of(context).error;
          } else if ((widget.cpValue > 0.25) && (widget.cpValue <= 0.5)) {
            return FlutterFlowTheme.of(context).tertiary;
          } else if ((widget.cpValue > 0.5) && (widget.cpValue <= 0.75)) {
            return FlutterFlowTheme.of(context).warning;
          } else if ((widget.cpValue > 0.75) && (widget.cpValue <= 0.99)) {
            return FlutterFlowTheme.of(context).customColor4;
          } else if (widget.cpValue == 1.0) {
            return FlutterFlowTheme.of(context).success;
          } else {
            return FlutterFlowTheme.of(context).info;
          }
        }(),
        FlutterFlowTheme.of(context).error,
      ),
      center: Text(
        valueOrDefault<String>(
          formatNumber(
            widget.cpValue,
            formatType: FormatType.percent,
          ),
          '0',
        ),
        style: FlutterFlowTheme.of(context).bodySmall.override(
              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
            ),
      ),
    );
  }
}
