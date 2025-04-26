import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cp_o_priority_model.dart';
export 'cp_o_priority_model.dart';

class CpOPriorityWidget extends StatefulWidget {
  const CpOPriorityWidget({
    super.key,
    required this.cpOPriorityId,
    required this.cpOPriorityDscription,
  });

  final int? cpOPriorityId;
  final String? cpOPriorityDscription;

  @override
  State<CpOPriorityWidget> createState() => _CpOPriorityWidgetState();
}

class _CpOPriorityWidgetState extends State<CpOPriorityWidget>
    with TickerProviderStateMixin {
  late CpOPriorityModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOPriorityModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: AlignedTooltip(
        content: Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            widget.cpOPriorityDscription!,
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
        child: Builder(
          builder: (context) {
            if (widget.cpOPriorityId == 3) {
              return Padding(
                padding: EdgeInsets.all(4.0),
                child: FaIcon(
                  FontAwesomeIcons.thermometerQuarter,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30.0,
                ),
              );
            } else if (widget.cpOPriorityId == 2) {
              return Padding(
                padding: EdgeInsets.all(4.0),
                child: FaIcon(
                  FontAwesomeIcons.thermometerHalf,
                  color: FlutterFlowTheme.of(context).warning,
                  size: 30.0,
                ),
              );
            } else {
              return Padding(
                padding: EdgeInsets.all(4.0),
                child: FaIcon(
                  FontAwesomeIcons.thermometerFull,
                  color: FlutterFlowTheme.of(context).error,
                  size: 30.0,
                ),
              );
            }
          },
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
