import '/backend/schema/structs/index.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_asset_activity_list_item_model.dart';
export 'cp_asset_activity_list_item_model.dart';

class CpAssetActivityListItemWidget extends StatefulWidget {
  const CpAssetActivityListItemWidget({
    super.key,
    required this.cpOVAssetDt,
  });

  final DtOrderVisitAssetStruct? cpOVAssetDt;

  @override
  State<CpAssetActivityListItemWidget> createState() =>
      _CpAssetActivityListItemWidgetState();
}

class _CpAssetActivityListItemWidgetState
    extends State<CpAssetActivityListItemWidget> with TickerProviderStateMixin {
  late CpAssetActivityListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetActivityListItemModel());

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
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
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
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        wrapWithModel(
                          model: _model.cpCompanyLogoModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpCompanyLogoWidget(
                            cpSize: 50,
                            cpImgUrl:
                                '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/version-${FFAppState().stAppVersionMode?.name}/${widget.cpOVAssetDt?.oCompanyImgFilePath}/${widget.cpOVAssetDt?.oCompanyImgFileName}',
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${valueOrDefault<String>(
                                  dateTimeFormat(
                                    "dd/MM/y HH:mm",
                                    widget.cpOVAssetDt?.ovEndedDatetime,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  'Data hora fim',
                                )}h',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                              Text(
                                '${valueOrDefault<String>(
                                  dateTimeFormat(
                                    "relative",
                                    widget.cpOVAssetDt?.ovEndedDatetime,
                                    locale: FFLocalizations.of(context)
                                            .languageShortCode ??
                                        FFLocalizations.of(context)
                                            .languageCode,
                                  ),
                                  'Data hora fim',
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    valueOrDefault<String>(
                                      widget.cpOVAssetDt?.oTeamLeaderNameShort,
                                      'Lider NI',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelSmall,
                                          letterSpacing: 0.0,
                                        ),
                                  )).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation3']!),
                                  SelectionArea(
                                      child: Text(
                                    valueOrDefault<String>(
                                      widget.cpOVAssetDt?.oTeamCode,
                                      'Equipe NI',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelSmall,
                                          letterSpacing: 0.0,
                                        ),
                                  )).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation4']!),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ],
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.cpOVProcessingModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CpOVProcessingWidget(
                        cpProcessingDescription:
                            widget.cpOVAssetDt?.processingDescription,
                        cpProcessingId: widget.cpOVAssetDt!.processingId,
                        cpBorderWidth: 0,
                        cpSize: 50,
                        cpShowLoadingIndicator: false,
                        cpDisabled: true,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '2112nwzz' /* ANTES */,
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.cpOVAssetDt?.beforeUnitDescription,
                            'Unidade',
                          ),
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '${widget.cpOVAssetDt?.beforeTagDescription} / ${widget.cpOVAssetDt?.beforeTagSubDescription}',
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          widget.cpOVAssetDt!.beforeStatusDescription,
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 44.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            widget.cpOVAssetDt
                                                            ?.beforeImgFileName !=
                                                        null &&
                                                    widget.cpOVAssetDt
                                                            ?.beforeImgFileName !=
                                                        ''
                                                ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
                                                : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: widget.cpOVAssetDt
                                                          ?.beforeImgFileName !=
                                                      null &&
                                                  widget.cpOVAssetDt
                                                          ?.beforeImgFileName !=
                                                      ''
                                              ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
                                              : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: widget.cpOVAssetDt
                                                    ?.beforeImgFileName !=
                                                null &&
                                            widget.cpOVAssetDt
                                                    ?.beforeImgFileName !=
                                                ''
                                        ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
                                        : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        widget.cpOVAssetDt
                                                        ?.beforeImgFileName !=
                                                    null &&
                                                widget.cpOVAssetDt
                                                        ?.beforeImgFileName !=
                                                    ''
                                            ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
                                            : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                        width: 44.0,
                                        height: 44.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                widget.cpOVAssetDt!.beforeComments,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ].divide(SizedBox(height: 2.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'pjvrxcbj' /* INTERVENÇÕES */,
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        widget.cpOVAssetDt!.activitiesSearchable,
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'wzcltn97' /* DEPOIS */,
                          ),
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                      if (widget.cpOVAssetDt?.isMoved ?? true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.cpOVAssetDt?.afterUnitDescription,
                              'Unidade',
                            ),
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      if (widget.cpOVAssetDt?.isMoved ?? true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '${widget.cpOVAssetDt?.afterTagDescription} / ${widget.cpOVAssetDt?.afterTagSubDescription}',
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      if (widget.cpOVAssetDt?.isMoved ?? true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            widget.cpOVAssetDt!.afterStatusDescription,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 44.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            widget.cpOVAssetDt
                                                            ?.afterImgFileName !=
                                                        null &&
                                                    widget.cpOVAssetDt
                                                            ?.afterImgFileName !=
                                                        ''
                                                ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.afterImgFilePath}/${widget.cpOVAssetDt?.afterImgFileName}'
                                                : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: widget.cpOVAssetDt
                                                          ?.afterImgFileName !=
                                                      null &&
                                                  widget.cpOVAssetDt
                                                          ?.afterImgFileName !=
                                                      ''
                                              ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.afterImgFilePath}/${widget.cpOVAssetDt?.afterImgFileName}'
                                              : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: widget.cpOVAssetDt
                                                    ?.afterImgFileName !=
                                                null &&
                                            widget.cpOVAssetDt
                                                    ?.afterImgFileName !=
                                                ''
                                        ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.afterImgFilePath}/${widget.cpOVAssetDt?.afterImgFileName}'
                                        : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        widget.cpOVAssetDt?.afterImgFileName !=
                                                    null &&
                                                widget.cpOVAssetDt
                                                        ?.afterImgFileName !=
                                                    ''
                                            ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.afterImgFilePath}/${widget.cpOVAssetDt?.afterImgFileName}'
                                            : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                        width: 44.0,
                                        height: 44.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                widget.cpOVAssetDt!.afterComments,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ].divide(SizedBox(height: 2.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'tbxnkpfy' /* MATERIAIS */,
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final gcMateriais = FFAppState()
                            .stOVSelectedMateriais
                            .where((e) =>
                                (e.ovId == FFAppState().stOVSelected.id) &&
                                (e.assetId == widget.cpOVAssetDt?.assetId))
                            .toList()
                            .map((e) => e)
                            .toList();

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: gcMateriais.length,
                          separatorBuilder: (_, __) => SizedBox(height: 2.0),
                          itemBuilder: (context, gcMateriaisIndex) {
                            final gcMateriaisItem =
                                gcMateriais[gcMateriaisIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      gcMateriaisItem.description,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    '${functions.cfConvDoubleToCurrency2Decimals(gcMateriaisItem.amount.toString(), 2)} ${gcMateriaisItem.unit}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ].divide(SizedBox(height: 2.0)),
                ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    ).animateOnPageLoad(animationsMap['cardOnPageLoadAnimation']!);
  }
}
