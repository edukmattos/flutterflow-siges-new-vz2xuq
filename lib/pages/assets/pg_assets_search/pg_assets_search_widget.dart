import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cp_no_records_founded_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_list_item_card/cp_asset_list_item_card_widget.dart';
import '/pages/assets/md_assets_search_filters/md_assets_search_filters_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/md_rpt_extensions_options/md_rpt_extensions_options_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_assets_search_model.dart';
export 'pg_assets_search_model.dart';

class PgAssetsSearchWidget extends StatefulWidget {
  const PgAssetsSearchWidget({super.key});

  static String routeName = 'pgAssetsSearch';
  static String routePath = 'pgAssetsSearch';

  @override
  State<PgAssetsSearchWidget> createState() => _PgAssetsSearchWidgetState();
}

class _PgAssetsSearchWidgetState extends State<PgAssetsSearchWidget>
    with TickerProviderStateMixin {
  late PgAssetsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetsSearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Limpar AppState para esconder os botoes do carrinho.
      FFAppState().stOVSelectedAsset = DtOrderVisitAssetStruct();
      FFAppState().stFiltersAssetsIsSearching = false;
      FFAppState().update(() {});
      await action_blocks.abFiltersAssetsCount(context);
      await action_blocks.abUserAssetsFollowing(
        context,
        abUserId: FFAppState().stUserCurrent.id,
        abOperation: 'update',
      );
      safeSetState(() {});
    });

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              var _shouldSetState = false;
              _model.isAllowed = await action_blocks.abGuardian(
                context,
                abPgRequestedId: 15,
              );
              _shouldSetState = true;
              if (_model.isAllowed!) {
                FFAppState().stAssetSelected = DtAssetStruct();
                FFAppState().stAssetSelectedCU = DtAssetStruct();
                safeSetState(() {});

                context.pushNamed(
                  PgAssetCUStep01Widget.routeName,
                  queryParameters: {
                    'cpOperation': serializeParam(
                      'create',
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              } else {
                context.pushNamed(PgNotAllowedWidget.routeName);

                if (_shouldSetState) safeSetState(() {});
                return;
              }

              if (_shouldSetState) safeSetState(() {});
            },
            child: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
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
          title: Text(
            FFLocalizations.of(context).getText(
              'ueynwzuu' /* Ativos */,
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.cpDBUserAvailableModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CpDBUserAvailableWidget(
                        toolTip: FFAppState().stUserCurrent.nameShort,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
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
                              if (!true)
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
                                        'nzmq1rn1' /* Cancelar */,
                                      ), // cancel button text
                                      true, // whether to show the flash icon
                                      ScanMode.QR,
                                    );

                                    _shouldSetState = true;
                                    if (_model.resScan != '') {
                                      _model.resScanAsset = await ApiAssetsGroup
                                          .apiAssetByCodeCall
                                          .call(
                                        apiKey:
                                            FFDevEnvironmentValues().envApiKey,
                                        accessToken: currentJwtToken,
                                        code: _model.resScan,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.resScanAsset?.succeeded ??
                                          true)) {
                                        FFAppState().stAssetsSearchResults =
                                            ((_model.resScanAsset?.jsonBody ??
                                                            '')
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
                                                .stAssetsSearchResults
                                                .length ==
                                            0) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Ops ...'),
                                                content: Text(
                                                    'O Ativo de código: ${_model.resScan} NÃO foi localizado.'),
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
                                                  'Ocorreu um erro na busca do Ativo. Tente novamente.'),
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
                                  child: BarcodeWidget(
                                    data: 'Clique AQUI para escanear',
                                    barcode: Barcode.code128(),
                                    width: 400.0,
                                    height: 90.0,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    backgroundColor: Colors.transparent,
                                    errorBuilder: (_context, _error) =>
                                        SizedBox(
                                      width: 400.0,
                                      height: 90.0,
                                    ),
                                    drawText: true,
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Row(
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
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '4pyo3amd' /* Código */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily),
                                              ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          errorStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 0.0, 12.0),
                                          suffixIcon: _model.textController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.textController
                                                        ?.clear();
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
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                        minLines: 1,
                                        keyboardType: TextInputType.number,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: (_model.textController.text == '')
                                          ? null
                                          : () async {
                                              var _shouldSetState = false;
                                              FFAppState()
                                                      .stFiltersAssetsIsSearching =
                                                  true;
                                              safeSetState(() {});
                                              FFAppState()
                                                  .stAssetsSearchResults = [];
                                              safeSetState(() {});
                                              _model.resAssets =
                                                  await ApiAssetsGroup
                                                      .apiAssetByCodeCall
                                                      .call(
                                                apiKey: FFDevEnvironmentValues()
                                                    .envApiKey,
                                                accessToken: currentJwtToken,
                                                code:
                                                    _model.textController.text,
                                                versionMode: FFAppState()
                                                    .stAppVersionMode
                                                    ?.name,
                                              );

                                              _shouldSetState = true;
                                              if ((_model
                                                      .resAssets?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                    .stAssetsSearchResults = ((_model
                                                                    .resAssets
                                                                    ?.jsonBody ??
                                                                '')
                                                            .toList()
                                                            .map<DtAssetStruct?>(
                                                                DtAssetStruct
                                                                    .maybeFromMap)
                                                            .toList()
                                                        as Iterable<
                                                            DtAssetStruct?>)
                                                    .withoutNulls
                                                    .toList()
                                                    .cast<DtAssetStruct>();
                                                safeSetState(() {});
                                                if (FFAppState()
                                                        .stAssetsSearchResults
                                                        .length >
                                                    0) {
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
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
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

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                    ),
                                    badges.Badge(
                                      badgeContent: Text(
                                        FFAppState()
                                            .stFiltersAssetsCount
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
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
                                      ),
                                      showBadge:
                                          FFAppState().stFiltersAssetsCount > 0,
                                      shape: badges.BadgeShape.circle,
                                      badgeColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      elevation: 4.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      position: badges.BadgePosition.topEnd(),
                                      animationType:
                                          badges.BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius: 16.0,
                                        borderWidth: 6.0,
                                        buttonSize: 50.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.filter,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      MdAssetsSearchFiltersWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                      ),
                                    ),
                                    badges.Badge(
                                      badgeContent: Text(
                                        FFAppState()
                                            .stAssetsFollowers
                                            .length
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
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
                                      ),
                                      showBadge: FFAppState()
                                              .stAssetsFollowers
                                              .length >
                                          0,
                                      shape: badges.BadgeShape.circle,
                                      badgeColor:
                                          FlutterFlowTheme.of(context).success,
                                      elevation: 4.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      position: badges.BadgePosition.topEnd(),
                                      animationType:
                                          badges.BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          borderRadius: 16.0,
                                          borderWidth: 6.0,
                                          buttonSize: 50.0,
                                          icon: FaIcon(
                                            FontAwesomeIcons.solidBookmark,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            FFAppState()
                                                    .stFiltersAssetsIsSearching =
                                                true;
                                            safeSetState(() {});
                                            await action_blocks
                                                .abUserAssetsFollowing(
                                              context,
                                              abUserId:
                                                  FFAppState().stUserCurrent.id,
                                              abOperation: 'show',
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                              Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  if (FFAppState().stFiltersAssetsIsSearching)
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState()
                                                  .stAssetsSearchResults
                                                  .length >
                                              0)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  if (FFAppState()
                                                          .stAssetsSearchResultsPgNo >
                                                      0)
                                                    Opacity(
                                                      opacity: 0.5,
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 20.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        icon: Icon(
                                                          Icons.arrow_back,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .stAssetsSearchResults
                                                          .length >
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
                                                        FontAwesomeIcons.print,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                      showLoadingIndicator:
                                                          true,
                                                      onPressed: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    MdRptExtensionsOptionsWidget(
                                                                  cpRptName:
                                                                      'assets_list',
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                    ),
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderRadius: 20.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      icon: Icon(
                                                        Icons.arrow_forward,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          Builder(
                                            builder: (context) {
                                              final gcAssets = FFAppState()
                                                  .stAssetsSearchResults
                                                  .map((e) => e)
                                                  .toList()
                                                  .sortedList(
                                                      keyOf: (e) =>
                                                          e.description,
                                                      desc: false)
                                                  .toList();
                                              if (gcAssets.isEmpty) {
                                                return Center(
                                                  child: Container(
                                                    width: 380.0,
                                                    height: 200.0,
                                                    child:
                                                        CpNoRecordsFoundedWidget(
                                                      cpTitle: FFAppConstants
                                                          .cfgNoRecordsTitle,
                                                      cpBody: FFAppConstants
                                                          .cfgNoRecordsBody,
                                                    ),
                                                  ),
                                                );
                                              }

                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: gcAssets.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 12.0),
                                                itemBuilder:
                                                    (context, gcAssetsIndex) {
                                                  final gcAssetsItem =
                                                      gcAssets[gcAssetsIndex];
                                                  return Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      border: Border.all(
                                                        color: FFAppState()
                                                                .stRowsSelected
                                                                .contains(
                                                                    gcAssetsItem
                                                                        .id)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x00000000),
                                                        width: FFAppState()
                                                                .stRowsSelected
                                                                .contains(
                                                                    gcAssetsItem
                                                                        .id)
                                                            ? 6.0
                                                            : 0.0,
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState()
                                                            .stRowsSelected = [];
                                                        safeSetState(() {});
                                                        FFAppState()
                                                            .addToStRowsSelected(
                                                                gcAssetsItem
                                                                    .id);
                                                        safeSetState(() {});
                                                        await action_blocks
                                                            .abAssetSelected(
                                                          context,
                                                          abAssetDt:
                                                              gcAssetsItem,
                                                        );

                                                        context.pushNamed(
                                                            PgAssetShowWidget
                                                                .routeName);
                                                      },
                                                      child:
                                                          CpAssetListItemCardWidget(
                                                        key: Key(
                                                            'Keygkc_${gcAssetsIndex}_of_${gcAssets.length}'),
                                                        cpAssetDt: gcAssetsItem,
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation']!);
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                ],
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
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
