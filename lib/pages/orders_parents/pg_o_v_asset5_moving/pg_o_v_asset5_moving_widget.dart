import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_asset_datasheets/cp_asset_datasheets_widget.dart';
import '/pages/assets/cp_dropdown_assets_statuses/cp_dropdown_assets_statuses_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags_subs/cp_dropdown_assets_tags_subs_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/orders_parents/cp_o_v_asset_list_item_card/cp_o_v_asset_list_item_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:flip_card/flip_card.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_asset5_moving_model.dart';
export 'pg_o_v_asset5_moving_model.dart';

class PgOVAsset5MovingWidget extends StatefulWidget {
  const PgOVAsset5MovingWidget({super.key});

  static String routeName = 'pgOVAsset5Moving';
  static String routePath = 'pgOVAsset5Moving';

  @override
  State<PgOVAsset5MovingWidget> createState() => _PgOVAsset5MovingWidgetState();
}

class _PgOVAsset5MovingWidgetState extends State<PgOVAsset5MovingWidget> {
  late PgOVAsset5MovingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVAsset5MovingModel());

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
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '6zdb9hst' /* Atendimento */,
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
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'qb8j2zyg' /* Houve movimentação ou alteraçã... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await OrdersVisitsAssetsTable()
                                              .update(
                                            data: {
                                              'after_unit_id': FFAppState()
                                                  .stOVSelectedAsset
                                                  .beforeUnitId,
                                              'after_tag_id': FFAppState()
                                                  .stOVSelectedAsset
                                                  .beforeTagId,
                                              'after_tag_sub_id': FFAppState()
                                                  .stOVSelectedAsset
                                                  .beforeTagSubId,
                                              'after_status_id': FFAppState()
                                                  .stOVSelectedAsset
                                                  .beforeStatusId,
                                              'is_moved': false,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              FFAppState().stOVSelectedAsset.id,
                                            ),
                                          );
                                          await action_blocks.abOVSelectedAsset(
                                            context,
                                            abOVAssetId: FFAppState()
                                                .stOVSelectedAsset
                                                .id,
                                          );
                                          safeSetState(() {});
                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            PgOVAsset2BeforeWidget.routeName,
                                            queryParameters: {
                                              'ppOperation': serializeParam(
                                                'after',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'ofsbecqv' /* NÃO */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 170.0,
                                          height: 70.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            width: 6.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await OrdersVisitsAssetsTable()
                                              .update(
                                            data: {
                                              'after_unit_id': null,
                                              'after_tag_id': null,
                                              'after_tag_sub_id': null,
                                              'after_status_id': null,
                                              'is_moved': true,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              FFAppState().stOVSelectedAsset.id,
                                            ),
                                          );
                                          await action_blocks.abOVSelectedAsset(
                                            context,
                                            abOVAssetId: FFAppState()
                                                .stOVSelectedAsset
                                                .id,
                                          );
                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'ilcd7mz3' /* SIM */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 170.0,
                                          height: 70.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            width: 6.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                  if (FFAppState().stOVSelectedAsset.isMoved)
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Visibility(
                                                  visible: FFAppState()
                                                      .stOVSelectedAsset
                                                      .isMoved,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'w73z5v8r' /* Informe o destino */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleLargeFamily),
                                                              ),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .cpDropdownUnitsModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpDropdownUnitsWidget(
                                                          cpHintText:
                                                              'Unidade ?',
                                                          cpInitialValue:
                                                              FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .afterUnitId,
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .cpDropdownAssetsTagsModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpDropdownAssetsTagsWidget(
                                                          cpHintText: 'Setor ?',
                                                          cpInitialValue:
                                                              FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .afterTagId,
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .cpDropdownAssetsTagsSubsModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpDropdownAssetsTagsSubsWidget(
                                                          cpHintText:
                                                              'Posição ?',
                                                          cpInitialValue:
                                                              FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .afterTagSubId,
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .cpDropdownAssetsStatusesModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpDropdownAssetsStatusesWidget(
                                                          cpHintText:
                                                              'Situação ?',
                                                          cpInitialValue:
                                                              FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .afterStatusId,
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .cpInputTextModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputTextWidget(
                                                          cpInitialValue:
                                                              FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .afterComments,
                                                          cpLabelText:
                                                              'Observações',
                                                          cpIsReadOnly: false,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                  borderRadius: 16.0,
                                                  borderWidth: 6.0,
                                                  buttonSize: 50.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  icon: Icon(
                                                    Icons.arrow_forward,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    size: 30.0,
                                                  ),
                                                  onPressed: () async {
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    if (_model
                                                            .cpDropdownUnitsModel
                                                            .dropdownUnitsValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar Unidade.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                    if (_model
                                                            .cpDropdownAssetsTagsModel
                                                            .dropdownAssetTagsValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar Setor.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                    if (_model
                                                            .cpDropdownAssetsTagsSubsModel
                                                            .dropdownAssetTagsSubsValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar Posição.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                    if (_model
                                                            .cpDropdownAssetsStatusesModel
                                                            .dropdownAssetsStatusesValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar Situação.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                    if (FFAppState()
                                                            .stOVSelectedAsset
                                                            .beforeUnitId ==
                                                        _model
                                                            .cpDropdownUnitsModel
                                                            .dropdownUnitsValue) {
                                                      _model.lpsvSubmitAvailable =
                                                          false;
                                                      safeSetState(() {});
                                                      if (FFAppState()
                                                              .stOVSelectedAsset
                                                              .beforeTagId ==
                                                          _model
                                                              .cpDropdownAssetsTagsModel
                                                              .dropdownAssetTagsValue) {
                                                        if (FFAppState()
                                                                .stOVSelectedAsset
                                                                .beforeTagSubId ==
                                                            _model
                                                                .cpDropdownAssetsTagsSubsModel
                                                                .dropdownAssetTagsSubsValue) {
                                                          if (FFAppState()
                                                                  .stOVSelectedAsset
                                                                  .beforeStatusId !=
                                                              _model
                                                                  .cpDropdownAssetsStatusesModel
                                                                  .dropdownAssetsStatusesValue) {
                                                            _model.lpsvSubmitAvailable =
                                                                true;
                                                            safeSetState(() {});
                                                          }
                                                        } else {
                                                          _model.lpsvSubmitAvailable =
                                                              true;
                                                          safeSetState(() {});
                                                        }
                                                      } else {
                                                        _model.lpsvSubmitAvailable =
                                                            true;
                                                        safeSetState(() {});
                                                      }
                                                    } else {
                                                      _model.lpsvSubmitAvailable =
                                                          true;
                                                      safeSetState(() {});
                                                    }

                                                    if (_model
                                                            .lpsvSubmitAvailable ==
                                                        true) {
                                                      await OrdersVisitsAssetsTable()
                                                          .update(
                                                        data: {
                                                          'after_unit_id': _model
                                                              .cpDropdownUnitsModel
                                                              .dropdownUnitsValue,
                                                          'after_tag_id': _model
                                                              .cpDropdownAssetsTagsModel
                                                              .dropdownAssetTagsValue,
                                                          'after_tag_sub_id': _model
                                                              .cpDropdownAssetsTagsSubsModel
                                                              .dropdownAssetTagsSubsValue,
                                                          'after_status_id': _model
                                                              .cpDropdownAssetsStatusesModel
                                                              .dropdownAssetsStatusesValue,
                                                          'moved_comments': _model
                                                              .cpInputTextModel
                                                              .inputTextTextController
                                                              .text,
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
                                                          FFAppState()
                                                              .stOVSelectedAsset
                                                              .id,
                                                        ),
                                                      );

                                                      context.pushNamed(
                                                        PgOVAsset2BeforeWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'ppOperation':
                                                              serializeParam(
                                                            'after',
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      return;
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Verifique as informações de destino.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                  },
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
