import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/orders_parents/md_o_v_asset_to_disapprove/md_o_v_asset_to_disapprove_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_asset_list_item1_model.dart';
export 'cp_o_v_asset_list_item1_model.dart';

class CpOVAssetListItem1Widget extends StatefulWidget {
  const CpOVAssetListItem1Widget({
    super.key,
    required this.cpOVAssetDt,
  });

  final DtOrderVisitAssetStruct? cpOVAssetDt;

  @override
  State<CpOVAssetListItem1Widget> createState() =>
      _CpOVAssetListItem1WidgetState();
}

class _CpOVAssetListItem1WidgetState extends State<CpOVAssetListItem1Widget>
    with TickerProviderStateMixin {
  late CpOVAssetListItem1Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVAssetListItem1Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abOVSelectedAssetMaterials(
        context,
        abOVId: widget.cpOVAssetDt?.ovId,
        abAssetId: widget.cpOVAssetDt?.assetId,
      );
      safeSetState(() {});
    });

    animationsMap.addAll({
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.cpOVAssetDt?.code,
                          'Código',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              font: FlutterFlowTheme.of(context).headlineSmall,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                      Text(
                        valueOrDefault<String>(
                          widget.cpOVAssetDt?.description,
                          'Descrição',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              font: FlutterFlowTheme.of(context).titleMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ],
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'ay8vy3pf' /* ANTES */,
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
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.cpOVAssetDt?.beforeUnitDescription,
                        'Unidade',
                      ),
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: FlutterFlowTheme.of(context).bodyMedium,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '${widget.cpOVAssetDt?.beforeTagDescription} / ${widget.cpOVAssetDt?.beforeTagSubDescription}',
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: FlutterFlowTheme.of(context).bodyMedium,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.cpOVAssetDt!.beforeStatusDescription,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: FlutterFlowTheme.of(context).bodyMedium,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
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
                                if (widget.cpOVAssetDt?.beforeImgFileName !=
                                        null &&
                                    widget.cpOVAssetDt?.beforeImgFileName !=
                                        '') {
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
                                        allowRotation: true,
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
                                }
                              },
                              child: Hero(
                                tag: widget.cpOVAssetDt?.beforeImgFileName !=
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
                                    widget.cpOVAssetDt?.beforeImgFileName !=
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
                                  font: FlutterFlowTheme.of(context).bodyMedium,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'vviivofu' /* INTERVENÇÕES */,
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
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'qck888bv' /* DEPOIS */,
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
                  if (widget.cpOVAssetDt?.isMoved ?? true)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.cpOVAssetDt?.afterUnitDescription,
                          'Unidade',
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  if (widget.cpOVAssetDt?.isMoved ?? true)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '${widget.cpOVAssetDt?.afterTagDescription} / ${widget.cpOVAssetDt?.afterTagSubDescription}',
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  if (widget.cpOVAssetDt?.isMoved ?? true)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        widget.cpOVAssetDt!.afterStatusDescription,
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: FlutterFlowTheme.of(context).bodyMedium,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
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
                                if (widget.cpOVAssetDt?.afterImgFileName !=
                                        null &&
                                    widget.cpOVAssetDt?.afterImgFileName !=
                                        '') {
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
                                              ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
                                              : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: true,
                                        tag: widget.cpOVAssetDt
                                                        ?.afterImgFileName !=
                                                    null &&
                                                widget.cpOVAssetDt
                                                        ?.afterImgFileName !=
                                                    ''
                                            ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
                                            : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: Hero(
                                tag: widget.cpOVAssetDt?.afterImgFileName !=
                                            null &&
                                        widget.cpOVAssetDt?.afterImgFileName !=
                                            ''
                                    ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpOVAssetDt?.beforeImgFilePath}/${widget.cpOVAssetDt?.beforeImgFileName}'
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
                            widget.cpOVAssetDt!.afterComments,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'i88c9xtp' /* MATERIAIS */,
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
                          final gcMateriaisItem = gcMateriais[gcMateriaisIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            if (widget.cpOVAssetDt?.processingId == 4)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).error,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'f8n0vjqa' /* REJEITADA: */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Text(
                                  widget.cpOVAssetDt!.disapprovedNotes,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if ((widget.cpOVAssetDt!.processingId > 1) &&
                (widget.cpOVAssetDt!.processingId < 5))
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'rdqfmvzc' /* Nova situação ? */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                font: FlutterFlowTheme.of(context).titleLarge,
                                letterSpacing: 0.0,
                              ),
                        ),
                        if (widget.cpOVAssetDt!.processingId > 2)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AlignedTooltip(
                                  content: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'e5e2il4k' /* Reportada */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  offset: 4.0,
                                  preferredDirection: AxisDirection.down,
                                  borderRadius: BorderRadius.circular(8.0),
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 4.0,
                                  tailBaseWidth: 24.0,
                                  tailLength: 12.0,
                                  waitDuration: Duration(milliseconds: 100),
                                  showDuration: Duration(milliseconds: 1500),
                                  triggerMode: TooltipTriggerMode.tap,
                                  child: FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    borderRadius: 16.0,
                                    borderWidth: 6.0,
                                    buttonSize: 50.0,
                                    icon: Icon(
                                      FFIcons.kkfileExport,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor3,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (widget.cpOVAssetDt?.processingId != 4)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AlignedTooltip(
                                content: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'meglm7vr' /* Rejeitar */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                offset: 4.0,
                                preferredDirection: AxisDirection.down,
                                borderRadius: BorderRadius.circular(8.0),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                tailBaseWidth: 24.0,
                                tailLength: 12.0,
                                waitDuration: Duration(milliseconds: 100),
                                showDuration: Duration(milliseconds: 1500),
                                triggerMode: TooltipTriggerMode.tap,
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).error,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.thumbsDown,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.isAllowedDisapprove =
                                        await action_blocks.abGuardian(
                                      context,
                                      abPgRequestedId: 19,
                                    );
                                    _shouldSetState = true;
                                    if (_model.isAllowedDisapprove!) {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Atividade'),
                                                    content: Text(
                                                        'Deseja REJEITAR ?'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                false),
                                                        child: Text('Cancelar'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                true),
                                                        child:
                                                            Text('Confirmar'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        await action_blocks.abOVSelectedAsset(
                                          context,
                                          abOVAssetDt: widget.cpOVAssetDt,
                                        );
                                        safeSetState(() {});
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  MdOVAssetToDisapproveWidget(),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      context.pushNamed(
                                          PgNotAllowedWidget.routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        if (widget.cpOVAssetDt?.processingId != 3)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AlignedTooltip(
                                content: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ty4if43m' /* Revisada */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                offset: 4.0,
                                preferredDirection: AxisDirection.down,
                                borderRadius: BorderRadius.circular(8.0),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                tailBaseWidth: 24.0,
                                tailLength: 12.0,
                                waitDuration: Duration(milliseconds: 100),
                                showDuration: Duration(milliseconds: 1500),
                                triggerMode: TooltipTriggerMode.tap,
                                child: FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderRadius: 16.0,
                                  borderWidth: 6.0,
                                  buttonSize: 50.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.fileSignature,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.isAllowedReview =
                                        await action_blocks.abGuardian(
                                      context,
                                      abPgRequestedId: 19,
                                    );
                                    _shouldSetState = true;
                                    if (_model.isAllowedReview!) {
                                      await action_blocks.abOVSelectedAsset(
                                        context,
                                        abOVAssetDt: widget.cpOVAssetDt,
                                      );
                                      _model.resHasImages = await action_blocks
                                          .abOVSelectedAssetImgCheck(context);
                                      _shouldSetState = true;
                                      if (_model.resHasImages!) {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Atividade'),
                                                      content: Text(
                                                          'Deseja realmente REVISAR ?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child:
                                                              Text('Cancelar'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirmar'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          await OrdersVisitsAssetsTable()
                                              .update(
                                            data: {
                                              'approved_user_id':
                                                  FFAppState().stUserCurrent.id,
                                              'approved_at':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                              'processing_id': 3,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              FFAppState().stOVSelectedAsset.id,
                                            ),
                                          );
                                          if (FFAppState()
                                              .stOVSelectedAsset
                                              .isMoved) {}
                                          await action_blocks.abOVSelectedAsset(
                                            context,
                                            abOVAssetId: FFAppState()
                                                .stOVSelectedAsset
                                                .id,
                                          );
                                          safeSetState(() {});
                                          await action_blocks
                                              .abOVSelectedAssetsUpdate(
                                            context,
                                            abOVId:
                                                FFAppState().stOVSelected.id,
                                          );
                                          await action_blocks
                                              .abOVSelectedProcessingCheck(
                                            context,
                                            abOVId:
                                                FFAppState().stOVSelected.id,
                                          );
                                        } else {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content: Text(
                                                  'Atendimento SEM imagens informadas.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      context.pushNamed(
                                          PgNotAllowedWidget.routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AlignedTooltip(
                              content: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '68wcbp8k' /* Arquivar */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              offset: 4.0,
                              preferredDirection: AxisDirection.down,
                              borderRadius: BorderRadius.circular(8.0),
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              tailBaseWidth: 24.0,
                              tailLength: 12.0,
                              waitDuration: Duration(milliseconds: 100),
                              showDuration: Duration(milliseconds: 1500),
                              triggerMode: TooltipTriggerMode.tap,
                              child: FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                borderRadius: 16.0,
                                borderWidth: 6.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.archive_sharp,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 30.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  _model.isAllowedApprove =
                                      await action_blocks.abGuardian(
                                    context,
                                    abPgRequestedId: 20,
                                  );
                                  _shouldSetState = true;
                                  if (_model.isAllowedApprove!) {
                                    if (FFAppState()
                                            .stOSelectedContractManagers
                                            .length ==
                                        1) {
                                      await action_blocks.abOVSelectedAsset(
                                        context,
                                        abOVAssetDt: widget.cpOVAssetDt,
                                      );
                                      _model.resHasImages1 = await action_blocks
                                          .abOVSelectedAssetImgCheck(context);
                                      _shouldSetState = true;
                                      if (_model.resHasImages1!) {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Atividade'),
                                                      content: Text(
                                                          'Deseja realmente ARQUIVAR ?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child:
                                                              Text('Cancelar'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirmar'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          await OrdersVisitsAssetsTable()
                                              .update(
                                            data: {
                                              'approved_user_id':
                                                  FFAppState().stUserCurrent.id,
                                              'approved_at':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                              'processing_id': 5,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              FFAppState().stOVSelectedAsset.id,
                                            ),
                                          );
                                          if (FFAppState()
                                              .stOVSelectedAsset
                                              .isMoved) {}
                                          await action_blocks.abOVSelectedAsset(
                                            context,
                                            abOVAssetId: FFAppState()
                                                .stOVSelectedAsset
                                                .id,
                                          );
                                          safeSetState(() {});
                                          await action_blocks
                                              .abOVSelectedAssetsUpdate(
                                            context,
                                            abOVId:
                                                FFAppState().stOVSelected.id,
                                          );
                                          safeSetState(() {});
                                          await action_blocks
                                              .abOVSelectedProcessingCheck(
                                            context,
                                            abOVId:
                                                FFAppState().stOVSelected.id,
                                          );
                                          safeSetState(() {});
                                        } else {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      } else {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      context.pushNamed(
                                          PgNotAllowedWidget.routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } else {
                                    context.pushNamed(
                                        PgNotAllowedWidget.routeName);

                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                ),
              ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
