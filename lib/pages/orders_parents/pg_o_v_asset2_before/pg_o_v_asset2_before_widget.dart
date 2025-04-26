import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/orders_parents/md_o_v_asset_to_disapprove/md_o_v_asset_to_disapprove_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset2_before_model.dart';
export 'pg_o_v_asset2_before_model.dart';

class PgOVAsset2BeforeWidget extends StatefulWidget {
  const PgOVAsset2BeforeWidget({
    super.key,
    String? ppOperation,
  }) : this.ppOperation = ppOperation ?? 'before';

  final String ppOperation;

  static String routeName = 'pgOVAsset2Before';
  static String routePath = 'pgOVAsset2Before';

  @override
  State<PgOVAsset2BeforeWidget> createState() => _PgOVAsset2BeforeWidgetState();
}

class _PgOVAsset2BeforeWidgetState extends State<PgOVAsset2BeforeWidget>
    with TickerProviderStateMixin {
  late PgOVAsset2BeforeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset2BeforeModel());

    _model.textController ??= TextEditingController(
        text: widget.ppOperation == 'before'
            ? FFAppState().stOVSelectedAsset.beforeComments
            : FFAppState().stOVSelectedAsset.afterComments);
    _model.textFieldFocusNode ??= FocusNode();

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
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '8vwznsgb' /* Atendimento */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: Colors.white,
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                      maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                    ),
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: wrapWithModel(
                                  model: _model.cpOVAssetListItemCardModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpOVAssetListItemCardWidget(),
                                ),
                              ),
                              back: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minHeight: 250.0,
                                  maxHeight: 400.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: wrapWithModel(
                                  model: _model.cpAssetDatasheetsModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpAssetDatasheetsWidget(
                                    cpAssetDt: FFAppState().stAssetSelected,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (widget.ppOperation == 'before') {
                                      // Exist
                                      _model.lpsvFileNameToDelete =
                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                      safeSetState(() {});
                                      await OrdersVisitsAssetsTable().update(
                                        data: {
                                          'before_img_file_path': null,
                                          'before_img_file_name': null,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          FFAppState().stOVSelectedAsset.id,
                                        ),
                                      );
                                      FFAppState()
                                          .updateStOVSelectedAssetStruct(
                                        (e) => e
                                          ..beforeImgFilePath = null
                                          ..beforeImgFileName = null,
                                      );
                                      safeSetState(() {});
                                    } else {
                                      // Exist
                                      _model.lpsvFileNameToDelete =
                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                      safeSetState(() {});
                                      await OrdersVisitsAssetsTable().update(
                                        data: {
                                          'after_img_file_path': null,
                                          'after_img_file_name': null,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          FFAppState().stOVSelectedAsset.id,
                                        ),
                                      );
                                      FFAppState()
                                          .updateStOVSelectedAssetStruct(
                                        (e) => e
                                          ..afterImgFilePath = null
                                          ..afterImgFileName = null,
                                      );
                                      FFAppState().update(() {});
                                    }
                                  },
                                  child: wrapWithModel(
                                    model: _model.cpAssetViewsModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpAssetViewsWidget(),
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().stAssetNavBarOption == '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          widget.ppOperation == 'before'
                                              ? 'Condição ANTES'
                                              : 'Condição FINAL',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Container(
                                          height: 300.0,
                                          constraints: BoxConstraints(
                                            maxWidth: 360.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 400.0,
                                            height: 250.0,
                                            child: Stack(
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        child:
                                                            FlutterFlowExpandedImageView(
                                                          image: Image.network(
                                                            () {
                                                              if ((widget.ppOperation ==
                                                                      'before') &&
                                                                  (FFAppState()
                                                                              .stOVSelectedAsset
                                                                              .beforeImgFileName !=
                                                                          '')) {
                                                                return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                              } else if ((widget
                                                                          .ppOperation ==
                                                                      'after') &&
                                                                  (FFAppState()
                                                                              .stOVSelectedAsset
                                                                              .afterImgFileName !=
                                                                          '')) {
                                                                return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                                              } else {
                                                                return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png';
                                                              }
                                                            }(),
                                                            fit: BoxFit.contain,
                                                            alignment:
                                                                Alignment(
                                                                    0.0, 0.0),
                                                            errorBuilder: (context,
                                                                    error,
                                                                    stackTrace) =>
                                                                Image.asset(
                                                              'assets/images/error_image.png',
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0.0),
                                                            ),
                                                          ),
                                                          allowRotation: false,
                                                          tag: () {
                                                            if ((widget.ppOperation ==
                                                                    'before') &&
                                                                (FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .beforeImgFileName !=
                                                                        '')) {
                                                              return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                            } else if ((widget
                                                                        .ppOperation ==
                                                                    'after') &&
                                                                (FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .afterImgFileName !=
                                                                        '')) {
                                                              return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                                            } else {
                                                              return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png';
                                                            }
                                                          }(),
                                                          useHeroAnimation:
                                                              true,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Hero(
                                                    tag: () {
                                                      if ((widget.ppOperation ==
                                                              'before') &&
                                                          (FFAppState()
                                                                      .stOVSelectedAsset
                                                                      .beforeImgFileName !=
                                                                  '')) {
                                                        return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                      } else if ((widget
                                                                  .ppOperation ==
                                                              'after') &&
                                                          (FFAppState()
                                                                      .stOVSelectedAsset
                                                                      .afterImgFileName !=
                                                                  '')) {
                                                        return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                                      } else {
                                                        return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png';
                                                      }
                                                    }(),
                                                    transitionOnUserGestures:
                                                        true,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      child: Image.network(
                                                        () {
                                                          if ((widget.ppOperation ==
                                                                  'before') &&
                                                              (FFAppState()
                                                                          .stOVSelectedAsset
                                                                          .beforeImgFileName !=
                                                                      '')) {
                                                            return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                          } else if ((widget
                                                                      .ppOperation ==
                                                                  'after') &&
                                                              (FFAppState()
                                                                          .stOVSelectedAsset
                                                                          .afterImgFileName !=
                                                                      '')) {
                                                            return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                                          } else {
                                                            return '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/settings/images/noImage.png';
                                                          }
                                                        }(),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment(0.0, 0.0),
                                                        errorBuilder: (context,
                                                                error,
                                                                stackTrace) =>
                                                            Image.asset(
                                                          'assets/images/error_image.png',
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  1.0,
                                                          fit: BoxFit.cover,
                                                          alignment: Alignment(
                                                              0.0, 0.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (() {
                                                  if (FFAppState()
                                                          .stOVSelectedAsset
                                                          .processingId !=
                                                      5) {
                                                    return true;
                                                  } else if ((widget
                                                              .ppOperation ==
                                                          'before') &&
                                                      (FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .beforeImgFileName !=
                                                              '')) {
                                                    return true;
                                                  } else if ((widget
                                                              .ppOperation ==
                                                          'after') &&
                                                      (FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .afterImgFileName !=
                                                              '')) {
                                                    return true;
                                                  } else {
                                                    return false;
                                                  }
                                                }())
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child:
                                                          FlutterFlowIconButton(
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
                                                          FontAwesomeIcons
                                                              .trashAlt,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 24.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
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
                                                                        content:
                                                                            Text('Deseja realmente ecluir ?'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, false),
                                                                            child:
                                                                                Text('Cancelar'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, true),
                                                                            child:
                                                                                Text('Confirmar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  ) ??
                                                                  false;
                                                          if (confirmDialogResponse) {
                                                            if (widget
                                                                    .ppOperation ==
                                                                'before') {
                                                              // Exist
                                                              _model.lpsvFileNameToDelete =
                                                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                              safeSetState(
                                                                  () {});
                                                              await OrdersVisitsAssetsTable()
                                                                  .update(
                                                                data: {
                                                                  'before_img_file_path':
                                                                      null,
                                                                  'before_img_file_name':
                                                                      null,
                                                                },
                                                                matchingRows:
                                                                    (rows) => rows
                                                                        .eqOrNull(
                                                                  'id',
                                                                  FFAppState()
                                                                      .stOVSelectedAsset
                                                                      .id,
                                                                ),
                                                              );
                                                              FFAppState()
                                                                  .updateStOVSelectedAssetStruct(
                                                                (e) => e
                                                                  ..beforeImgFilePath =
                                                                      null
                                                                  ..beforeImgFileName =
                                                                      null,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              // Exist
                                                              _model.lpsvFileNameToDelete =
                                                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                                              safeSetState(
                                                                  () {});
                                                              await OrdersVisitsAssetsTable()
                                                                  .update(
                                                                data: {
                                                                  'after_img_file_path':
                                                                      null,
                                                                  'after_img_file_name':
                                                                      null,
                                                                },
                                                                matchingRows:
                                                                    (rows) => rows
                                                                        .eqOrNull(
                                                                  'id',
                                                                  FFAppState()
                                                                      .stOVSelectedAsset
                                                                      .id,
                                                                ),
                                                              );
                                                              FFAppState()
                                                                  .updateStOVSelectedAssetStruct(
                                                                (e) => e
                                                                  ..afterImgFilePath =
                                                                      null
                                                                  ..afterImgFileName =
                                                                      null,
                                                              );
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                            }

                                                            await deleteSupabaseFileFromPublicUrl(
                                                                _model
                                                                    .lpsvFileNameToDelete!);
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                if (!FFAppState()
                                                    .stOVSelected
                                                    .ovIsFiled)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        borderRadius: 16.0,
                                                        borderWidth: 6.0,
                                                        buttonSize: 50.0,
                                                        fillColor:
                                                            Color(0xFF9E9E9E),
                                                        icon: Icon(
                                                          Icons
                                                              .linked_camera_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 32.0,
                                                        ),
                                                        showLoadingIndicator:
                                                            true,
                                                        onPressed: () async {
                                                          _model.lpsvFilePath =
                                                              'version-${FFAppState().stAppVersionMode?.name}/companies/1/assets/${FFAppState().stOVSelectedAsset.assetId.toString()}';
                                                          safeSetState(() {});
                                                          if (widget
                                                                  .ppOperation ==
                                                              'before') {
                                                            if (FFAppState()
                                                                        .stOVSelectedAsset
                                                                        .beforeImgFileName ==
                                                                    '') {
                                                              // Dont Exist
                                                              _model.lpsvIsThereFileName =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              // Exist
                                                              _model.lpsvIsThereFileName =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              // Exist
                                                              _model.lpsvFileNameToDelete =
                                                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}';
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          } else {
                                                            if (FFAppState()
                                                                        .stOVSelectedAsset
                                                                        .afterImgFileName ==
                                                                    '') {
                                                              // Dont Exist
                                                              _model.lpsvIsThereFileName =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              // Exist
                                                              _model.lpsvIsThereFileName =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              // Exist
                                                              _model.lpsvFileNameToDelete =
                                                                  '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}';
                                                              safeSetState(
                                                                  () {});
                                                            }
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
                                                                          title:
                                                                              Text('Ops ...'),
                                                                          content:
                                                                              Text('Deseja alterar imagem ? Caso confirme, não será possivel recuperar imagem.'),
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
                                                                  _model
                                                                      .lpsvFileNameToDelete!);
                                                            } else {
                                                              return;
                                                            }
                                                          }
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            storageFolderPath:
                                                                _model
                                                                    .lpsvFilePath,
                                                            maxWidth: 500.00,
                                                            maxHeight: 500.00,
                                                            imageQuality: 100,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
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
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
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
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
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
                                                              safeSetState(
                                                                  () {});
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload data');
                                                              return;
                                                            }
                                                          }

                                                          if (widget
                                                                  .ppOperation ==
                                                              'before') {
                                                            await OrdersVisitsAssetsTable()
                                                                .update(
                                                              data: {
                                                                'before_img_file_path':
                                                                    _model
                                                                        .lpsvFilePath,
                                                                'before_img_file_name':
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
                                                                    .stOVSelectedAsset
                                                                    .id,
                                                              ),
                                                            );
                                                          } else {
                                                            await OrdersVisitsAssetsTable()
                                                                .update(
                                                              data: {
                                                                'after_img_file_path':
                                                                    _model
                                                                        .lpsvFilePath,
                                                                'after_img_file_name':
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
                                                                    .stOVSelectedAsset
                                                                    .id,
                                                              ),
                                                            );
                                                          }

                                                          await action_blocks
                                                              .abOVSelectedAsset(
                                                            context,
                                                            abOVAssetId:
                                                                FFAppState()
                                                                    .stOVSelectedAsset
                                                                    .id,
                                                          );
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
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              autofillHints: [
                                                AutofillHints.name
                                              ],
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              readOnly: FFAppState()
                                                      .stOVSelectedAsset
                                                      .processingId ==
                                                  4,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'f92spvow' /* Condição do Ativo */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: widget.ppOperation ==
                                                        'before'
                                                    ? 'Informe as condições encontradas '
                                                    : 'Informe a condição final do ativo.',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 12.0,
                                                            0.0, 12.0),
                                                suffixIcon: _model
                                                        .textController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model.textController
                                                              ?.clear();
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color:
                                                              Color(0xFF757575),
                                                          size: 22.0,
                                                        ),
                                                      )
                                                    : null,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: 5,
                                              minLines: 2,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                              ],
                                            ),
                                            if (widget.ppOperation == 'before')
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      if (FFAppState()
                                                              .stOVSelectedAsset
                                                              .processingId ==
                                                          4) {
                                                        if (widget
                                                                .ppOperation ==
                                                            'before') {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    Text('111'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          if (Navigator.of(
                                                                  context)
                                                              .canPop()) {
                                                            context.pop();
                                                          }
                                                          context.pushNamed(
                                                              PgOVAsset3ActivitesSearchWidget
                                                                  .routeName);
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    Text('222'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        }
                                                      } else {
                                                        if (widget
                                                                .ppOperation ==
                                                            'before') {
                                                          if (_model.textController
                                                                      .text !=
                                                                  '') {
                                                            await OrdersVisitsAssetsTable()
                                                                .update(
                                                              data: {
                                                                'before_comments':
                                                                    _model
                                                                        .textController
                                                                        .text,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                FFAppState()
                                                                    .stOVSelectedAsset
                                                                    .id,
                                                              ),
                                                            );
                                                            await action_blocks
                                                                .abOVSelectedAsset(
                                                              context,
                                                              abOVAssetId:
                                                                  FFAppState()
                                                                      .stOVSelectedAsset
                                                                      .id,
                                                            );
                                                            safeSetState(() {});
                                                            if (Navigator.of(
                                                                    context)
                                                                .canPop()) {
                                                              context.pop();
                                                            }
                                                            context.pushNamed(
                                                                PgOVAsset3ActivitesSearchWidget
                                                                    .routeName);
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Ops ...'),
                                                                  content: Text(
                                                                      'Informar a condição ANTES do ativo.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          }
                                                        } else {
                                                          if (_model.textController
                                                                      .text !=
                                                                  '') {
                                                            await OrdersVisitsAssetsTable()
                                                                .update(
                                                              data: {
                                                                'after_comments':
                                                                    _model
                                                                        .textController
                                                                        .text,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                FFAppState()
                                                                    .stOVSelectedAsset
                                                                    .id,
                                                              ),
                                                            );
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Ops ...'),
                                                                  content: Text(
                                                                      'Informar a condição DEPOIS do ativo.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'l64rwywy' /* Salvar */,
                                                    ),
                                                    icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .arrowRight,
                                                      size: 15.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconAlignment:
                                                          IconAlignment.end,
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        width: 6.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            Container(
                                              width: double.infinity,
                                              height: 120.0,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  if (widget.ppOperation ==
                                                      'after')
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        if ((FFAppState()
                                                                    .stOVSelectedAsset
                                                                    .processingId ==
                                                                1) ||
                                                            (FFAppState()
                                                                    .stOVSelectedAsset
                                                                    .processingId ==
                                                                4))
                                                          Container(
                                                            width: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'e387hjez' /* Situação ? */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleLarge,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    borderRadius:
                                                                        16.0,
                                                                    borderWidth:
                                                                        6.0,
                                                                    buttonSize:
                                                                        50.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .draw,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    showLoadingIndicator:
                                                                        true,
                                                                    onPressed:
                                                                        () async {
                                                                      if (widget
                                                                              .ppOperation ==
                                                                          'before') {
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Ops ...'),
                                                                                  content: Text('Deseja manter em RASCUNHO ?'),
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
                                                                          await OrdersVisitsAssetsTable()
                                                                              .update(
                                                                            data: {
                                                                              'before_comments': _model.textController.text,
                                                                              'processing_id': 1,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              FFAppState().stOVSelectedAsset.id,
                                                                            ),
                                                                          );
                                                                        }
                                                                      } else {
                                                                        if (_model.textController.text !=
                                                                                '') {
                                                                          await OrdersVisitsAssetsTable()
                                                                              .update(
                                                                            data: {
                                                                              'after_comments': _model.textController.text,
                                                                              'processing_id': 1,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              FFAppState().stOVSelectedAsset.id,
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('Ops ...'),
                                                                                content: Text('Informar a condição FINAL do ativo.'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                          return;
                                                                        }
                                                                      }

                                                                      await action_blocks
                                                                          .abOVSelectedAssetsUpdate(
                                                                        context,
                                                                        abOVId: FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .ovId,
                                                                      );
                                                                      if (Navigator.of(
                                                                              context)
                                                                          .canPop()) {
                                                                        context
                                                                            .pop();
                                                                      }
                                                                      context.pushNamed(
                                                                          PgOVShowWidget
                                                                              .routeName);
                                                                    },
                                                                  ),
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    borderRadius:
                                                                        16.0,
                                                                    borderWidth:
                                                                        6.0,
                                                                    buttonSize:
                                                                        50.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .report_problem_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    showLoadingIndicator:
                                                                        true,
                                                                    onPressed:
                                                                        () async {
                                                                      var _shouldSetState =
                                                                          false;
                                                                      if (_model.textController.text ==
                                                                              '') {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: Text('Ops ...'),
                                                                              content: Text('Informar a condição FINAL do ativo.'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      } else {
                                                                        _model.resOVAssetImgCheck =
                                                                            await action_blocks.abOVSelectedAssetImgCheck(context);
                                                                        _shouldSetState =
                                                                            true;
                                                                        if (_model
                                                                            .resOVAssetImgCheck!) {
                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Atividade'),
                                                                                    content: Text('Deseja Reportar ?'),
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
                                                                            await OrdersVisitsAssetsTable().update(
                                                                              data: {
                                                                                'processing_id': 2,
                                                                                'reported_user_id': FFAppState().stUserCurrent.id,
                                                                                'reported_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                'after_comments': _model.textController.text,
                                                                              },
                                                                              matchingRows: (rows) => rows.eqOrNull(
                                                                                'id',
                                                                                FFAppState().stOVSelectedAsset.id,
                                                                              ),
                                                                            );
                                                                            FFAppState().stOVNavBarOption =
                                                                                'assets';
                                                                            safeSetState(() {});
                                                                            await action_blocks.abOVSelectedAsset(
                                                                              context,
                                                                              abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                            );
                                                                            await action_blocks.abOVSelectedAssetsUpdate(
                                                                              context,
                                                                              abOVId: FFAppState().stOVSelectedAsset.ovId,
                                                                            );
                                                                            if (Navigator.of(context).canPop()) {
                                                                              context.pop();
                                                                            }
                                                                            context.pushNamed(PgOVShowWidget.routeName);
                                                                          }
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('Ops ...'),
                                                                                content: Text('Verificar as images Antes e Depois do Ativo.'),
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
                                                                            safeSetState(() {});
                                                                          return;
                                                                        }
                                                                      }

                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                    },
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        12.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .stOVSelectedAsset
                                                                .processingId ==
                                                            2)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 80.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'rwj7kfai' /* Situação ? */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            font:
                                                                                FlutterFlowTheme.of(context).titleLarge,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    if (FFAppState()
                                                                            .stOVSelected
                                                                            .ovProcessingId ==
                                                                        2)
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Atividade'),
                                                                                    content: Text('Deseja realmente manter REPORTADA ?'),
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
                                                                            await OrdersVisitsAssetsTable().update(
                                                                              data: {
                                                                                'before_comments': _model.textController.text,
                                                                              },
                                                                              matchingRows: (rows) => rows.eqOrNull(
                                                                                'id',
                                                                                FFAppState().stOVSelectedAsset.id,
                                                                              ),
                                                                            );
                                                                            await action_blocks.abOVSelectedAsset(
                                                                              context,
                                                                              abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                            );

                                                                            context.pushNamed(PgOVShowWidget.routeName);
                                                                          } else {
                                                                            return;
                                                                          }
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            AlignedTooltip(
                                                                              content: Padding(
                                                                                padding: EdgeInsets.all(4.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'tdgy7soy' /* Reportada */,
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
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 4.0,
                                                                              tailBaseWidth: 24.0,
                                                                              tailLength: 12.0,
                                                                              waitDuration: Duration(milliseconds: 100),
                                                                              showDuration: Duration(milliseconds: 1500),
                                                                              triggerMode: TooltipTriggerMode.tap,
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: FlutterFlowTheme.of(context).tertiary,
                                                                                borderRadius: 16.0,
                                                                                borderWidth: 6.0,
                                                                                buttonSize: 50.0,
                                                                                icon: Icon(
                                                                                  Icons.report_problem_outlined,
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  size: 30.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: Text('Atividade'),
                                                                                            content: Text('Deseja realmente manter REPORTADA ?'),
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
                                                                                    await OrdersVisitsAssetsTable().update(
                                                                                      data: {
                                                                                        'after_comments': _model.textController.text,
                                                                                      },
                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                        'id',
                                                                                        FFAppState().stOVSelectedAsset.id,
                                                                                      ),
                                                                                    );
                                                                                    await action_blocks.abOVSelectedAsset(
                                                                                      context,
                                                                                      abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                                    );
                                                                                    await action_blocks.abOVSelectedAssetsUpdate(
                                                                                      context,
                                                                                      abOVId: FFAppState().stOVSelectedAsset.ovId,
                                                                                    );
                                                                                    if (Navigator.of(context).canPop()) {
                                                                                      context.pop();
                                                                                    }
                                                                                    context.pushNamed(PgOVShowWidget.routeName);
                                                                                  } else {
                                                                                    return;
                                                                                  }
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'gdvsg5ow' /* Rejeitar */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              Duration(milliseconds: 1500),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            borderRadius:
                                                                                16.0,
                                                                            borderWidth:
                                                                                6.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.thumbsDown,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              size: 30.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              var _shouldSetState = false;
                                                                              _model.isAllowedDisapprove = await action_blocks.abGuardian(
                                                                                context,
                                                                                abPgRequestedId: 19,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              if (_model.isAllowedDisapprove!) {
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: Text('Atividade'),
                                                                                          content: Text('Deseja REJEITAR ?'),
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
                                                                                  confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: Text('Atividade'),
                                                                                            content: Text('Deseja realmente REJEITAR ?'),
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
                                                                                    await showModalBottomSheet(
                                                                                      isScrollControlled: true,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      enableDrag: false,
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return GestureDetector(
                                                                                          onTap: () {
                                                                                            FocusScope.of(context).unfocus();
                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                          },
                                                                                          child: Padding(
                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                            child: MdOVAssetToDisapproveWidget(),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));

                                                                                    if (_shouldSetState) safeSetState(() {});
                                                                                    return;
                                                                                  } else {
                                                                                    if (_shouldSetState) safeSetState(() {});
                                                                                    return;
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

                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'mvfu60fa' /* Revisada */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              Duration(milliseconds: 1500),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            borderRadius:
                                                                                16.0,
                                                                            borderWidth:
                                                                                6.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.remove_red_eye_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 30.0,
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                true,
                                                                            onPressed:
                                                                                () async {
                                                                              var _shouldSetState = false;
                                                                              _model.isAllowedReview = await action_blocks.abGuardian(
                                                                                context,
                                                                                abPgRequestedId: 19,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              if (_model.isAllowedReview!) {
                                                                                _model.resHasImages = await action_blocks.abOVSelectedAssetImgCheck(context);
                                                                                _shouldSetState = true;
                                                                                if (_model.resHasImages!) {
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: Text('Atividade'),
                                                                                            content: Text('Deseja realmente REVISAR ?'),
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
                                                                                    await OrdersVisitsAssetsTable().update(
                                                                                      data: {
                                                                                        'approved_user_id': FFAppState().stUserCurrent.id,
                                                                                        'approved_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                        'processing_id': 3,
                                                                                        'after_comments': _model.textController.text,
                                                                                      },
                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                        'id',
                                                                                        FFAppState().stOVSelectedAsset.id,
                                                                                      ),
                                                                                    );
                                                                                    if (FFAppState().stOVSelectedAsset.isMoved) {}
                                                                                    await action_blocks.abOVSelectedAsset(
                                                                                      context,
                                                                                      abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                                    );
                                                                                    await action_blocks.abOVSelectedAssetsUpdate(
                                                                                      context,
                                                                                      abOVId: FFAppState().stOVSelected.id,
                                                                                    );
                                                                                    if (Navigator.of(context).canPop()) {
                                                                                      context.pop();
                                                                                    }
                                                                                    context.pushNamed(PgOVShowWidget.routeName);
                                                                                  } else {
                                                                                    if (_shouldSetState) safeSetState(() {});
                                                                                    return;
                                                                                  }
                                                                                } else {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Ops ...'),
                                                                                        content: Text('Atendimento SEM imagens informadas.'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                  if (_shouldSetState) safeSetState(() {});
                                                                                  return;
                                                                                }
                                                                              } else {
                                                                                context.pushNamed(PgNotAllowedWidget.routeName);

                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }

                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'uklhhqgg' /* Arquivar */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              Duration(milliseconds: 1500),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            borderRadius:
                                                                                16.0,
                                                                            borderWidth:
                                                                                6.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.archive_sharp,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              size: 30.0,
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                true,
                                                                            onPressed:
                                                                                () async {
                                                                              var _shouldSetState = false;
                                                                              _model.isAllowedApprove = await action_blocks.abGuardian(
                                                                                context,
                                                                                abPgRequestedId: 20,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              if (_model.isAllowedApprove!) {
                                                                                if (FFAppState().stOSelectedContractManagers.length == 1) {
                                                                                  _model.resHasImages1 = await action_blocks.abOVSelectedAssetImgCheck(context);
                                                                                  _shouldSetState = true;
                                                                                  if (_model.resHasImages1!) {
                                                                                    var confirmDialogResponse = await showDialog<bool>(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return AlertDialog(
                                                                                              title: Text('Atividade'),
                                                                                              content: Text('Deseja realmente ARQUIVAR ?'),
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
                                                                                      await OrdersVisitsAssetsTable().update(
                                                                                        data: {
                                                                                          'approved_user_id': FFAppState().stUserCurrent.id,
                                                                                          'approved_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                          'processing_id': 5,
                                                                                          'after_comments': _model.textController.text,
                                                                                        },
                                                                                        matchingRows: (rows) => rows.eqOrNull(
                                                                                          'id',
                                                                                          FFAppState().stOVSelectedAsset.id,
                                                                                        ),
                                                                                      );
                                                                                      if (FFAppState().stOVSelectedAsset.isMoved) {}
                                                                                      await action_blocks.abOVSelectedAsset(
                                                                                        context,
                                                                                        abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                                      );
                                                                                      safeSetState(() {});
                                                                                      await action_blocks.abOVSelectedAssetsUpdate(
                                                                                        context,
                                                                                        abOVId: FFAppState().stOVSelected.id,
                                                                                      );
                                                                                      safeSetState(() {});
                                                                                      if (Navigator.of(context).canPop()) {
                                                                                        context.pop();
                                                                                      }
                                                                                      context.pushNamed(PgOVShowWidget.routeName);
                                                                                    } else {
                                                                                      if (_shouldSetState) safeSetState(() {});
                                                                                      return;
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
                                                                              } else {
                                                                                context.pushNamed(PgNotAllowedWidget.routeName);

                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }

                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          12.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .stOVSelected
                                                                .ovProcessingId ==
                                                            3)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 80.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'yyyzbb5s' /* Situação ? */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            font:
                                                                                FlutterFlowTheme.of(context).titleLarge,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'qz4h5eci' /* Revisada */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              Duration(milliseconds: 1500),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            borderRadius:
                                                                                16.0,
                                                                            borderWidth:
                                                                                6.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.solidEye,
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              size: 24.0,
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                true,
                                                                            onPressed:
                                                                                () async {
                                                                              var _shouldSetState = false;
                                                                              _model.isAllowedReview1 = await action_blocks.abGuardian(
                                                                                context,
                                                                                abPgRequestedId: 19,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              if (_model.isAllowedReview1!) {
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: Text('Atividade'),
                                                                                          content: Text('Deseja realmente manter como REVISADA ?'),
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
                                                                                  await OrdersVisitsAssetsTable().update(
                                                                                    data: {
                                                                                      'after_comments': _model.textController.text,
                                                                                    },
                                                                                    matchingRows: (rows) => rows.eqOrNull(
                                                                                      'id',
                                                                                      FFAppState().stOVSelectedAsset.id,
                                                                                    ),
                                                                                  );
                                                                                  await action_blocks.abOVSelectedAsset(
                                                                                    context,
                                                                                    abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                                  );
                                                                                  safeSetState(() {});
                                                                                  await action_blocks.abOVSelectedAssetsUpdate(
                                                                                    context,
                                                                                    abOVId: FFAppState().stOVSelected.id,
                                                                                  );
                                                                                  safeSetState(() {});
                                                                                  if (Navigator.of(context).canPop()) {
                                                                                    context.pop();
                                                                                  }
                                                                                  context.pushNamed(PgOVShowWidget.routeName);
                                                                                } else {
                                                                                  if (_shouldSetState) safeSetState(() {});
                                                                                  return;
                                                                                }
                                                                              } else {
                                                                                context.pushNamed(PgNotAllowedWidget.routeName);

                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }

                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        AlignedTooltip(
                                                                          content:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'sxc2wyp3' /* Arquivar */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    font: FlutterFlowTheme.of(context).bodyLarge,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          offset:
                                                                              4.0,
                                                                          preferredDirection:
                                                                              AxisDirection.down,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              4.0,
                                                                          tailBaseWidth:
                                                                              24.0,
                                                                          tailLength:
                                                                              12.0,
                                                                          waitDuration:
                                                                              Duration(milliseconds: 100),
                                                                          showDuration:
                                                                              Duration(milliseconds: 1500),
                                                                          triggerMode:
                                                                              TooltipTriggerMode.tap,
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            borderRadius:
                                                                                16.0,
                                                                            borderWidth:
                                                                                6.0,
                                                                            buttonSize:
                                                                                50.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.archive,
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              size: 24.0,
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                true,
                                                                            onPressed:
                                                                                () async {
                                                                              var _shouldSetState = false;
                                                                              _model.isAllowedApprove1 = await action_blocks.abGuardian(
                                                                                context,
                                                                                abPgRequestedId: 20,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              if (_model.isAllowedApprove1!) {
                                                                                if (FFAppState().stOSelectedContractManagers.length == 1) {
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: Text('Atividade'),
                                                                                            content: Text('Deseja realmente ARQUIVAR ?'),
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
                                                                                    await OrdersVisitsAssetsTable().update(
                                                                                      data: {
                                                                                        'approved_user_id': FFAppState().stUserCurrent.id,
                                                                                        'approved_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                        'processing_id': 5,
                                                                                        'before_comments': _model.textController.text,
                                                                                      },
                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                        'id',
                                                                                        FFAppState().stOVSelectedAsset.id,
                                                                                      ),
                                                                                    );
                                                                                    if (FFAppState().stOVSelectedAsset.isMoved) {}
                                                                                    await action_blocks.abOVSelectedAsset(
                                                                                      context,
                                                                                      abOVAssetId: FFAppState().stOVSelectedAsset.id,
                                                                                    );
                                                                                    await action_blocks.abOVSelectedAssetsUpdate(
                                                                                      context,
                                                                                      abOVId: FFAppState().stOVSelected.id,
                                                                                    );
                                                                                    safeSetState(() {});
                                                                                    if (Navigator.of(context).canPop()) {
                                                                                      context.pop();
                                                                                    }
                                                                                    context.pushNamed(PgOVShowWidget.routeName);
                                                                                  } else {
                                                                                    if (_shouldSetState) safeSetState(() {});
                                                                                    return;
                                                                                  }
                                                                                } else {
                                                                                  context.pushNamed(PgNotAllowedWidget.routeName);

                                                                                  if (_shouldSetState) safeSetState(() {});
                                                                                  return;
                                                                                }
                                                                              } else {
                                                                                context.pushNamed(PgNotAllowedWidget.routeName);

                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }

                                                                              if (_shouldSetState)
                                                                                safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          12.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 12.0))
                                              .addToEnd(SizedBox(height: 60.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
