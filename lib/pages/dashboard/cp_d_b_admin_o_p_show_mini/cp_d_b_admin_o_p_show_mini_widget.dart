import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_follow/cp_o_follow_widget.dart';
import '/pages/orders_parents/cp_o_p_button/cp_o_p_button_widget.dart';
import '/pages/orders_parents/md_o_p_img_main/md_o_p_img_main_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_d_b_admin_o_p_show_mini_model.dart';
export 'cp_d_b_admin_o_p_show_mini_model.dart';

class CpDBAdminOPShowMiniWidget extends StatefulWidget {
  const CpDBAdminOPShowMiniWidget({
    super.key,
    required this.cpOPdt,
  });

  final DtOrderStruct? cpOPdt;

  @override
  State<CpDBAdminOPShowMiniWidget> createState() =>
      _CpDBAdminOPShowMiniWidgetState();
}

class _CpDBAdminOPShowMiniWidgetState extends State<CpDBAdminOPShowMiniWidget>
    with TickerProviderStateMixin {
  late CpDBAdminOPShowMiniModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDBAdminOPShowMiniModel());

    animationsMap.addAll({
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
      'textOnPageLoadAnimation4': AnimationInfo(
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
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Icon(
              Icons.threesixty_rounded,
              color: FlutterFlowTheme.of(context).alternate,
              size: 150.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.cpOPButtonModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpOPButtonWidget(
                                      cpOPId: widget.cpOPdt!.id,
                                      cpOMask: widget.cpOPdt!.orderMask,
                                      cpIsRedirect: true,
                                      cpFontSize: 25,
                                      cpButtonHeight: 50,
                                      cpODt: widget.cpOPdt,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        if (widget.cpOPdt?.imgFileName != null &&
                            widget.cpOPdt?.imgFileName != '')
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 16.0,
                            borderWidth: 6.0,
                            buttonSize: 50.0,
                            icon: FaIcon(
                              FontAwesomeIcons.image,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MdOPImgMainWidget(
                                      cpOPDt: widget.cpOPdt!,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        wrapWithModel(
                          model: _model.cpOFollowModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpOFollowWidget(
                            cpOPId: widget.cpOPdt?.id,
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 2.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {},
                                  child: AutoSizeText(
                                    valueOrDefault<String>(
                                      widget.cpOPdt?.unitDescription,
                                      'Unidade',
                                    ).maybeHandleOverflow(
                                      maxChars: 33,
                                      replacement: '…',
                                    ),
                                    maxLines: 1,
                                    minFontSize: 16.0,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily),
                                        ),
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation1']!),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: SelectionArea(
                                    child: AutoSizeText(
                                  valueOrDefault<String>(
                                    widget.cpOPdt?.assetTagDescription,
                                    'Setor',
                                  ).maybeHandleOverflow(
                                    maxChars: 130,
                                    replacement: '…',
                                  ),
                                  minFontSize: 12.0,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                )).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: SelectionArea(
                                    child: AutoSizeText(
                                  valueOrDefault<String>(
                                    widget.cpOPdt?.requestedServices,
                                    'Serviços Solicitados',
                                  ).maybeHandleOverflow(
                                    maxChars: 130,
                                    replacement: '…',
                                  ),
                                  minFontSize: 12.0,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                )).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation3']!),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SelectionArea(
                        child: Text(
                      '${dateTimeFormat(
                        "dd/MM/y HH:mm",
                        widget.cpOPdt?.requestedDatetime,
                        locale: FFLocalizations.of(context).languageCode,
                      )}h',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                    )).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation4']!),
                  ],
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ],
      ),
    );
  }
}
