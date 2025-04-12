import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/units/cp_unit_status_card/cp_unit_status_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_unit_card_list_item_model.dart';
export 'cp_unit_card_list_item_model.dart';

class CpUnitCardListItemWidget extends StatefulWidget {
  const CpUnitCardListItemWidget({
    super.key,
    required this.cpUnitDt,
  });

  final DtUnitStruct? cpUnitDt;

  @override
  State<CpUnitCardListItemWidget> createState() =>
      _CpUnitCardListItemWidgetState();
}

class _CpUnitCardListItemWidgetState extends State<CpUnitCardListItemWidget>
    with TickerProviderStateMixin {
  late CpUnitCardListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpUnitCardListItemModel());

    animationsMap.addAll({
      'cardOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
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
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    valueOrDefault<String>(
                      widget.cpUnitDt?.descriptionFull,
                      'Descricao',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleLargeFamily),
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '${widget.cpUnitDt?.systemParentDescription} / ${widget.cpUnitDt?.systemChildDescription} / ${widget.cpUnitDt?.unitTypeParentDescription}',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyLargeFamily),
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation2']!),
                ),
                wrapWithModel(
                  model: _model.cpUnitStatusCardModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpUnitStatusCardWidget(
                    cpStatusId: widget.cpUnitDt?.statusId,
                    cpStatusDescription: widget.cpUnitDt?.statusDescription,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: SelectionArea(
                        child: Text(
                      valueOrDefault<String>(
                        widget.cpUnitDt?.addressFull,
                        '(Sem Endereco Informado)',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                    )).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!),
                  ),
                ),
                if (widget.cpUnitDt?.latitude != 0.0)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        if (isWeb) {
                          await launchURL(
                              'https://www.google.com/maps?q=${'${widget.cpUnitDt?.latitude.toString()},${widget.cpUnitDt?.longitude.toString()}'}');
                        } else {
                          await launchMap(
                            location: functions.cfConvToLatLng(
                                widget.cpUnitDt!.latitude,
                                widget.cpUnitDt!.longitude),
                            title: widget.cpUnitDt!.descriptionFull,
                          );
                        }
                      },
                    ).animateOnPageLoad(
                        animationsMap['iconButtonOnPageLoadAnimation']!),
                  ),
              ],
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    ).animateOnPageLoad(animationsMap['cardOnPageLoadAnimation']!);
  }
}
