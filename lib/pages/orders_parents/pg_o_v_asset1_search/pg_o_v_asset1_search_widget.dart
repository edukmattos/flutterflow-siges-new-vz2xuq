import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset1_search_model.dart';
export 'pg_o_v_asset1_search_model.dart';

class PgOVAsset1SearchWidget extends StatefulWidget {
  const PgOVAsset1SearchWidget({super.key});

  static String routeName = 'pgOVAsset1Search';
  static String routePath = 'pgOVAsset1Search';

  @override
  State<PgOVAsset1SearchWidget> createState() => _PgOVAsset1SearchWidgetState();
}

class _PgOVAsset1SearchWidgetState extends State<PgOVAsset1SearchWidget>
    with TickerProviderStateMixin {
  late PgOVAsset1SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset1SearchModel());

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
                FFLocalizations.of(context).getText(
                  '51myoo5e' /* Ativos */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: FlutterFlowTheme.of(context).headlineMedium,
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
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
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                      maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                    ),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!isWeb)
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var _shouldSetState = false;
                                  _model.resScan =
                                      await FlutterBarcodeScanner.scanBarcode(
                                    '#C62828', // scanning line color
                                    FFLocalizations.of(context).getText(
                                      '85my5lr0' /* Cancel */,
                                    ), // cancel button text
                                    true, // whether to show the flash icon
                                    ScanMode.QR,
                                  );

                                  _shouldSetState = true;
                                  if (_model.resScan != '') {
                                    _model.resAsset1 = await ApiAssetsGroup
                                        .apiAssetByCodeCall
                                        .call(
                                      apiKey:
                                          FFDevEnvironmentValues().envApiKey,
                                      accessToken: currentJwtToken,
                                      code: _model.resScan,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.resAsset1?.succeeded ?? true)) {
                                      FFAppState().stOVAssetsSearchFilters =
                                          ((_model.resAsset1?.jsonBody ?? '')
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
                                      if (FFAppState()
                                              .stOVAssetsSearchFilters
                                              .length ==
                                          0) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content: Text(
                                                  'O ativo de código ${_model.resScan} não foi localizado.'),
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
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Ocorreu um erro na busca de Ativos. Tente novamente.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
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
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Ops ...'),
                                          content: Text(
                                              'Ocorreu um erro na leitura. Tente novamente.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                child: BarcodeWidget(
                                  data: 'Clique AQUI para escanear',
                                  barcode: Barcode.code128(),
                                  width: 400.0,
                                  height: 90.0,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  backgroundColor: Colors.transparent,
                                  errorBuilder: (_context, _error) => SizedBox(
                                    width: 400.0,
                                    height: 90.0,
                                  ),
                                  drawText: true,
                                ),
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cpInputAssetCodeModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpInputTextWidget(
                                      cpLabelText:
                                          'Pesquisar por código/descrição',
                                      cpIsReadOnly: false,
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
                                    FontAwesomeIcons.searchengin,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    _model.resAsset = await ApiAssetsGroup
                                        .apiAssetByCodeCall
                                        .call(
                                      apiKey:
                                          FFDevEnvironmentValues().envApiKey,
                                      accessToken: currentJwtToken,
                                      code: _model.cpInputAssetCodeModel
                                          .inputTextTextController.text,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.resAsset?.succeeded ?? true)) {
                                      FFAppState().stOVAssetsSearchFilters =
                                          ((_model.resAsset?.jsonBody ?? '')
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
                                      if (FFAppState()
                                              .stOVAssetsSearchFilters
                                              .length ==
                                          0) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content: Text(
                                                  'O ativo de código ${_model.cpInputAssetCodeModel.inputTextTextController.text} não foi localizado.'),
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
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Houve um erro na localização do ativo. Verifique e tente novamente.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Builder(
                          builder: (context) {
                            final gcAssets = FFAppState()
                                .stOVAssetsSearchFilters
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
                                final gcAssetsItem = gcAssets[gcAssetsIndex];
                                return Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x1F000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(18.0),
                                    border: Border.all(
                                      color: FFAppState()
                                              .stRowsSelected
                                              .contains(gcAssetsItem.id)
                                          ? FlutterFlowTheme.of(context).primary
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
                                      var _shouldSetState = false;
                                      await action_blocks.abOVAssetIsExist(
                                        context,
                                        abOVId: FFAppState().stOVSelected.id,
                                      );
                                      await action_blocks.abAssetSelected(
                                        context,
                                        abAssetId: gcAssetsItem.id,
                                      );
                                      if (functions.cfContainInList(
                                          FFAppState().stRowsSelected.toList(),
                                          gcAssetsItem.id)!) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'ATIVO já associado.',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                          ),
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        _model.resOVAssetAdded =
                                            await OrdersVisitsAssetsTable()
                                                .insert({
                                          'ov_id': FFAppState().stOVSelected.id,
                                          'asset_id':
                                              FFAppState().stAssetSelected.id,
                                          'before_unit_id': FFAppState()
                                              .stAssetSelected
                                              .unitId,
                                          'before_tag_id': FFAppState()
                                              .stAssetSelected
                                              .tagId,
                                          'before_tag_sub_id': FFAppState()
                                              .stAssetSelected
                                              .tagSubId,
                                          'before_status_id': FFAppState()
                                              .stAssetSelected
                                              .statusId,
                                          'before_status_at':
                                              supaSerialize<DateTime>(
                                                  FFAppState()
                                                      .stAssetSelected
                                                      .statusDatetime),
                                          'before_priority_id': FFAppState()
                                              .stAssetSelected
                                              .priorityId,
                                          'after_unit_id': FFAppState()
                                              .stAssetSelected
                                              .unitId,
                                          'after_tag_id': FFAppState()
                                              .stAssetSelected
                                              .tagId,
                                          'after_tag_sub_id': FFAppState()
                                              .stAssetSelected
                                              .tagSubId,
                                          'after_status_id': FFAppState()
                                              .stAssetSelected
                                              .statusId,
                                          'after_status_at':
                                              supaSerialize<DateTime>(
                                                  FFAppState()
                                                      .stAssetSelected
                                                      .statusDatetime),
                                          'after_priority_id': FFAppState()
                                              .stAssetSelected
                                              .priorityId,
                                          'is_moved': false,
                                          'processing_id': 1,
                                          'created_user_id':
                                              FFAppState().stUserCurrent.id,
                                          'created_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'is_deleted': false,
                                          'version_mode': FFAppState()
                                              .stAppVersionMode
                                              ?.name,
                                          'o_id': FFAppState().stOVSelected.oId,
                                          'op_id':
                                              FFAppState().stOVSelected.opId,
                                        });
                                        _shouldSetState = true;
                                        await action_blocks.abOVSelectedAsset(
                                          context,
                                          abOVAssetId:
                                              _model.resOVAssetAdded?.id,
                                        );

                                        context.pushNamed(
                                            PgOVAsset2BeforeWidget.routeName);
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    child: CpAssetListItemCardWidget(
                                      key: Key(
                                          'Keyt3a_${gcAssetsIndex}_of_${gcAssets.length}'),
                                      cpAssetDt: gcAssetsItem,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!);
                              },
                            );
                          },
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
