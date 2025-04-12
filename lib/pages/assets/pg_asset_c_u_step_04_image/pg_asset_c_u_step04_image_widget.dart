import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/assets/cp_asset_show_card/cp_asset_show_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_asset_c_u_step04_image_model.dart';
export 'pg_asset_c_u_step04_image_model.dart';

class PgAssetCUStep04ImageWidget extends StatefulWidget {
  const PgAssetCUStep04ImageWidget({
    super.key,
    required this.ppOperation,
  });

  final String? ppOperation;

  static String routeName = 'pgAssetCUStep_04_image';
  static String routePath = 'pgAssetCUStep04Image';

  @override
  State<PgAssetCUStep04ImageWidget> createState() =>
      _PgAssetCUStep04ImageWidgetState();
}

class _PgAssetCUStep04ImageWidgetState extends State<PgAssetCUStep04ImageWidget>
    with TickerProviderStateMixin {
  late PgAssetCUStep04ImageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetCUStep04ImageModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
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
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 110.0),
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
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.ppOperation == 'create' ? 'Novo Ativo' : 'Editar Ativo',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: FlutterFlowTheme.of(context).info,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
            ],
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                        maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                      ),
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpAssetShowCardModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpAssetShowCardWidget(
                                cpAssetDt: FFAppState().stAssetSelected,
                              ),
                            ),
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      height: 300.0,
                                      constraints: BoxConstraints(
                                        maxWidth: 360.0,
                                      ),
                                      decoration: BoxDecoration(),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 400.0,
                                        height: 250.0,
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child:
                                                        FlutterFlowExpandedImageView(
                                                      image: Image.network(
                                                        FFAppState()
                                                                        .stAssetSelected
                                                                        .imgFileName !=
                                                                    ''
                                                            ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stAssetSelected.imgFilePath}/${FFAppState().stAssetSelected.imgFileName}'
                                                            : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                                        fit: BoxFit.contain,
                                                        alignment:
                                                            Alignment(0.0, 0.0),
                                                      ),
                                                      allowRotation: false,
                                                      tag: FFAppState()
                                                                      .stAssetSelected
                                                                      .imgFileName !=
                                                                  ''
                                                          ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stAssetSelected.imgFilePath}/${FFAppState().stAssetSelected.imgFileName}'
                                                          : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                                      useHeroAnimation: true,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Hero(
                                                tag: FFAppState()
                                                                .stAssetSelected
                                                                .imgFileName !=
                                                            ''
                                                    ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stAssetSelected.imgFilePath}/${FFAppState().stAssetSelected.imgFileName}'
                                                    : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: Image.network(
                                                    FFAppState()
                                                                    .stAssetSelected
                                                                    .imgFileName !=
                                                                ''
                                                        ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stAssetSelected.imgFilePath}/${FFAppState().stAssetSelected.imgFileName}'
                                                        : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 300.0,
                                                    fit: BoxFit.cover,
                                                    alignment:
                                                        Alignment(0.0, 0.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if ((FFAppState()
                                                        .stOPSelected
                                                        .statusId ==
                                                    1) &&
                                                (FFAppState()
                                                        .stOPSelected
                                                        .createdUserId ==
                                                    FFAppState()
                                                        .stUserCurrent
                                                        .id))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    borderRadius: 12.0,
                                                    borderWidth: 6.0,
                                                    buttonSize: 50.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.trashAlt,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {},
                                                  ),
                                                ),
                                              ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                  borderRadius: 16.0,
                                                  borderWidth: 6.0,
                                                  buttonSize: 50.0,
                                                  fillColor: Color(0xFF9E9E9E),
                                                  icon: Icon(
                                                    Icons
                                                        .linked_camera_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    size: 32.0,
                                                  ),
                                                  showLoadingIndicator: true,
                                                  onPressed: () async {
                                                    _model.lpsvFilePath =
                                                        'version-${FFAppState().stAppVersionMode?.name}/companies/1/assets/${FFAppState().stAssetSelected.id.toString()}';
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                                .stAssetSelected
                                                                .imgFileName ==
                                                            '') {
                                                      // Dont Exist
                                                      _model.lpsvIsThereFileName =
                                                          false;
                                                      safeSetState(() {});
                                                    } else {
                                                      // Exist
                                                      _model.lpsvIsThereFileName =
                                                          true;
                                                      _model.lpsvFileNameToDelete =
                                                          FFAppState()
                                                              .stAssetSelected
                                                              .imgFileName;
                                                      safeSetState(() {});
                                                    }

                                                    if (_model
                                                        .lpsvIsThereFileName) {
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Ops ...'),
                                                                    content: Text(
                                                                        'Deseja alterar imagem ? Caso confirme, não será possivel recuperar imagem.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: Text(
                                                                            'Cancelar'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                        child: Text(
                                                                            'Confirmar'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ) ??
                                                              false;
                                                      if (confirmDialogResponse) {
                                                      } else {
                                                        return;
                                                      }
                                                    }
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      storageFolderPath:
                                                          _model.lpsvFilePath,
                                                      maxWidth: 500.00,
                                                      maxHeight: 500.00,
                                                      imageQuality: 100,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      safeSetState(() => _model
                                                              .isDataUploading =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        showUploadMessage(
                                                          context,
                                                          'Uploading file...',
                                                          showLoading: true,
                                                        );
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      height: m
                                                                          .dimensions
                                                                          ?.height,
                                                                      width: m
                                                                          .dimensions
                                                                          ?.width,
                                                                      blurHash:
                                                                          m.blurHash,
                                                                    ))
                                                                .toList();

                                                        downloadUrls =
                                                            await uploadSupabaseStorageFiles(
                                                          bucketName:
                                                              FFDevEnvironmentValues()
                                                                  .envStorageBucket,
                                                          selectedFiles:
                                                              selectedMedia,
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
                                                              selectedMedia
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFile =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                        showUploadMessage(
                                                            context,
                                                            'Success!');
                                                      } else {
                                                        safeSetState(() {});
                                                        showUploadMessage(
                                                            context,
                                                            'Failed to upload data');
                                                        return;
                                                      }
                                                    }

                                                    await AssetsTable().update(
                                                      data: {
                                                        'img_file_path':
                                                            _model.lpsvFilePath,
                                                        'img_file_name': functions
                                                            .cfGetFileNameFromFileUrlUploaded(
                                                                _model
                                                                    .uploadedFileUrl,
                                                                '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${_model.lpsvFilePath}/'),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        FFAppState()
                                                            .stAssetSelected
                                                            .id,
                                                      ),
                                                    );
                                                    await action_blocks
                                                        .abAssetSelected(
                                                      context,
                                                      abAssetId: FFAppState()
                                                          .stAssetSelected
                                                          .id,
                                                    );
                                                    safeSetState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'stackOnPageLoadAnimation']!),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (Navigator.of(context)
                                                  .canPop()) {
                                                context.pop();
                                              }
                                              context.pushNamed(
                                                  PgAssetShowWidget.routeName);
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '4v85q86p' /* CANCELAR */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                              elevation: 5.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (Navigator.of(context)
                                                  .canPop()) {
                                                context.pop();
                                              }
                                              context.pushNamed(
                                                  PgAssetShowWidget.routeName);
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'c75rlb2y' /* CONFIRMAR */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 5.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ].addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
