import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cp_o_v_processing_card_model.dart';
export 'cp_o_v_processing_card_model.dart';

class CpOVProcessingCardWidget extends StatefulWidget {
  const CpOVProcessingCardWidget({
    super.key,
    String? ppProcessingDescription,
    int? ppProcessingId,
    this.ppDisapprovedNotes,
    int? ppBorderWidth,
    int? ppSize,
    bool? ppShowLoadingIndicator,
  })  : this.ppProcessingDescription = ppProcessingDescription ?? 'Rascunho',
        this.ppProcessingId = ppProcessingId ?? 1,
        this.ppBorderWidth = ppBorderWidth ?? 6,
        this.ppSize = ppSize ?? 50,
        this.ppShowLoadingIndicator = ppShowLoadingIndicator ?? true;

  final String ppProcessingDescription;
  final int ppProcessingId;
  final String? ppDisapprovedNotes;
  final int ppBorderWidth;
  final int ppSize;
  final bool ppShowLoadingIndicator;

  @override
  State<CpOVProcessingCardWidget> createState() =>
      _CpOVProcessingCardWidgetState();
}

class _CpOVProcessingCardWidgetState extends State<CpOVProcessingCardWidget> {
  late CpOVProcessingCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVProcessingCardModel());

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
        if (widget.ppProcessingId == 1) {
          return AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'yt75smjk' /* Rascunho */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: FlutterFlowTheme.of(context).bodyLarge,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            offset: 4.0,
            preferredDirection: AxisDirection.down,
            borderRadius: BorderRadius.circular(8.0),
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 24.0,
            tailLength: 12.0,
            waitDuration: Duration(milliseconds: 100),
            showDuration: Duration(milliseconds: 1500),
            triggerMode: TooltipTriggerMode.tap,
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 16.0,
              borderWidth: widget.ppBorderWidth.toDouble(),
              buttonSize: widget.ppSize.toDouble(),
              icon: Icon(
                Icons.draw,
                color: FlutterFlowTheme.of(context).primary,
                size: 30.0,
              ),
              showLoadingIndicator: widget.ppShowLoadingIndicator,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          );
        } else if (widget.ppProcessingId == 2) {
          return AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'dz7ubx12' /* Reportados */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: FlutterFlowTheme.of(context).bodyLarge,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            offset: 4.0,
            preferredDirection: AxisDirection.down,
            borderRadius: BorderRadius.circular(8.0),
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 24.0,
            tailLength: 12.0,
            waitDuration: Duration(milliseconds: 100),
            showDuration: Duration(milliseconds: 1500),
            triggerMode: TooltipTriggerMode.tap,
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).tertiary,
              borderRadius: 16.0,
              borderWidth: widget.ppBorderWidth.toDouble(),
              buttonSize: widget.ppSize.toDouble(),
              icon: Icon(
                Icons.report_problem_outlined,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 30.0,
              ),
              showLoadingIndicator: widget.ppShowLoadingIndicator,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          );
        } else if (widget.ppProcessingId == 3) {
          return AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'zrktzwjq' /* Revisados */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: FlutterFlowTheme.of(context).bodyLarge,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            offset: 4.0,
            preferredDirection: AxisDirection.down,
            borderRadius: BorderRadius.circular(8.0),
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 24.0,
            tailLength: 12.0,
            waitDuration: Duration(milliseconds: 100),
            showDuration: Duration(milliseconds: 1500),
            triggerMode: TooltipTriggerMode.tap,
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).secondaryText,
              borderRadius: 16.0,
              borderWidth: widget.ppBorderWidth.toDouble(),
              buttonSize: widget.ppSize.toDouble(),
              icon: Icon(
                Icons.remove_red_eye_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              showLoadingIndicator: widget.ppShowLoadingIndicator,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          );
        } else if (widget.ppProcessingId == 4) {
          return AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '9xdiqdh8' /* Rejeitados */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: FlutterFlowTheme.of(context).bodyLarge,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            offset: 4.0,
            preferredDirection: AxisDirection.down,
            borderRadius: BorderRadius.circular(8.0),
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 24.0,
            tailLength: 12.0,
            waitDuration: Duration(milliseconds: 100),
            showDuration: Duration(milliseconds: 1500),
            triggerMode: TooltipTriggerMode.tap,
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).error,
              borderRadius: 16.0,
              borderWidth: widget.ppBorderWidth.toDouble(),
              buttonSize: widget.ppSize.toDouble(),
              icon: FaIcon(
                FontAwesomeIcons.thumbsDown,
                color: FlutterFlowTheme.of(context).error,
                size: 30.0,
              ),
              showLoadingIndicator: widget.ppShowLoadingIndicator,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          );
        } else {
          return AlignedTooltip(
            content: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'rk7wo04w' /* Arquivados */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: FlutterFlowTheme.of(context).bodyLarge,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            offset: 4.0,
            preferredDirection: AxisDirection.down,
            borderRadius: BorderRadius.circular(8.0),
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 4.0,
            tailBaseWidth: 24.0,
            tailLength: 12.0,
            waitDuration: Duration(milliseconds: 100),
            showDuration: Duration(milliseconds: 1500),
            triggerMode: TooltipTriggerMode.tap,
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).error,
              borderRadius: 16.0,
              borderWidth: widget.ppBorderWidth.toDouble(),
              buttonSize: widget.ppSize.toDouble(),
              fillColor: FlutterFlowTheme.of(context).success,
              icon: Icon(
                Icons.archive_sharp,
                color: FlutterFlowTheme.of(context).info,
                size: 30.0,
              ),
              showLoadingIndicator: widget.ppShowLoadingIndicator,
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          );
        }
      },
    );
  }
}
