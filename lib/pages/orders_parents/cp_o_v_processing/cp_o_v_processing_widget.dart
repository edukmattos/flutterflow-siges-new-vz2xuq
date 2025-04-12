import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_o_v_processing_model.dart';
export 'cp_o_v_processing_model.dart';

class CpOVProcessingWidget extends StatefulWidget {
  const CpOVProcessingWidget({
    super.key,
    this.cpProcessingDescription,
    required this.cpProcessingId,
    this.cpDisapprovedNotes,
    int? cpBorderWidth,
    int? cpSize,
    required this.cpShowLoadingIndicator,
    bool? cpDisabled,
  })  : this.cpBorderWidth = cpBorderWidth ?? 6,
        this.cpSize = cpSize ?? 50,
        this.cpDisabled = cpDisabled ?? false;

  final String? cpProcessingDescription;
  final int? cpProcessingId;
  final String? cpDisapprovedNotes;
  final int cpBorderWidth;
  final int cpSize;
  final bool? cpShowLoadingIndicator;
  final bool cpDisabled;

  @override
  State<CpOVProcessingWidget> createState() => _CpOVProcessingWidgetState();
}

class _CpOVProcessingWidgetState extends State<CpOVProcessingWidget>
    with TickerProviderStateMixin {
  late CpOVProcessingModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVProcessingModel());

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
      'iconButtonOnPageLoadAnimation5': AnimationInfo(
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
      'iconButtonOnPageLoadAnimation6': AnimationInfo(
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
      'iconButtonOnPageLoadAnimation7': AnimationInfo(
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
      'iconButtonOnPageLoadAnimation8': AnimationInfo(
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
      'iconButtonOnPageLoadAnimation9': AnimationInfo(
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
      'iconButtonOnPageLoadAnimation10': AnimationInfo(
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
        if (widget.cpProcessingId == 1) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.cpDisabled)
                FlutterFlowIconButton(
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
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation1']!),
              if (!widget.cpDisabled)
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 16.0,
                  borderWidth: widget.cpBorderWidth.toDouble(),
                  buttonSize: widget.cpSize.toDouble(),
                  icon: Icon(
                    Icons.draw,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 30.0,
                  ),
                  showLoadingIndicator: widget.cpShowLoadingIndicator!,
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation2']!),
            ],
          );
        } else if (widget.cpProcessingId == 2) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.cpDisabled)
                FlutterFlowIconButton(
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
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation3']!),
              if (!widget.cpDisabled)
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).tertiary,
                  borderRadius: 16.0,
                  borderWidth: widget.cpBorderWidth.toDouble(),
                  buttonSize: widget.cpSize.toDouble(),
                  icon: Icon(
                    Icons.report_problem_outlined,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 30.0,
                  ),
                  showLoadingIndicator: widget.cpShowLoadingIndicator!,
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation4']!),
            ],
          );
        } else if (widget.cpProcessingId == 3) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.cpDisabled)
                FlutterFlowIconButton(
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
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation5']!),
              if (!widget.cpDisabled)
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: 16.0,
                  borderWidth: widget.cpBorderWidth.toDouble(),
                  buttonSize: widget.cpSize.toDouble(),
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30.0,
                  ),
                  showLoadingIndicator: widget.cpShowLoadingIndicator!,
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation6']!),
            ],
          );
        } else if (widget.cpProcessingId == 4) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.cpDisabled)
                FlutterFlowIconButton(
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
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation7']!),
              if (!widget.cpDisabled)
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).error,
                  borderRadius: 16.0,
                  borderWidth: widget.cpBorderWidth.toDouble(),
                  buttonSize: widget.cpSize.toDouble(),
                  icon: FaIcon(
                    FontAwesomeIcons.thumbsDown,
                    color: FlutterFlowTheme.of(context).error,
                    size: 30.0,
                  ),
                  showLoadingIndicator: widget.cpShowLoadingIndicator!,
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation8']!),
            ],
          );
        } else if (widget.cpProcessingId == 5) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.cpDisabled)
                FlutterFlowIconButton(
                  borderRadius: 16.0,
                  borderWidth: widget.cpBorderWidth.toDouble(),
                  buttonSize: widget.cpSize.toDouble(),
                  fillColor: FlutterFlowTheme.of(context).success,
                  icon: Icon(
                    Icons.archive_sharp,
                    color: FlutterFlowTheme.of(context).info,
                    size: 30.0,
                  ),
                  showLoadingIndicator: widget.cpShowLoadingIndicator!,
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation9']!),
              if (!widget.cpDisabled)
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).success,
                  borderRadius: 16.0,
                  borderWidth: widget.cpBorderWidth.toDouble(),
                  buttonSize: widget.cpSize.toDouble(),
                  icon: Icon(
                    Icons.archive_sharp,
                    color: FlutterFlowTheme.of(context).success,
                    size: 30.0,
                  ),
                  showLoadingIndicator: widget.cpShowLoadingIndicator!,
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ).animateOnPageLoad(
                    animationsMap['iconButtonOnPageLoadAnimation10']!),
            ],
          );
        } else {
          return Text(
            FFLocalizations.of(context).getText(
              '77tm266l' /*   */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          );
        }
      },
    );
  }
}
