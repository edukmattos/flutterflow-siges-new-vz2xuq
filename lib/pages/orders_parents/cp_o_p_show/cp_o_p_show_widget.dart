import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/orders_parents/cp_o_follow/cp_o_follow_widget.dart';
import '/pages/orders_parents/cp_o_p_button/cp_o_p_button_widget.dart';
import '/pages/orders_parents/md_o_p_menu_options/md_o_p_menu_options_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_o_p_show_model.dart';
export 'cp_o_p_show_model.dart';

class CpOPShowWidget extends StatefulWidget {
  const CpOPShowWidget({
    super.key,
    required this.cpOPMenuOptions,
  });

  final bool? cpOPMenuOptions;

  @override
  State<CpOPShowWidget> createState() => _CpOPShowWidgetState();
}

class _CpOPShowWidgetState extends State<CpOPShowWidget>
    with TickerProviderStateMixin {
  late CpOPShowModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOPShowModel());

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
      'cpOPButtonOnPageLoadAnimation': AnimationInfo(
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
        padding: EdgeInsets.all(12.0),
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
                Flexible(
                  child: Container(
                    width: 160.0,
                    height: 70.0,
                    constraints: BoxConstraints(
                      minWidth: 160.0,
                      maxWidth: 300.0,
                    ),
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.cpOPButtonModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CpOPButtonWidget(
                        cpOPId: FFAppState().stOPSelected.id,
                        cpOMask: FFAppState().stOPSelected.orderMask,
                        cpIsRedirect: false,
                        cpButtonHeight: 40,
                        cpODt: FFAppState().stOPSelected,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['cpOPButtonOnPageLoadAnimation']!),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (widget.cpOPMenuOptions ?? true)
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 16.0,
                        borderWidth: 6.0,
                        buttonSize: 50.0,
                        icon: FaIcon(
                          FontAwesomeIcons.ellipsisV,
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
                                child: MdOPMenuOptionsWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                      ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              child: Text(
                                FFAppState().stOPSelected.unitDescription,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
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
                          SelectionArea(
                              child: Text(
                            FFAppState().stOPSelected.assetTagDescription,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyLargeFamily),
                                ),
                          )).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                          SelectionArea(
                              child: Text(
                            FFAppState().stOPSelected.requestedServices,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          )).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation3']!),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (_model.lcsvImgToUpload)
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
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    FFAppState()
                                                    .stOPSelected
                                                    .imgFileName !=
                                                ''
                                        ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOPSelected.imgFilePath}/${FFAppState().stOPSelected.imgFileName}'
                                        : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                    fit: BoxFit.contain,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                  allowRotation: false,
                                  tag: FFAppState()
                                                  .stOPSelected
                                                  .imgFileName !=
                                              ''
                                      ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOPSelected.imgFilePath}/${FFAppState().stOPSelected.imgFileName}'
                                      : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: FFAppState().stOPSelected.imgFileName != ''
                                ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOPSelected.imgFilePath}/${FFAppState().stOPSelected.imgFileName}'
                                : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                FFAppState().stOPSelected.imgFileName !=
                                            ''
                                    ? '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOPSelected.imgFilePath}/${FFAppState().stOPSelected.imgFileName}'
                                    : '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png',
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 300.0,
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        ),
                        if ((FFAppState().stOPSelected.statusId == 1) &&
                            (FFAppState().stOPSelected.createdUserId ==
                                FFAppState().stUserCurrent.id))
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: FlutterFlowIconButton(
                                borderColor: FlutterFlowTheme.of(context).info,
                                borderRadius: 12.0,
                                borderWidth: 6.0,
                                buttonSize: 50.0,
                                fillColor: FlutterFlowTheme.of(context).error,
                                icon: FaIcon(
                                  FontAwesomeIcons.trashAlt,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  var confirmDialogResponse =
                                      await showDialog<bool>(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Ops ...'),
                                                content: Text(
                                                    'Não será possivel recuperar a imagem após a exclusão.'),
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
                                                    child: Text('Confirmar'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                          false;
                                  if (confirmDialogResponse) {
                                    await deleteSupabaseFileFromPublicUrl(
                                        '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOPSelected.imgFilePath}/${FFAppState().stOPSelected.imgFileName}');
                                    await OrdersTable().update(
                                      data: {
                                        'img_file_path': null,
                                        'img_file_name': null,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        FFAppState().stOPSelected.id,
                                      ),
                                    );
                                    await action_blocks.abOSelected(
                                      context,
                                      abOId: FFAppState().stOPSelected.id,
                                      abIsParent: true,
                                      abIsNew: false,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        if ((FFAppState().stOPSelected.statusId == 1) &&
                            (FFAppState().stOPSelected.createdUserId ==
                                FFAppState().stUserCurrent.id))
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: FlutterFlowIconButton(
                                borderColor: FlutterFlowTheme.of(context).info,
                                borderRadius: 16.0,
                                borderWidth: 6.0,
                                buttonSize: 50.0,
                                fillColor: Color(0xFF9E9E9E),
                                icon: Icon(
                                  Icons.linked_camera_outlined,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 32.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  _model.lcsvFilePath =
                                      'version-${FFAppState().stAppVersionMode?.name}/companies/1/orders/${FFAppState().stOPSelected.id.toString()}';
                                  safeSetState(() {});
                                  if (FFAppState().stOPSelected.imgFileName ==
                                          '') {
                                    // Dont Exist
                                    _model.lcsvIsThereFileName = false;
                                    safeSetState(() {});
                                  } else {
                                    // Exist
                                    _model.lcsvIsThereFileName = true;
                                    _model.lcsvFileNameToDelete =
                                        '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOPSelected.imgFilePath}/${FFAppState().stOPSelected.imgFileName}';
                                    safeSetState(() {});
                                  }

                                  if (_model.lcsvIsThereFileName) {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Ops ...'),
                                                  content: Text(
                                                      'Deseja alterar imagem ? Caso confirme, não será possivel recuperar imagem.'),
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
                                                      child: Text('Confirmar'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await deleteSupabaseFileFromPublicUrl(
                                          _model.lcsvFileNameToDelete!);
                                    } else {
                                      return;
                                    }
                                  }
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    storageFolderPath: _model.lcsvFilePath,
                                    maxWidth: 500.00,
                                    maxHeight: 500.00,
                                    imageQuality: 100,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(
                                        () => _model.isDataUploading = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls =
                                          await uploadSupabaseStorageFiles(
                                        bucketName: FFDevEnvironmentValues()
                                            .envStorageBucket,
                                        selectedFiles: selectedMedia,
                                      );
                                    } finally {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      _model.isDataUploading = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl =
                                            downloadUrls.first;
                                      });
                                      showUploadMessage(context, 'Success!');
                                    } else {
                                      safeSetState(() {});
                                      showUploadMessage(
                                          context, 'Failed to upload data');
                                      return;
                                    }
                                  }

                                  await OrdersTable().update(
                                    data: {
                                      'img_file_path': _model.lcsvFilePath,
                                      'img_file_name': functions
                                          .cfGetFileNameFromFileUrlUploaded(
                                              _model.uploadedFileUrl,
                                              '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${_model.lcsvFilePath}/'),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      FFAppState().stOPSelected.id,
                                    ),
                                  );
                                  await action_blocks.abOSelected(
                                    context,
                                    abOId: FFAppState().stOPSelected.id,
                                    abIsParent: true,
                                    abIsNew: false,
                                  );
                                  safeSetState(() {});
                                },
                              ),
                            ),
                          ),
                      ],
                    ),
                  ).animateOnPageLoad(
                      animationsMap['stackOnPageLoadAnimation']!),
                ),
              ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (FFAppState().stOPSelected.imgFileName != '')
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
                      if (_model.lcsvImgToUpload == true) {
                        _model.lcsvImgToUpload = false;
                        safeSetState(() {});
                      } else {
                        _model.lcsvImgToUpload = true;
                        safeSetState(() {});
                      }
                    },
                  ),
                if (FFAppState().stOPSelected.imgFileName == '')
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 16.0,
                    borderWidth: 6.0,
                    buttonSize: 50.0,
                    icon: FaIcon(
                      FontAwesomeIcons.cameraRetro,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      if (_model.lcsvImgToUpload == true) {
                        _model.lcsvImgToUpload = false;
                        safeSetState(() {});
                      } else {
                        _model.lcsvImgToUpload = true;
                        safeSetState(() {});
                      }
                    },
                  ),
                Container(
                  height: 50.0,
                  child: wrapWithModel(
                    model: _model.cpOFollowModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpOFollowWidget(
                      cpOPId: FFAppState().stOPSelected.id,
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    ).animateOnPageLoad(animationsMap['cardOnPageLoadAnimation']!);
  }
}
