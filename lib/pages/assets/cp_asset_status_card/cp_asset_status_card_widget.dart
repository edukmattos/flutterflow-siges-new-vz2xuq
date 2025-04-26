import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_asset_status_card_model.dart';
export 'cp_asset_status_card_model.dart';

class CpAssetStatusCardWidget extends StatefulWidget {
  const CpAssetStatusCardWidget({
    super.key,
    this.cpStatusId,
    this.cpStatusDescription,
  });

  final int? cpStatusId;
  final String? cpStatusDescription;

  @override
  State<CpAssetStatusCardWidget> createState() =>
      _CpAssetStatusCardWidgetState();
}

class _CpAssetStatusCardWidgetState extends State<CpAssetStatusCardWidget> {
  late CpAssetStatusCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetStatusCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.cpStatusId == 1) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FFButtonWidget(
                onPressed: true
                    ? null
                    : () {
                        print('Button pressed ...');
                      },
                text: widget.cpStatusDescription!,
                options: FFButtonOptions(
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).success,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: FlutterFlowTheme.of(context).titleSmall,
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                showLoadingIndicator: false,
              ),
            ],
          );
        } else if (widget.cpStatusId == 2) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FFButtonWidget(
                onPressed: true
                    ? null
                    : () {
                        print('Button pressed ...');
                      },
                text: widget.cpStatusDescription!,
                options: FFButtonOptions(
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: FlutterFlowTheme.of(context).titleSmall,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                showLoadingIndicator: false,
              ),
            ],
          );
        } else if (widget.cpStatusId == 3) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FFButtonWidget(
                onPressed: true
                    ? null
                    : () {
                        print('Button pressed ...');
                      },
                text: widget.cpStatusDescription!,
                options: FFButtonOptions(
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: FlutterFlowTheme.of(context).titleSmall,
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                showLoadingIndicator: false,
              ),
            ],
          );
        } else if (widget.cpStatusId == 4) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FFButtonWidget(
                onPressed: true
                    ? null
                    : () {
                        print('Button pressed ...');
                      },
                text: widget.cpStatusDescription!,
                options: FFButtonOptions(
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: FlutterFlowTheme.of(context).titleSmall,
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                showLoadingIndicator: false,
              ),
            ],
          );
        } else {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FFButtonWidget(
                onPressed: true
                    ? null
                    : () {
                        print('Button pressed ...');
                      },
                text: widget.cpStatusDescription!,
                options: FFButtonOptions(
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: FlutterFlowTheme.of(context).titleSmall,
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                showLoadingIndicator: false,
              ),
            ],
          );
        }
      },
    );
  }
}
