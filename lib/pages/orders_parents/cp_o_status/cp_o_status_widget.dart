import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cp_o_status_model.dart';
export 'cp_o_status_model.dart';

class CpOStatusWidget extends StatefulWidget {
  const CpOStatusWidget({
    super.key,
    required this.cpOStatusId,
    required this.cpOStatusDescription,
    required this.cpBadge,
    required this.cpBorderWidth,
    int? cpSize,
  }) : this.cpSize = cpSize ?? 50;

  final int? cpOStatusId;
  final String? cpOStatusDescription;
  final int? cpBadge;
  final int? cpBorderWidth;
  final int cpSize;

  @override
  State<CpOStatusWidget> createState() => _CpOStatusWidgetState();
}

class _CpOStatusWidgetState extends State<CpOStatusWidget>
    with TickerProviderStateMixin {
  late CpOStatusModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOStatusModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation2': AnimationInfo(
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
      'containerOnPageLoadAnimation3': AnimationInfo(
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
      'containerOnPageLoadAnimation4': AnimationInfo(
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
      'containerOnPageLoadAnimation5': AnimationInfo(
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
      'containerOnPageLoadAnimation6': AnimationInfo(
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
      'containerOnPageLoadAnimation7': AnimationInfo(
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
      'containerOnPageLoadAnimation8': AnimationInfo(
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
        if (widget.cpOStatusId == 1) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '10syenrb' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '9x4xgctu' /* NP */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation1']!),
                ),
              ),
            ],
          );
        } else if (widget.cpOStatusId == 2) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'zo6hwhlw' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'arcd2ip8' /* AV */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ),
              ),
            ],
          );
        } else if (widget.cpOStatusId == 3) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '00yubm6i' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'xs43umb1' /* AU */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation3']!),
                ),
              ),
            ],
          );
        } else if (widget.cpOStatusId == 4) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'zvcf3cyx' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).customColor3,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '951377re' /* AG */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation4']!),
                ),
              ),
            ],
          );
        } else if (widget.cpOStatusId == 5) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'cyd5609j' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).success,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '7lwlury8' /* EX */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation5']!),
                ),
              ),
            ],
          );
        } else if (widget.cpOStatusId == 6) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'hjccmjhn' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent3,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'yuevx90v' /* SU */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation6']!),
                ),
              ),
            ],
          );
        } else if (widget.cpOStatusId == 7) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '23kx69vi' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).error,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ld1c4ktv' /* CA */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation7']!),
                ),
              ),
            ],
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'pjjirjpb' /* Não Programadas */,
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
                backgroundColor: FlutterFlowTheme.of(context).info,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: badges.Badge(
                  badgeContent: Text(
                    widget.cpBadge!.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: widget.cpBadge! > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsets.all(8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Container(
                    width: widget.cpSize.toDouble(),
                    height: widget.cpSize.toDouble(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: widget.cpBorderWidth!.toDouble(),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fho3iszp' /* CO */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation8']!),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
