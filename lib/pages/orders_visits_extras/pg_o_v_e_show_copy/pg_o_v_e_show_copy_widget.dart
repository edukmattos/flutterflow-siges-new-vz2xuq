import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_users_department/cp_dropdown_users_department_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_button_disabled/cp_o_button_disabled_widget.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_e_show_copy_model.dart';
export 'pg_o_v_e_show_copy_model.dart';

class PgOVEShowCopyWidget extends StatefulWidget {
  const PgOVEShowCopyWidget({super.key});

  static String routeName = 'pgOVEShowCopy';
  static String routePath = 'pgOVEShowCopy';

  @override
  State<PgOVEShowCopyWidget> createState() => _PgOVEShowCopyWidgetState();
}

class _PgOVEShowCopyWidgetState extends State<PgOVEShowCopyWidget>
    with TickerProviderStateMixin {
  late PgOVEShowCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVEShowCopyModel());

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
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => safeSetState(() {}),
            child: CpMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '0bm77j3v' /* Extraordinário */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.cpDBUserAvailableModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpDBUserAvailableWidget(
                      toolTip: 'teste',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                        maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            FFAppState().stOVESelected.oMask,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Container(
                                                  width: 160.0,
                                                  constraints: BoxConstraints(
                                                    minWidth: 160.0,
                                                    maxWidth: 300.0,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (!true)
                                                        wrapWithModel(
                                                          model: _model
                                                              .cpOButtonDisabledModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              CpOButtonDisabledWidget(
                                                            cpOMask: FFAppState()
                                                                .stOVESelected
                                                                .oMask,
                                                            cpOTypeCode:
                                                                FFAppState()
                                                                    .stOVESelected
                                                                    .oTypeCode,
                                                            cpOTypeSubCode: '.',
                                                            cpOPriorityCode:
                                                                FFAppState()
                                                                    .stOVESelected
                                                                    .priorityCode,
                                                            cpOObjectCode:
                                                                'SRV',
                                                            cpOPriorityId:
                                                                FFAppState()
                                                                    .stOVESelected
                                                                    .priorityId,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model: _model.cpCompanyLogoModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CpCompanyLogoWidget(
                                                cpSize: 50,
                                                cpImgUrl:
                                                    '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVESelected.providerCompanyImgFilePath}/${FFAppState().stOVESelected.providerCompanyImgFileName}',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 4.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .stOVESelected
                                                    .unitDescription,
                                                'Unidade',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMediumFamily),
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation1']!),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .stOVESelected
                                                .assetTagDescription,
                                            'Setor',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily),
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .stOVESelected
                                                .requestedServices,
                                            'Serviços a realizar',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation3']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await action_blocks
                                              .abOVSelected(context);
                                        },
                                        text:
                                            'PSE${FFAppState().stOVESelected.id.toString()}',
                                        options: FFButtonOptions(
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'buttonOnPageLoadAnimation']!),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.cpOVProcessingModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpOVProcessingWidget(
                                          cpProcessingDescription: FFAppState()
                                              .stOVESelected
                                              .processingDescription,
                                          cpProcessingId: FFAppState()
                                              .stOVESelected
                                              .processingId,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    '${dateTimeFormat(
                                      "dd/MM/y HH:mm",
                                      FFAppState()
                                          .stOVESelected
                                          .startedDatetime,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )} h'
                                        .maybeHandleOverflow(
                                      maxChars: 16,
                                    ),
                                    minFontSize: 12.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation4']!),
                                  AutoSizeText(
                                    '(${functions.cfConvDoubleToCurrency2Decimals(FFAppState().stOVESelected.durationHours.toString(), 2)}h )'
                                        .maybeHandleOverflow(
                                      maxChars: 16,
                                    ),
                                    minFontSize: 12.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily),
                                        ),
                                  ),
                                  AutoSizeText(
                                    '${dateTimeFormat(
                                      "dd/MM/y HH:mm",
                                      FFAppState().stOVESelected.endedDatetime,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )} h'
                                        .maybeHandleOverflow(
                                      maxChars: 16,
                                    ),
                                    minFontSize: 12.0,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation5']!),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: 65.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(),
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
                                          model: _model
                                              .cpDropdownUsersDepartmentModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child:
                                              CpDropdownUsersDepartmentWidget(
                                            cpDepartmentId: FFAppState()
                                                .stUserCurrent
                                                .departmentId,
                                            cpHintText: ' Nome',
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 16.0,
                                      borderWidth: 6.0,
                                      buttonSize: 50.0,
                                      icon: FaIcon(
                                        FontAwesomeIcons.plusCircle,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: (_model
                                                  .cpDropdownUsersDepartmentModel
                                                  .dropdownUsersDepartmentValue ==
                                              null)
                                          ? null
                                          : () async {
                                              await OrdersVisitsTeamsTable()
                                                  .insert({
                                                'ov_id': FFAppState()
                                                    .stOVSelected
                                                    .id,
                                                'user_id': _model
                                                    .cpDropdownUsersDepartmentModel
                                                    .dropdownUsersDepartmentValue,
                                                'is_leader': false,
                                                'version_mode': FFAppState()
                                                    .stAppVersionMode
                                                    ?.name,
                                              });
                                              if (FFAppState()
                                                      .stOVSelected
                                                      .oStatusId ==
                                                  1) {
                                                await UsersTable().update(
                                                  data: {
                                                    'is_available': false,
                                                    'is_ov_in_progress': true,
                                                    'ov_id_in_progress':
                                                        FFAppState()
                                                            .stOVSelected
                                                            .id,
                                                    'o_id_in_progress':
                                                        FFAppState()
                                                            .stOVSelected
                                                            .oId,
                                                    'op_id_in_progress':
                                                        FFAppState()
                                                            .stOVSelected
                                                            .opId,
                                                    'o_contract_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .contractId,
                                                    'o_type_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .typeId,
                                                    'ov_in_progress_leader_id':
                                                        FFAppState()
                                                            .stOSelected
                                                            .teamLeaderId,
                                                    'o_type_sub_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .typeSubId,
                                                    'o_plan_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .planId,
                                                    'o_asset_tag_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .assetTagId,
                                                    'o_unit_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .unitId,
                                                    'o_system_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .systemId,
                                                    'o_system_parent_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .systemParentId,
                                                    'o_unit_type_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .unitTypeId,
                                                    'o_unit_type_parent_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .unitTypeParentId,
                                                    'o_object_id_in_progress':
                                                        FFAppState()
                                                            .stOSelected
                                                            .objectId,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    FFAppState()
                                                        .stOVOpenTeamUsers
                                                        .elementAtOrNull(
                                                            FFAppState()
                                                                .stCounterLoop)
                                                        ?.id,
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
                                              safeSetState(() {});
                                            },
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
