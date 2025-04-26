import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_asset_views/cp_asset_views_widget.dart';
import '/pages/components/cp_dropdown_o_types_activities/cp_dropdown_o_types_activities_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset3_activites_search_model.dart';
export 'pg_o_v_asset3_activites_search_model.dart';

class PgOVAsset3ActivitesSearchWidget extends StatefulWidget {
  const PgOVAsset3ActivitesSearchWidget({super.key});

  static String routeName = 'pgOVAsset3ActivitesSearch';
  static String routePath = 'pgOVAsset3ActivitesSearch';

  @override
  State<PgOVAsset3ActivitesSearchWidget> createState() =>
      _PgOVAsset3ActivitesSearchWidgetState();
}

class _PgOVAsset3ActivitesSearchWidgetState
    extends State<PgOVAsset3ActivitesSearchWidget> {
  late PgOVAsset3ActivitesSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset3ActivitesSearchModel());

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
              'tc2fda29' /* Atendimento */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tcyvgv82' /* Intervenções */,
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
                                                  ),
                                                ),
                                              ],
                                            ),
                                            if (FFAppState()
                                                    .stOVSelectedAssetActivities
                                                    .length >
                                                0)
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Builder(
                                                  builder: (context) {
                                                    final gcOVAssetAcitivities =
                                                        FFAppState()
                                                            .stOVSelectedAssetActivities
                                                            .map((e) => e)
                                                            .toList()
                                                            .sortedList(
                                                                keyOf: (e) => e
                                                                    .description,
                                                                desc: false)
                                                            .toList();

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          gcOVAssetAcitivities
                                                              .length,
                                                      itemBuilder: (context,
                                                          gcOVAssetAcitivitiesIndex) {
                                                        final gcOVAssetAcitivitiesItem =
                                                            gcOVAssetAcitivities[
                                                                gcOVAssetAcitivitiesIndex];
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
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    gcOVAssetAcitivitiesItem
                                                                        .description,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    showLoadingIndicator:
                                                                        true,
                                                                    onPressed:
                                                                        () async {
                                                                      var confirmDialogResponse = await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
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
                                                                        await OrdersVisitsAssetsActivitiesTable()
                                                                            .update(
                                                                          data: {
                                                                            'deleted_user_id':
                                                                                FFAppState().stUserCurrent.id,
                                                                            'deleted_at':
                                                                                supaSerialize<DateTime>(getCurrentTimestamp),
                                                                            'is_deleted':
                                                                                true,
                                                                          },
                                                                          matchingRows: (rows) =>
                                                                              rows.eqOrNull(
                                                                            'id',
                                                                            gcOVAssetAcitivitiesItem.id,
                                                                          ),
                                                                        );
                                                                        await action_blocks
                                                                            .abOVSelectedAssetActivities(
                                                                          context,
                                                                          abOVAssetId: FFAppState()
                                                                              .stOVSelectedAsset
                                                                              .id,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      } else {
                                                                        return;
                                                                      }
                                                                    },
                                                                  ),
                                                              ].divide(SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            Container(
                                              width: double.infinity,
                                              constraints: BoxConstraints(
                                                minWidth: FFAppConstants
                                                    .cfgPgWidthMin
                                                    .toDouble(),
                                                maxWidth: FFAppConstants
                                                    .cfgPgWidthMax
                                                    .toDouble(),
                                              ),
                                              decoration: BoxDecoration(),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Visibility(
                                                          visible: !FFAppState()
                                                              .stOVSelected
                                                              .ovIsFiled,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .cpDropdownOTypesActivitiesModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                CpDropdownOTypesActivitiesWidget(
                                                              cpHintText:
                                                                  'Intervenção ?',
                                                              cpOTypeId:
                                                                  FFAppState()
                                                                      .stOSelected
                                                                      .typeId,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (!FFAppState()
                                                              .stOVSelected
                                                              .ovIsFiled)
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    if (functions.cfContainInList(
                                                                        FFAppState()
                                                                            .stRowsSelected
                                                                            .toList(),
                                                                        _model
                                                                            .cpDropdownOTypesActivitiesModel
                                                                            .dropdownOTypesActivitiesValue!)!) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Ops ... Atividade já associada.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      _model.resOrderVisitAssetActivityAdded =
                                                                          await OrdersVisitsAssetsActivitiesTable()
                                                                              .insert({
                                                                        'activity_id': _model
                                                                            .cpDropdownOTypesActivitiesModel
                                                                            .dropdownOTypesActivitiesValue,
                                                                        'amount':
                                                                            1.0,
                                                                        'ova_id': FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .id,
                                                                        'ov_id': FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .ovId,
                                                                        'o_id': FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .oId,
                                                                        'op_id': FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .opId,
                                                                        'version_mode': FFAppState()
                                                                            .stAppVersionMode
                                                                            ?.name,
                                                                        'created_user_id': FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                        'created_at':
                                                                            supaSerialize<DateTime>(getCurrentTimestamp),
                                                                      });
                                                                      await action_blocks
                                                                          .abOVSelectedAssetActivities(
                                                                        context,
                                                                        abOVAssetId: FFAppState()
                                                                            .stOVSelectedAsset
                                                                            .id,
                                                                      );
                                                                      safeSetState(
                                                                          () {});
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .cpDropdownOTypesActivitiesModel
                                                                            .dropdownOTypesActivitiesValueController
                                                                            ?.reset();
                                                                      });
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'u6j9dejg' /* INCLUIR */,
                                                                  ),
                                                                  icon: Icon(
                                                                    Icons
                                                                        .add_circle,
                                                                    size: 30.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        50.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).titleSmall,
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      width:
                                                                          6.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (FFAppState()
                                                                      .stOVSelectedAssetActivities
                                                                      .length >=
                                                                  1) {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context.pushNamed(
                                                                    PgOVAsset4MaterialsSearchWidget
                                                                        .routeName);
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Ops ...'),
                                                                      content: Text(
                                                                          'Informar ao menos UMA atividade'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              }
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'a2bqdntz' /* Salvar */,
                                                            ),
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .arrowRight,
                                                              size: 15.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 50.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconAlignment:
                                                                  IconAlignment
                                                                      .end,
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .titleSmall,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                width: 6.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 12.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ),
                                ].divide(SizedBox(height: 8.0)),
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
