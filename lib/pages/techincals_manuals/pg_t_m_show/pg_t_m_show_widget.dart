import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/techincals_manuals/cp_t_m_asset_list_item/cp_t_m_asset_list_item_widget.dart';
import '/pages/techincals_manuals/cp_t_m_show/cp_t_m_show_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_t_m_show_model.dart';
export 'pg_t_m_show_model.dart';

class PgTMShowWidget extends StatefulWidget {
  const PgTMShowWidget({super.key});

  static String routeName = 'pgTMShow';
  static String routePath = 'pgTMShow';

  @override
  State<PgTMShowWidget> createState() => _PgTMShowWidgetState();
}

class _PgTMShowWidgetState extends State<PgTMShowWidget>
    with TickerProviderStateMixin {
  late PgTMShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgTMShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.lpsvFilePath =
          'version-${FFAppState().stAppVersionMode?.name}/companies/1/technicals_manuals/${FFAppState().stTMSelected.id.toString()}';
      safeSetState(() {});
      FFAppState().stTMAssetsSearchResults = [];
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
              color: FlutterFlowTheme.of(context).accent4,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'b9x220kp' /* Biblioteca */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  wrapWithModel(
                    model: _model.cpDBUserAvailableModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpDBUserAvailableWidget(
                      toolTip: FFAppState().stUserCurrent.nameShort,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: FFAppConstants.cfgPgWidthMax.toDouble(),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 12.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.cpTMShowModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpTMShowWidget(
                                          cpTMDt: FFAppState().stTMSelected,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (FFAppState().stTMNavBarOption ==
                                          'docs') {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 12.0),
                                          child: Container(
                                            constraints: BoxConstraints(
                                              minWidth: FFAppConstants
                                                  .cfgPgWidthMin
                                                  .toDouble(),
                                              maxWidth: FFAppConstants
                                                  .cfgPgWidthMax
                                                  .toDouble(),
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 0.0, 12.0,
                                                          12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rltzzmt1' /* Documentos */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius: 16.0,
                                                        borderWidth: 6.0,
                                                        buttonSize: 50.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .fileUpload,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 24.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          var _shouldSetState =
                                                              false;
                                                          _model.isAllowed =
                                                              await action_blocks
                                                                  .abGuardian(
                                                            context,
                                                            abPgRequestedId: 13,
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if (_model
                                                              .isAllowed!) {
                                                            if (FFAppState()
                                                                        .stTMSelected
                                                                        .docFileName !=
                                                                    '') {
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('Ops ..'),
                                                                            content:
                                                                                Text('Deseja realmente substituir o documento ?'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: Text('Cancelar'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: Text('Confirmar'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (confirmDialogResponse) {
                                                                _model.lpsvIsUpdate =
                                                                    true;
                                                                _model.lpsvFileNameToDelete =
                                                                    FFAppState()
                                                                        .stTMSelected
                                                                        .docFileName;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model.lpsvIsUpdate =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            } else {
                                                              _model.lpsvIsUpdate =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                            }

                                                            if (_model
                                                                .lpsvIsUpdate) {
                                                              final selectedFiles =
                                                                  await selectFiles(
                                                                storageFolderPath:
                                                                    _model
                                                                        .lpsvFilePath,
                                                                allowedExtensions: [
                                                                  'pdf'
                                                                ],
                                                                multiFile:
                                                                    false,
                                                              );
                                                              if (selectedFiles !=
                                                                  null) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading =
                                                                        true);
                                                                var selectedUploadedFiles =
                                                                    <FFUploadedFile>[];

                                                                var downloadUrls =
                                                                    <String>[];
                                                                try {
                                                                  showUploadMessage(
                                                                    context,
                                                                    'Uploading file...',
                                                                    showLoading:
                                                                        true,
                                                                  );
                                                                  selectedUploadedFiles =
                                                                      selectedFiles
                                                                          .map((m) =>
                                                                              FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls =
                                                                      await uploadSupabaseStorageFiles(
                                                                    bucketName:
                                                                        FFDevEnvironmentValues()
                                                                            .envStorageBucket,
                                                                    selectedFiles:
                                                                        selectedFiles,
                                                                  );
                                                                } finally {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .hideCurrentSnackBar();
                                                                  _model.isDataUploading =
                                                                      false;
                                                                }
                                                                if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedFiles
                                                                            .length &&
                                                                    downloadUrls
                                                                            .length ==
                                                                        selectedFiles
                                                                            .length) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl =
                                                                        downloadUrls
                                                                            .first;
                                                                  });
                                                                  showUploadMessage(
                                                                    context,
                                                                    'Success!',
                                                                  );
                                                                } else {
                                                                  safeSetState(
                                                                      () {});
                                                                  showUploadMessage(
                                                                    context,
                                                                    'Failed to upload file',
                                                                  );
                                                                  return;
                                                                }
                                                              }

                                                              await TechnicalsManualsTable()
                                                                  .update(
                                                                data: {
                                                                  'doc_file_path':
                                                                      _model
                                                                          .lpsvFilePath,
                                                                  'doc_file_name':
                                                                      functions.cfGetFileNameFromFileUrlUploaded(
                                                                          _model
                                                                              .uploadedFileUrl,
                                                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${_model.lpsvFilePath}/'),
                                                                },
                                                                matchingRows:
                                                                    (rows) => rows
                                                                        .eqOrNull(
                                                                  'id',
                                                                  FFAppState()
                                                                      .stTMSelected
                                                                      .id,
                                                                ),
                                                              );
                                                              FFAppState()
                                                                  .updateStTMSelectedStruct(
                                                                (e) => e
                                                                  ..docFilePath =
                                                                      _model
                                                                          .lpsvFilePath
                                                                  ..docFileName =
                                                                      FFDevEnvironmentValues()
                                                                          .envStorageBucket,
                                                              );
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                              await action_blocks
                                                                  .abTMSelected(
                                                                context,
                                                                abTMDt: FFAppState()
                                                                    .stTMSelected,
                                                              );

                                                              context.pushNamed(
                                                                  PgTMShowWidget
                                                                      .routeName);
                                                            }
                                                          } else {
                                                            context.pushNamed(
                                                                PgNotAllowedWidget
                                                                    .routeName);

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 0.0, 12.0,
                                                          12.0),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child:
                                                            FlutterFlowPdfViewer(
                                                          networkPath:
                                                              '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stTMSelected.docFilePath}/${FFAppState().stTMSelected.docFileName}',
                                                          height: 400.0,
                                                          horizontalScroll:
                                                              true,
                                                        ),
                                                      ),
                                                      if (FFAppState()
                                                                  .stTMSelected
                                                                  .docFileName !=
                                                              '')
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderRadius: 16.0,
                                                            borderWidth: 6.0,
                                                            buttonSize: 50.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .fileDownload,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              await launchURL(
                                                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stTMSelected.docFilePath}/${FFAppState().stTMSelected.docFileName}');
                                                            },
                                                          ),
                                                        ),
                                                      if (FFAppState()
                                                                  .stTMSelected
                                                                  .docFileName !=
                                                              '')
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, -1.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                            borderRadius: 16.0,
                                                            borderWidth: 6.0,
                                                            buttonSize: 50.0,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .solidTrashAlt,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 24.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              _model.resIsAllowed =
                                                                  await action_blocks
                                                                      .abGuardian(
                                                                context,
                                                                abPgRequestedId:
                                                                    13,
                                                              );
                                                              if (_model
                                                                  .resIsAllowed!) {
                                                                var confirmDialogResponse =
                                                                    await showDialog<
                                                                            bool>(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: Text('Ops ...'),
                                                                              content: Text('Deseja realmente excluir em definitivo ?'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                  child: Text('Cancelar'),
                                                                                ),
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                  child: Text('Confirmar'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ) ??
                                                                        false;
                                                                if (confirmDialogResponse) {
                                                                  await deleteSupabaseFileFromPublicUrl(
                                                                      '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stTMSelected.docFilePath}/${FFAppState().stTMSelected.docFileName}');
                                                                  await TechnicalsManualsTable()
                                                                      .update(
                                                                    data: {
                                                                      'doc_file_path':
                                                                          null,
                                                                      'doc_file_name':
                                                                          null,
                                                                    },
                                                                    matchingRows:
                                                                        (rows) =>
                                                                            rows.eqOrNull(
                                                                      'id',
                                                                      FFAppState()
                                                                          .stTMSelected
                                                                          .id,
                                                                    ),
                                                                  );
                                                                  FFAppState()
                                                                      .updateStTMSelectedStruct(
                                                                    (e) => e
                                                                      ..docFilePath =
                                                                          null
                                                                      ..docFileName =
                                                                          null,
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                  await action_blocks
                                                                      .abTMSelected(
                                                                    context,
                                                                    abTMDt: FFAppState()
                                                                        .stTMSelected,
                                                                  );
                                                                  safeSetState(
                                                                      () {});

                                                                  context.pushNamed(
                                                                      PgTMShowWidget
                                                                          .routeName);

                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Documento EXCLUIDO !',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .tertiary,
                                                                    ),
                                                                  );
                                                                }
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                1.0,
                                            constraints: BoxConstraints(
                                              minWidth: FFAppConstants
                                                  .cfgPgWidthMin
                                                  .toDouble(),
                                              maxWidth: FFAppConstants
                                                  .cfgPgWidthMax
                                                  .toDouble(),
                                            ),
                                            decoration: BoxDecoration(),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4fxjb7tm' /* Ativos */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Expanded(
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpInputSearchTermsModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                CpInputTextWidget(
                                                              cpIsReadOnly:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity: _model
                                                                          .cpInputSearchTermsModel
                                                                          .inputTextTextController
                                                                          .text ==
                                                                      ''
                                                              ? 0.5
                                                              : 1.0,
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderRadius: 16.0,
                                                            borderWidth: 6.0,
                                                            buttonSize: 50.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .search,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed: (_model
                                                                            .cpInputSearchTermsModel
                                                                            .inputTextTextController
                                                                            .text ==
                                                                        '')
                                                                ? null
                                                                : () async {
                                                                    var _shouldSetState =
                                                                        false;
                                                                    _model.resAssetsList =
                                                                        await ApiAssetsGroup
                                                                            .apiAssetsBySearchTermsAndTypeIdCall
                                                                            .call(
                                                                      apiKey: FFDevEnvironmentValues()
                                                                          .envApiKey,
                                                                      accessToken:
                                                                          currentJwtToken,
                                                                      versionMode: FFAppState()
                                                                          .stAppVersionMode
                                                                          ?.name,
                                                                      typeId: FFAppState()
                                                                          .stTMSelected
                                                                          .assetTypeId,
                                                                      searchTerms: _model
                                                                          .cpInputSearchTermsModel
                                                                          .inputTextTextController
                                                                          .text,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .resAssetsList
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      _model
                                                                          .lpsvAssets = ((_model.resAssetsList?.jsonBody ?? '')
                                                                              .toList()
                                                                              .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
                                                                              .toList() as Iterable<DtAssetStruct?>)
                                                                          .withoutNulls
                                                                          .toList()
                                                                          .cast<DtAssetStruct>();
                                                                      safeSetState(
                                                                          () {});
                                                                      FFAppState()
                                                                          .stTMAssetsSearchResults = ((_model.resAssetsList?.jsonBody ?? '')
                                                                              .toList()
                                                                              .map<DtAssetStruct?>(DtAssetStruct.maybeFromMap)
                                                                              .toList() as Iterable<DtAssetStruct?>)
                                                                          .withoutNulls
                                                                          .toList()
                                                                          .cast<DtAssetStruct>();
                                                                      safeSetState(
                                                                          () {});
                                                                      FFAppState()
                                                                          .stCounterLoop = 0;
                                                                      FFAppState()
                                                                              .stCounterLoopFinal =
                                                                          FFAppState()
                                                                              .stTMAssetsSearchResults
                                                                              .length;
                                                                      safeSetState(
                                                                          () {});
                                                                      while (FFAppState()
                                                                              .stCounterLoop <
                                                                          FFAppState()
                                                                              .stCounterLoopFinal) {
                                                                        FFAppState()
                                                                            .updateStTMAssetsSearchResultsAtIndex(
                                                                          FFAppState()
                                                                              .stCounterLoop,
                                                                          (e) => e
                                                                            ..statusDatetime =
                                                                                functions.cfConvDatetimeBrStringToDatetimeEn(FFAppState().stTMAssetsSearchResults.elementAtOrNull(FFAppState().stCounterLoop)!.statusAt),
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                        FFAppState()
                                                                            .stCounterLoop = FFAppState()
                                                                                .stCounterLoop +
                                                                            1;
                                                                        safeSetState(
                                                                            () {});
                                                                      }
                                                                    } else {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('Ops ...'),
                                                                            content:
                                                                                Text('Houve um erro na localização do ativo. Verifique e tente novamente.'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }

                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: badges.Badge(
                                                            badgeContent: Text(
                                                              FFAppState()
                                                                  .stTMSelected
                                                                  .assetsAmount
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            showBadge: FFAppState()
                                                                    .stTMSelected
                                                                    .assetsAmount >
                                                                0,
                                                            shape: badges
                                                                .BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            elevation: 4.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            position: badges
                                                                    .BadgePosition
                                                                .topEnd(),
                                                            animationType: badges
                                                                .BadgeAnimationType
                                                                .scale,
                                                            toAnimate: true,
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              borderRadius:
                                                                  16.0,
                                                              borderWidth: 6.0,
                                                              buttonSize: 50.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .local_library_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 26.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  () async {
                                                                await action_blocks
                                                                    .abTMSelectedAssets(
                                                                  context,
                                                                  abTMId: FFAppState()
                                                                      .stTMSelected
                                                                      .id,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                        .stTMAssetsSearchResults =
                                                                    FFAppState()
                                                                        .stTMSelectedAssets
                                                                        .toList()
                                                                        .cast<
                                                                            DtAssetStruct>();
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        if (FFAppState()
                                                                .stTMSelected
                                                                .assetsAmount >
                                                            0)
                                                          FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderRadius: 16.0,
                                                            borderWidth: 6.0,
                                                            buttonSize: 50.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .print,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            showLoadingIndicator:
                                                                true,
                                                            onPressed:
                                                                () async {
                                                              await action_blocks
                                                                  .abAssetsSearchFiltersResultsOutput(
                                                                context,
                                                                abOutput: 'pdf',
                                                                abAssets:
                                                                    FFAppState()
                                                                        .stTMSelectedAssets,
                                                                abUserUuid:
                                                                    currentUserUid,
                                                                abUserId:
                                                                    FFAppState()
                                                                        .stUserCurrent
                                                                        .id,
                                                                abRptSubTitle:
                                                                    '${FFAppState().stTMSelected.assetTypeDescription} / ${FFAppState().stTMSelected.tmTypeDescription} / ${FFAppState().stTMSelected.tmDescription}',
                                                              );
                                                            },
                                                          ),
                                                      ].divide(
                                                          SizedBox(width: 8.0)),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Builder(
                                                          builder: (context) {
                                                            final gsTMAssets =
                                                                FFAppState()
                                                                    .stTMAssetsSearchResults
                                                                    .map((e) =>
                                                                        e)
                                                                    .toList();

                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  gsTMAssets
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          12.0),
                                                              itemBuilder: (context,
                                                                  gsTMAssetsIndex) {
                                                                final gsTMAssetsItem =
                                                                    gsTMAssets[
                                                                        gsTMAssetsIndex];
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            18.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FFAppState().stRowsSelected.contains(gsTMAssetsItem
                                                                              .id)
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : Color(
                                                                              0x00000000),
                                                                      width: FFAppState()
                                                                              .stRowsSelected
                                                                              .contains(gsTMAssetsItem.id)
                                                                          ? 6.0
                                                                          : 6.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                          .stRowsSelected = [];
                                                                      safeSetState(
                                                                          () {});
                                                                      FFAppState()
                                                                          .addToStRowsSelected(
                                                                              gsTMAssetsItem.id);
                                                                      safeSetState(
                                                                          () {});
                                                                      await action_blocks
                                                                          .abAssetSelected(
                                                                        context,
                                                                        abAssetDt:
                                                                            gsTMAssetsItem,
                                                                      );

                                                                      context.pushNamed(
                                                                          PgAssetShowWidget
                                                                              .routeName);
                                                                    },
                                                                    child:
                                                                        CpTMAssetListItemWidget(
                                                                      key: Key(
                                                                          'Keycvk_${gsTMAssetsIndex}_of_${gsTMAssets.length}'),
                                                                      cpAssetDt:
                                                                          gsTMAssetsItem,
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation']!);
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        SizedBox(height: 12.0))
                                                    .addToEnd(
                                                        SizedBox(height: 60.0)),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Container(
                                width: 600.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10.0,
                                      color: Color(0x1A57636C),
                                      offset: Offset(
                                        0.0,
                                        -10.0,
                                      ),
                                      spreadRadius: 0.1,
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      icon: FaIcon(
                                        FontAwesomeIcons.filePdf,
                                        color: FFAppState().stTMNavBarOption ==
                                                'docs'
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : Color(0xFF9299A1),
                                        size: 24.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        FFAppState().stTMNavBarOption = 'docs';
                                        safeSetState(() {});
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      icon: FaIcon(
                                        FontAwesomeIcons.solidBuilding,
                                        color: FFAppState().stTMNavBarOption ==
                                                'assets'
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : Color(0xFF9299A1),
                                        size: 24.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        FFAppState().stTMNavBarOption =
                                            'assets';
                                        safeSetState(() {});
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text(FFAppState()
                                                  .stTMSelected
                                                  .id
                                                  .toString()),
                                              content: Text(FFAppState()
                                                  .stTMSelected
                                                  .id
                                                  .toString()),
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
                                        await action_blocks.abTMSelectedAssets(
                                          context,
                                          abTMId: FFAppState().stTMSelected.id,
                                        );
                                        safeSetState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
