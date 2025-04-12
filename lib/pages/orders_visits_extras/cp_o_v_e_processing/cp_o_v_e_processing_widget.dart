import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cp_o_v_e_processing_model.dart';
export 'cp_o_v_e_processing_model.dart';

class CpOVEProcessingWidget extends StatefulWidget {
  const CpOVEProcessingWidget({
    super.key,
    this.cpProcessingDescription,
    required this.cpProcessingId,
    this.cpDisapprovedNotes,
    int? cpBorderWidth,
    int? cpSize,
    required this.cpShowLoadingIndicator,
    bool? cpDisabled,
    bool? cpIsFiled,
  })  : this.cpBorderWidth = cpBorderWidth ?? 6,
        this.cpSize = cpSize ?? 50,
        this.cpDisabled = cpDisabled ?? false,
        this.cpIsFiled = cpIsFiled ?? false;

  final String? cpProcessingDescription;
  final int? cpProcessingId;
  final String? cpDisapprovedNotes;
  final int cpBorderWidth;
  final int cpSize;
  final bool? cpShowLoadingIndicator;
  final bool cpDisabled;
  final bool cpIsFiled;

  @override
  State<CpOVEProcessingWidget> createState() => _CpOVEProcessingWidgetState();
}

class _CpOVEProcessingWidgetState extends State<CpOVEProcessingWidget>
    with TickerProviderStateMixin {
  late CpOVEProcessingModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVEProcessingModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
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
    return Builder(
      builder: (context) {
        if ((widget.cpProcessingId == 1) && (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).primary,
            icon: Icon(
              Icons.draw,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation1']!);
        } else if ((widget.cpProcessingId == 2) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).tertiary,
            icon: Icon(
              Icons.report_problem_outlined,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation2']!);
        } else if ((widget.cpProcessingId == 3) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).secondaryText,
            icon: FaIcon(
              FontAwesomeIcons.solidEye,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation3']!);
        } else if ((widget.cpProcessingId == 4) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            borderWidth: widget.cpBorderWidth.toDouble(),
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).error,
            icon: FaIcon(
              FontAwesomeIcons.thumbsDown,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation4']!);
        } else if ((widget.cpProcessingId == 5) &&
            (widget.cpIsFiled == false)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).success,
            icon: FaIcon(
              FontAwesomeIcons.thumbsUp,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          );
        } else if ((widget.cpProcessingId == 5) &&
            (widget.cpIsFiled == true)) {
          return FlutterFlowIconButton(
            borderRadius: 16.0,
            buttonSize: widget.cpSize.toDouble(),
            fillColor: FlutterFlowTheme.of(context).success,
            icon: Icon(
              Icons.archive_sharp,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: widget.cpShowLoadingIndicator!,
            onPressed: widget.cpDisabled
                ? null
                : () {
                    print('IconButton pressed ...');
                  },
          );
        } else {
          return Container(
            width: 0.0,
            height: 0.0,
            decoration: BoxDecoration(),
          );
        }
      },
    );
  }
}
