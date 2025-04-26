import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/orders_parents/md_o_v_close/md_o_v_close_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_e_list_item_model.dart';
export 'cp_o_v_e_list_item_model.dart';

class CpOVEListItemWidget extends StatefulWidget {
  const CpOVEListItemWidget({
    super.key,
    required this.cpDtOVE,
  });

  final DtOrderVisitExtraStruct? cpDtOVE;

  @override
  State<CpOVEListItemWidget> createState() => _CpOVEListItemWidgetState();
}

class _CpOVEListItemWidgetState extends State<CpOVEListItemWidget>
    with TickerProviderStateMixin {
  late CpOVEListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVEListItemModel());

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
      'buttonOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation5': AnimationInfo(
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
      'textOnPageLoadAnimation6': AnimationInfo(
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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    width: 160.0,
                                    constraints: BoxConstraints(
                                      minWidth: 160.0,
                                      maxWidth: 300.0,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (!true)
                                          wrapWithModel(
                                            model:
                                                _model.cpOButtonDisabledModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpOButtonDisabledWidget(
                                              cpOMask: widget.cpDtOVE!.oMask,
                                              cpOTypeCode:
                                                  widget.cpDtOVE!.oTypeCode,
                                              cpOTypeSubCode: '.',
                                              cpOPriorityCode:
                                                  widget.cpDtOVE!.priorityCode,
                                              cpOObjectCode: 'SRV',
                                              cpOPriorityId:
                                                  widget.cpDtOVE!.priorityId,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.cpCompanyLogoModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpCompanyLogoWidget(
                                  cpSize: 50,
                                  cpImgUrl:
                                      '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpDtOVE?.providerCompanyImgFilePath}/${widget.cpDtOVE?.providerCompanyImgFileName}',
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.cpDtOVE?.unitDescription,
                                  'Unidade',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .headlineMedium,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.cpDtOVE?.assetTagDescription,
                              'Setor',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                          Text(
                            valueOrDefault<String>(
                              widget.cpDtOVE?.requestedServices,
                              'Serviços a realizar',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: FlutterFlowTheme.of(context).titleSmall,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation3']!),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '5o4sqey1' /* 4 Members */,
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: FlutterFlowTheme.of(context).labelSmall,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation4']!),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await action_blocks.abOVSelected(context);
                        },
                        text: 'PSE${widget.cpDtOVE?.id.toString()}',
                        options: FFButtonOptions(
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation']!),
                    ],
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.cpOVProcessingModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpOVProcessingWidget(
                          cpProcessingDescription:
                              widget.cpDtOVE?.processingDescription,
                          cpProcessingId: widget.cpDtOVE!.processingId,
                          cpBorderWidth: 0,
                          cpSize: 50,
                          cpShowLoadingIndicator: false,
                          cpDisabled: false,
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      '${dateTimeFormat(
                        "dd/MM/y HH:mm",
                        widget.cpDtOVE?.startedDatetime,
                        locale: FFLocalizations.of(context).languageCode,
                      )} h'
                          .maybeHandleOverflow(
                        maxChars: 16,
                      ),
                      minFontSize: 12.0,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: FlutterFlowTheme.of(context).labelMedium,
                            letterSpacing: 0.0,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation5']!),
                    AutoSizeText(
                      '(${functions.cfConvDoubleToCurrency2Decimals(widget.cpDtOVE!.durationHours.toString(), 2)}h )'
                          .maybeHandleOverflow(
                        maxChars: 16,
                      ),
                      minFontSize: 12.0,
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: FlutterFlowTheme.of(context).labelSmall,
                            letterSpacing: 0.0,
                          ),
                    ),
                    AutoSizeText(
                      '${dateTimeFormat(
                        "dd/MM/y HH:mm",
                        widget.cpDtOVE?.endedDatetime,
                        locale: FFLocalizations.of(context).languageCode,
                      )} h'
                          .maybeHandleOverflow(
                        maxChars: 16,
                      ),
                      minFontSize: 12.0,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: FlutterFlowTheme.of(context).labelMedium,
                            letterSpacing: 0.0,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation6']!),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 65.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ApiOrdersVisitsExtrasTeamsGroup
                                            .apiOrderVisitTeamExtraByIdCall
                                            .call(
                                          apiUrl: FFDevEnvironmentValues()
                                              .envApiUrl,
                                          apiKey: FFDevEnvironmentValues()
                                              .envApiKey,
                                          accessToken: currentJwtToken,
                                          oveId: widget.cpDtOVE?.id,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final listViewApiOrderVisitTeamExtraByIdResponse =
                                              snapshot.data!;

                                          return Builder(
                                            builder: (context) {
                                              final gcOVETeamUsers =
                                                  (listViewApiOrderVisitTeamExtraByIdResponse
                                                                  .jsonBody
                                                                  .toList()
                                                                  .map<DtOrderVisitExtraTeamUserStruct?>(
                                                                      DtOrderVisitExtraTeamUserStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  DtOrderVisitExtraTeamUserStruct?>)
                                                          .withoutNulls
                                                          .toList() ??
                                                      [];

                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    gcOVETeamUsers.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 2.0),
                                                itemBuilder: (context,
                                                    gcOVETeamUsersIndex) {
                                                  final gcOVETeamUsersItem =
                                                      gcOVETeamUsers[
                                                          gcOVETeamUsersIndex];
                                                  return Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Stack(
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              CpUserPicProfileWidget(
                                                                key: Key(
                                                                    'Key1nt_${gcOVETeamUsersIndex}_of_${gcOVETeamUsers.length}'),
                                                                cpSize: 60,
                                                                imgUrl:
                                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${gcOVETeamUsersItem.imgFilePath}/${gcOVETeamUsersItem.imgFileName}',
                                                                toolTip:
                                                                    gcOVETeamUsersItem
                                                                        .nameShort,
                                                                isAvailable:
                                                                    gcOVETeamUsersItem
                                                                        .isAvailable,
                                                                isOrderVisitIdInProgress:
                                                                    gcOVETeamUsersItem
                                                                        .isOvInProgress,
                                                                displayAvailable:
                                                                    false,
                                                                cpBorderWidth:
                                                                    0,
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  gcOVETeamUsersItem
                                                                      .nameShort,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          if (!FFAppState()
                                                                  .stOVSelected
                                                                  .ovIsFiled &&
                                                              !gcOVETeamUsersItem
                                                                  .isLeader)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                borderRadius:
                                                                    16.0,
                                                                borderWidth:
                                                                    2.0,
                                                                buttonSize:
                                                                    30.0,
                                                                fillColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidTrashAlt,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 14.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  await OrdersVisitsTeamsTable()
                                                                      .delete(
                                                                    matchingRows: (rows) => rows
                                                                        .eqOrNull(
                                                                          'ov_id',
                                                                          FFAppState()
                                                                              .stOVSelected
                                                                              .id,
                                                                        )
                                                                        .eqOrNull(
                                                                          'user_id',
                                                                          gcOVETeamUsersItem
                                                                              .userId,
                                                                        )
                                                                        .eqOrNull(
                                                                          'version_mode',
                                                                          FFAppState()
                                                                              .stAppVersionMode
                                                                              ?.name,
                                                                        ),
                                                                  );
                                                                  if (FFAppState()
                                                                          .stOVSelected
                                                                          .ovStatusId ==
                                                                      1) {
                                                                    await UsersTable()
                                                                        .update(
                                                                      data: {
                                                                        'ov_in_progress_leader_id':
                                                                            0,
                                                                        'o_contract_id_in_progress':
                                                                            0,
                                                                        'o_type_id_in_progress':
                                                                            0,
                                                                        'o_type_sub_id_in_progress':
                                                                            0,
                                                                        'o_plan_id_in_progress':
                                                                            0,
                                                                        'o_asset_tag_id_in_progress':
                                                                            0,
                                                                        'o_unit_id_in_progress':
                                                                            0,
                                                                        'o_system_id_in_progress':
                                                                            0,
                                                                        'o_system_parent_id_in_progress':
                                                                            0,
                                                                        'o_unit_type_id_in_progress':
                                                                            0,
                                                                        'o_unit_type_parent_id_in_progress':
                                                                            0,
                                                                        'o_object_id_in_progress':
                                                                            0,
                                                                        'ov_id_in_progress':
                                                                            0,
                                                                        'o_id_in_progress':
                                                                            0,
                                                                        'op_id_in_progress':
                                                                            0,
                                                                        'is_available':
                                                                            true,
                                                                        'is_ov_in_progress':
                                                                            false,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eqOrNull(
                                                                        'id',
                                                                        gcOVETeamUsersItem
                                                                            .userId,
                                                                      ),
                                                                    );
                                                                  }
                                                                  await action_blocks
                                                                      .abOVSelectedTeamUsers(
                                                                    context,
                                                                    abOVId: FFAppState()
                                                                        .stOVSelected
                                                                        .id,
                                                                  );
                                                                  safeSetState(
                                                                      () {});

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ],
                ),
                if (!FFAppState().stOVSelected.ovIsFiled)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.cpDropdownUsersDepartmentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpDropdownUsersDepartmentWidget(
                              cpDepartmentId:
                                  FFAppState().stUserCurrent.departmentId,
                              cpHintText: ' Nome',
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 16.0,
                        borderWidth: 6.0,
                        buttonSize: 50.0,
                        icon: FaIcon(
                          FontAwesomeIcons.plusCircle,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: (_model.cpDropdownUsersDepartmentModel
                                    .dropdownUsersDepartmentValue ==
                                null)
                            ? null
                            : () async {
                                await OrdersVisitsTeamsTable().insert({
                                  'ov_id': FFAppState().stOVSelected.id,
                                  'user_id': _model
                                      .cpDropdownUsersDepartmentModel
                                      .dropdownUsersDepartmentValue,
                                  'is_leader': false,
                                  'version_mode':
                                      FFAppState().stAppVersionMode?.name,
                                });
                                if (FFAppState().stOVSelected.oStatusId == 1) {
                                  await UsersTable().update(
                                    data: {
                                      'is_available': false,
                                      'is_ov_in_progress': true,
                                      'ov_id_in_progress':
                                          FFAppState().stOVSelected.id,
                                      'o_id_in_progress':
                                          FFAppState().stOVSelected.oId,
                                      'op_id_in_progress':
                                          FFAppState().stOVSelected.opId,
                                      'o_contract_id_in_progress':
                                          FFAppState().stOSelected.contractId,
                                      'o_type_id_in_progress':
                                          FFAppState().stOSelected.typeId,
                                      'ov_in_progress_leader_id':
                                          FFAppState().stOSelected.teamLeaderId,
                                      'o_type_sub_id_in_progress':
                                          FFAppState().stOSelected.typeSubId,
                                      'o_plan_id_in_progress':
                                          FFAppState().stOSelected.planId,
                                      'o_asset_tag_id_in_progress':
                                          FFAppState().stOSelected.assetTagId,
                                      'o_unit_id_in_progress':
                                          FFAppState().stOSelected.unitId,
                                      'o_system_id_in_progress':
                                          FFAppState().stOSelected.systemId,
                                      'o_system_parent_id_in_progress':
                                          FFAppState()
                                              .stOSelected
                                              .systemParentId,
                                      'o_unit_type_id_in_progress':
                                          FFAppState().stOSelected.unitTypeId,
                                      'o_unit_type_parent_id_in_progress':
                                          FFAppState()
                                              .stOSelected
                                              .unitTypeParentId,
                                      'o_object_id_in_progress':
                                          FFAppState().stOSelected.objectId,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      FFAppState()
                                          .stOVOpenTeamUsers
                                          .elementAtOrNull(
                                              FFAppState().stCounterLoop)
                                          ?.id,
                                    ),
                                  );
                                }
                                await action_blocks.abOVSelectedTeamUsers(
                                  context,
                                  abOVId: FFAppState().stOVSelected.id,
                                );
                                safeSetState(() {});
                              },
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          _model.isAllowedClose =
                              await action_blocks.abGuardian(
                            context,
                            abPgRequestedId: 2,
                          );
                          _shouldSetState = true;
                          if (_model.isAllowedClose!) {
                            _model.resOVVehiclesCheckClose =
                                await action_blocks.abOVSelectedVehiclesCheck(
                              context,
                              abOVId: widget.cpDtOVE?.id,
                            );
                            _shouldSetState = true;
                            if (_model.resOVVehiclesCheckClose!) {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Deseja ENCERRAR o Atendimento ?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancelar'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirmar'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: MdOVCloseWidget(),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              }
                            } else {
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          } else {
                            context.pushNamed(PgNotAllowedWidget.routeName);

                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (_shouldSetState) safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '498hmmoi' /* ENCERRAR */,
                        ),
                        icon: FaIcon(
                          FontAwesomeIcons.solidThumbsUp,
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                color: FlutterFlowTheme.of(context).success,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w900,
                              ),
                          elevation: 5.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).success,
                            width: 6.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ],
      ),
    );
  }
}
