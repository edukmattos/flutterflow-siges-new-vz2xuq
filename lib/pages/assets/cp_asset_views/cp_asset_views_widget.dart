import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_asset_materials_list_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_activities/cp_asset_activities_widget.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/assets/cp_asset_moves/cp_asset_moves_widget.dart';
import '/pages/assets/cp_asset_t_m_list_item/cp_asset_t_m_list_item_widget.dart';
import '/pages/orders_parents/cp_o_v_selected_asset_cart/cp_o_v_selected_asset_cart_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_asset_views_model.dart';
export 'cp_asset_views_model.dart';

class CpAssetViewsWidget extends StatefulWidget {
  const CpAssetViewsWidget({super.key});

  @override
  State<CpAssetViewsWidget> createState() => _CpAssetViewsWidgetState();
}

class _CpAssetViewsWidgetState extends State<CpAssetViewsWidget>
    with TickerProviderStateMixin {
  late CpAssetViewsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetViewsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'r3aztfhf' /* Componentes */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 16.0,
                    borderWidth: 6.0,
                    buttonSize: 50.0,
                    icon: FaIcon(
                      FontAwesomeIcons.cogs,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 26.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      _model.lcsvIsSearching = true;
                      safeSetState(() {});
                      if (FFAppState().stAssetNavBarOption == 'materials') {
                        FFAppState().stAssetNavBarOption = '';
                        FFAppState().update(() {});
                        FFAppState().stAssetSelectedMaterials = [];
                        FFAppState().update(() {});
                      } else {
                        FFAppState().stAssetNavBarOption = 'materials';
                        safeSetState(() {});
                        await action_blocks.abAssetSelectedMaterials(
                          context,
                          abAssetId: FFAppState().stAssetSelected.id,
                        );
                        safeSetState(() {});
                      }
                    },
                  ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'f6uj9cgc' /* Movimentações */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
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
                      if (FFAppState().stAssetNavBarOption == 'moves') {
                        FFAppState().stAssetNavBarOption = '';
                        FFAppState().update(() {});
                      } else {
                        FFAppState().stAssetNavBarOption = 'moves';
                        safeSetState(() {});
                        await action_blocks.abAssetSelectedMovements(
                          context,
                          abAssetId: FFAppState().stAssetSelected.id,
                        );
                        safeSetState(() {});
                      }
                    },
                  ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '6d4k754b' /* Message... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 16.0,
                    borderWidth: 6.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.local_library_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 26.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      if (FFAppState().stAssetNavBarOption == 'tm') {
                        FFAppState().stAssetNavBarOption = '';
                        FFAppState().stTMSearchResults = [];
                        FFAppState().update(() {});
                      } else {
                        FFAppState().stAssetNavBarOption = 'tm';
                        safeSetState(() {});
                        await action_blocks.abAssetSelectedTMs(
                          context,
                          abAssetId: FFAppState().stAssetSelected.id,
                        );
                        safeSetState(() {});
                      }
                    },
                  ),
                ),
                if (FFAppState().stOVSelectedAsset.cartMaterialsAmount > 0)
                  badges.Badge(
                    badgeContent: Text(
                      FFAppState()
                          .stOVSelectedAsset
                          .cartMaterialsAmount
                          .toString(),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                    ),
                    showBadge: true,
                    shape: badges.BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).tertiary,
                    elevation: 4.0,
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.shoppingCart,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        if (FFAppState().stAssetNavBarOption == 'cart') {
                          FFAppState().stAssetNavBarOption = '';
                          FFAppState().stTMSearchResults = [];
                          FFAppState().update(() {});
                        } else {
                          FFAppState().stAssetNavBarOption = 'cart';
                          safeSetState(() {});
                          await action_blocks.abOVSelectedAssetCart(
                            context,
                            abOperation: 'cart_items',
                          );
                          safeSetState(() {});
                        }
                      },
                    ),
                  ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'mpwzz2y0' /* Intervenções */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 16.0,
                    borderWidth: 6.0,
                    buttonSize: 50.0,
                    icon: FaIcon(
                      FontAwesomeIcons.tools,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    showLoadingIndicator: true,
                    onPressed: () async {
                      if (FFAppState().stAssetNavBarOption == 'activities') {
                        FFAppState().stAssetNavBarOption = '';
                        FFAppState().stTMSearchResults = [];
                        FFAppState().update(() {});
                      } else {
                        FFAppState().stAssetNavBarOption = 'activities';
                        safeSetState(() {});
                        await action_blocks.abAssetSelectedActivities(
                          context,
                          abAssetId: FFAppState().stAssetSelected.id,
                        );
                        safeSetState(() {});
                      }
                    },
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '69jmmxw5' /* Substituir */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Visibility(
                    visible: !functions.cfCheckStOVSelectedAssetIsEmpty(
                            FFAppState().stOVSelectedAsset)! &&
                        (FFAppState().stOVSelected != null),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.exchangeAlt,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 26.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        if (FFAppState().stAssetNavBarOption == 'switch') {
                          FFAppState().stAssetNavBarOption = '';
                          FFAppState().update(() {});
                        } else {
                          FFAppState().stAssetNavBarOption = 'switch';
                          safeSetState(() {});
                          FFAppState().stAssetNavBarOption = 'switch';
                          FFAppState().stAssetsSearchResults = [];
                          safeSetState(() {});
                        }
                      },
                    ),
                  ),
                ),
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        's3u0gqtv' /* Substituir */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyLargeFamily),
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.down,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 4.0,
                  tailBaseWidth: 24.0,
                  tailLength: 12.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Visibility(
                    visible: !FFAppState().stOVSelected.ovIsFiled,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).error,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).info,
                      icon: FaIcon(
                        FontAwesomeIcons.solidTrashAlt,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        var _shouldSetState = false;
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Ops ...'),
                                  content: Text(
                                      'Deseja EXCLUIR definitivamente este registro ?'),
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
                          await Future.wait([
                            Future(() async {
                              await deleteSupabaseFileFromPublicUrl(
                                  '${FFAppState().stAppServerUrlDbStorage}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.beforeImgFilePath}/${FFAppState().stOVSelectedAsset.beforeImgFileName}');
                            }),
                            Future(() async {
                              await deleteSupabaseFileFromPublicUrl(
                                  '${FFAppState().stAppServerUrlDbStorage}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stOVSelectedAsset.afterImgFilePath}/${FFAppState().stOVSelectedAsset.afterImgFileName}');
                            }),
                          ]);
                          await OrdersVisitsAssetsMaterialsTable().delete(
                            matchingRows: (rows) => rows
                                .eqOrNull(
                                  'ov_id',
                                  FFAppState().stOVSelectedAsset.ovId,
                                )
                                .eqOrNull(
                                  'asset_id',
                                  FFAppState().stOVSelectedAsset.assetId,
                                ),
                          );
                          _shouldSetState = true;
                          await OrdersVisitsAssetsTable().delete(
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              FFAppState().stOVSelectedAsset.id,
                            ),
                          );
                          _shouldSetState = true;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Registro EXCLUÍDO em definitivamente.',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).tertiary,
                            ),
                          );

                          context.pushNamed(PgOVShowWidget.routeName);
                        } else {
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ],
        ),
        Builder(
          builder: (context) {
            if (FFAppState().stAssetNavBarOption == 'materials') {
              return wrapWithModel(
                model: _model.cpAssetMaterialsListItemModel,
                updateCallback: () => safeSetState(() {}),
                child: CpAssetMaterialsListItemWidget(),
              );
            } else if (FFAppState().stAssetNavBarOption == 'tm') {
              return wrapWithModel(
                model: _model.cpAssetTMListItemModel,
                updateCallback: () => safeSetState(() {}),
                child: CpAssetTMListItemWidget(),
              );
            } else if (FFAppState().stAssetNavBarOption == 'moves') {
              return wrapWithModel(
                model: _model.cpAssetMovesModel,
                updateCallback: () => safeSetState(() {}),
                child: CpAssetMovesWidget(),
              );
            } else if (FFAppState().stAssetNavBarOption == 'cart') {
              return Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: wrapWithModel(
                  model: _model.cpOVSelectedAssetCartModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpOVSelectedAssetCartWidget(),
                ),
              );
            } else if (FFAppState().stAssetNavBarOption == 'switch') {
              return Container(
                constraints: BoxConstraints(
                  minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                  maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                ),
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController',
                                Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: true,
                              autofillHints: [AutofillHints.name],
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'qso2fgtn' /* Código Ativo correto */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 0.0, 12.0),
                                suffixIcon:
                                    _model.textController!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController?.clear();
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 22.0,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              minLines: 1,
                              keyboardType: TextInputType.number,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]'))
                              ],
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 16.0,
                            borderWidth: 6.0,
                            buttonSize: 50.0,
                            icon: FaIcon(
                              FontAwesomeIcons.searchengin,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: (_model.textController.text == '')
                                ? null
                                : () async {
                                    var _shouldSetState = false;
                                    if (_model.textController.text == '0') {
                                      _model.resAssets = await ApiAssetsGroup
                                          .apiAssetByCodeUnitCall
                                          .call(
                                        apiKey:
                                            FFDevEnvironmentValues().envApiKey,
                                        accessToken: currentJwtToken,
                                        versionMode:
                                            FFAppState().stAppVersionMode?.name,
                                        code: _model.textController.text,
                                        unitId: FFAppState().stOSelected.unitId,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.resAssets?.succeeded ??
                                          true)) {
                                        FFAppState().stAssetsSearchResults =
                                            ((_model.resAssets?.jsonBody ?? '')
                                                        .toList()
                                                        .map<DtAssetStruct?>(
                                                            DtAssetStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<DtAssetStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<DtAssetStruct>();
                                        safeSetState(() {});
                                        FFAppState()
                                            .updateStAssetsSearchResultsAtIndex(
                                          0,
                                          (e) => e
                                            ..statusDatetime = functions
                                                .cfConvDatetimeBrStringToDatetimeEn(
                                                    FFAppState()
                                                        .stAssetsSearchResults
                                                        .firstOrNull!
                                                        .statusAt)
                                            ..acquisitionDatetime = functions
                                                .cfConvDatetimeBrStringToDatetimeEn(
                                                    FFAppState()
                                                        .stAssetsSearchResults
                                                        .firstOrNull!
                                                        .acquisitionAt),
                                        );
                                        safeSetState(() {});
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content: Text(
                                                  'Houve um erro na pesquisa de Ativos (AsstesSearchByCode)'),
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
                                      _model.resAssets2 = await ApiAssetsGroup
                                          .apiAssetByCodeCall
                                          .call(
                                        apiKey:
                                            FFDevEnvironmentValues().envApiKey,
                                        accessToken: currentJwtToken,
                                        code: _model.textController.text,
                                        versionMode:
                                            FFAppState().stAppVersionMode?.name,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.resAssets2?.succeeded ??
                                          true)) {
                                        FFAppState().stAssetsSearchResults =
                                            ((_model.resAssets2?.jsonBody ?? '')
                                                        .toList()
                                                        .map<DtAssetStruct?>(
                                                            DtAssetStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<DtAssetStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<DtAssetStruct>();
                                        safeSetState(() {});
                                        FFAppState()
                                            .updateStAssetsSearchResultsAtIndex(
                                          0,
                                          (e) => e
                                            ..statusDatetime = functions
                                                .cfConvDatetimeBrStringToDatetimeEn(
                                                    FFAppState()
                                                        .stAssetsSearchResults
                                                        .firstOrNull!
                                                        .statusAt)
                                            ..acquisitionDatetime = functions
                                                .cfConvDatetimeBrStringToDatetimeEn(
                                                    FFAppState()
                                                        .stAssetsSearchResults
                                                        .firstOrNull!
                                                        .acquisitionAt),
                                        );
                                        safeSetState(() {});
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content: Text(
                                                  'Houve um erro na pesquisa de Ativos (AsstesSearchByCode)'),
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
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) {
                                final gcAssets = FFAppState()
                                    .stAssetsSearchResults
                                    .map((e) => e)
                                    .toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: gcAssets.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 12.0),
                                  itemBuilder: (context, gcAssetsIndex) {
                                    final gcAssetsItem =
                                        gcAssets[gcAssetsIndex];
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FFAppState()
                                                  .stRowsSelected
                                                  .contains(gcAssetsItem.id)
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x00000000),
                                          width: FFAppState()
                                                  .stRowsSelected
                                                  .contains(gcAssetsItem.id)
                                              ? 6.0
                                              : 0.0,
                                        ),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().stRowsSelected = [];
                                          safeSetState(() {});
                                          FFAppState().addToStRowsSelected(
                                              gcAssetsItem.id);
                                          safeSetState(() {});
                                          _model.resOVAssetCUD =
                                              await action_blocks
                                                  .abOVSelectedAssetCUD(
                                            context,
                                            abOperation: 'update',
                                            abOVId:
                                                FFAppState().stOVSelected.id,
                                            abAssetId: gcAssetsItem.id,
                                          );

                                          safeSetState(() {});
                                        },
                                        child: CpAssetListItemCardWidget(
                                          key: Key(
                                              'Key283_${gcAssetsIndex}_of_${gcAssets.length}'),
                                          cpAssetDt: gcAssetsItem,
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!);
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ),
              );
            } else if (FFAppState().stAssetNavBarOption == 'activities') {
              return wrapWithModel(
                model: _model.cpAssetActivitiesModel,
                updateCallback: () => safeSetState(() {}),
                child: CpAssetActivitiesWidget(),
              );
            } else {
              return Container(
                width: 0.0,
                height: 0.0,
                decoration: BoxDecoration(),
              );
            }
          },
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}
