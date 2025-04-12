import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_no_records_founded_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_material_shop_list_item/cp_o_v_asset_material_shop_list_item_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset4_materials_search_model.dart';
export 'pg_o_v_asset4_materials_search_model.dart';

class PgOVAsset4MaterialsSearchWidget extends StatefulWidget {
  const PgOVAsset4MaterialsSearchWidget({super.key});

  static String routeName = 'pgOVAsset4MaterialsSearch';
  static String routePath = 'pgOVAsset4MaterialsSearch';

  @override
  State<PgOVAsset4MaterialsSearchWidget> createState() =>
      _PgOVAsset4MaterialsSearchWidgetState();
}

class _PgOVAsset4MaterialsSearchWidgetState
    extends State<PgOVAsset4MaterialsSearchWidget> {
  late PgOVAsset4MaterialsSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset4MaterialsSearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abOVSelectedAssetMaterials(
        context,
        abOVId: FFAppState().stOVSelectedAsset.ovId,
        abAssetId: FFAppState().stOVSelectedAsset.assetId,
      );
      safeSetState(() {});
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
              'n5sesbih' /* Atendimento */,
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Container(
                            constraints: BoxConstraints(
                              minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                              maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                            ),
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FlipCard(
                                    fill: Fill.fillBack,
                                    direction: FlipDirection.HORIZONTAL,
                                    speed: 400,
                                    front: wrapWithModel(
                                      model: _model.cpOVAssetListItemCardModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CpOVAssetListItemCardWidget(),
                                    ),
                                    back: wrapWithModel(
                                      model: _model.cpAssetDatasheetsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CpAssetDatasheetsWidget(
                                        cpAssetDt: FFAppState().stAssetSelected,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model: _model.cpAssetViewsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CpAssetViewsWidget(),
                                    ),
                                  ),
                                  if (FFAppState().stAssetNavBarOption == '')
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'edrwyc4n' /* Materiais */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              if (!FFAppState()
                                                  .stOVSelected
                                                  .ovIsFiled)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 190.0,
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                2.5,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpInputMaterialCodeDescriptionModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                CpInputTextWidget(
                                                              cpIsReadOnly:
                                                                  false,
                                                            ),
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
                                                                .search,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: (_model
                                                                          .cpInputMaterialCodeDescriptionModel
                                                                          .inputTextTextController
                                                                          .text ==
                                                                      '')
                                                              ? null
                                                              : () async {
                                                                  var _shouldSetState =
                                                                      false;
                                                                  _model.lpsvIsSearching =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.resMaterials =
                                                                      await ApiMaterialsGroup
                                                                          .apiMaterialsSearchableCall
                                                                          .call(
                                                                    apiKey: FFDevEnvironmentValues()
                                                                        .envApiKey,
                                                                    accessToken:
                                                                        currentJwtToken,
                                                                    searchTerms: _model
                                                                        .cpInputMaterialCodeDescriptionModel
                                                                        .inputTextTextController
                                                                        .text,
                                                                    versionMode:
                                                                        FFAppState()
                                                                            .stAppVersionMode
                                                                            ?.name,
                                                                  );

                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .resMaterials
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    FFAppState()
                                                                        .stOVSelectedAssetMaterialsSearchResults = ((_model.resMaterials?.jsonBody ??
                                                                                '')
                                                                            .toList()
                                                                            .map<DtMaterialStruct?>(DtMaterialStruct.maybeFromMap)
                                                                            .toList() as Iterable<DtMaterialStruct?>)
                                                                        .withoutNulls
                                                                        .toList()
                                                                        .cast<DtMaterialStruct>();
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Ops ... Houve um erro em localizar Material.',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                      ),
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
                                                      ].divide(
                                                          SizedBox(width: 8.0)),
                                                    ),
                                                  ],
                                                ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          if (_model.lpsvIsSearching)
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final gcMaterials = FFAppState()
                                                      .stOVSelectedAssetMaterialsSearchResults
                                                      .map((e) => e)
                                                      .toList();
                                                  if (gcMaterials.isEmpty) {
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
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        gcMaterials.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 12.0),
                                                    itemBuilder: (context,
                                                        gcMaterialsIndex) {
                                                      final gcMaterialsItem =
                                                          gcMaterials[
                                                              gcMaterialsIndex];
                                                      return CpOVAssetMaterialShopListItemWidget(
                                                        key: Key(
                                                            'Keyxoh_${gcMaterialsIndex}_of_${gcMaterials.length}'),
                                                        cpMaterialDt:
                                                            gcMaterialsItem,
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          if (true)
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final gcOVAssetMaterials =
                                                      FFAppState()
                                                          .stOVSelectedAssetMaterials
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.description,
                                                              desc: false)
                                                          .map((e) => e)
                                                          .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        gcOVAssetMaterials
                                                            .length,
                                                    itemBuilder: (context,
                                                        gcOVAssetMaterialsIndex) {
                                                      final gcOVAssetMaterialsItem =
                                                          gcOVAssetMaterials[
                                                              gcOVAssetMaterialsIndex];
                                                      return Card(
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 4.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          gcOVAssetMaterialsItem
                                                                              .description,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          gcOVAssetMaterialsItem
                                                                              .code,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .stOVSelectedAsset
                                                                          .processingId !=
                                                                      4)
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
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .trashAlt,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                      showLoadingIndicator:
                                                                          true,
                                                                      onPressed:
                                                                          () async {
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Ops ...'),
                                                                                  content: Text('Deseja realmente EXCLUIR este registro ?'),
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
                                                                          await OrdersVisitsAssetsMaterialsTable()
                                                                              .update(
                                                                            data: {
                                                                              'deleted_user_id': FFAppState().stUserCurrent.id,
                                                                              'deleted_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                              'is_deleted': true,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              gcOVAssetMaterialsItem.id,
                                                                            ),
                                                                          );
                                                                          await action_blocks
                                                                              .abOVSelectedAssetMaterials(
                                                                            context,
                                                                            abOVId:
                                                                                FFAppState().stOVSelectedAsset.ovId,
                                                                            abAssetId:
                                                                                FFAppState().stOVSelectedAsset.assetId,
                                                                          );
                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          return;
                                                                        }
                                                                      },
                                                                    ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        12.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'bkrz9j45' /* R$ Unit */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        functions.cfConvDoubleToCurrency2Decimals(
                                                                            gcOVAssetMaterialsItem.valueUnit.toString(),
                                                                            2),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'qitl3m29' /* A/D */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        functions.cfConvDoubleToCurrency2Decimals(
                                                                            gcOVAssetMaterialsItem.discount.toString(),
                                                                            2),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'hum5g9wk' /* Qte */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        '${functions.cfConvDoubleToCurrency2Decimals(gcOVAssetMaterialsItem.amount.toString(), 2)} ${gcOVAssetMaterialsItem.unit}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'o1eaiz73' /* R$ Total */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        functions.cfConvDoubleToCurrency2Decimals(
                                                                            gcOVAssetMaterialsItem.valueTotal.toString(),
                                                                            2),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 12.0)),
                                      ),
                                    ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                              maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                            ),
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              context.pop();
                                            }
                                            context.pushNamed(
                                                PgOVAsset5MovingWidget
                                                    .routeName);
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '7u9rq6te' /* Salvar */,
                                          ),
                                          icon: FaIcon(
                                            FontAwesomeIcons.arrowRight,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconAlignment: IconAlignment.end,
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
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
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 6.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
