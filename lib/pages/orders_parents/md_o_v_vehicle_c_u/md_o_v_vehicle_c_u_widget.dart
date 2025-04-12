import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import '/pages/vehicles/cp_dropdown_vehicles/cp_dropdown_vehicles_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'md_o_v_vehicle_c_u_model.dart';
export 'md_o_v_vehicle_c_u_model.dart';

class MdOVVehicleCUWidget extends StatefulWidget {
  const MdOVVehicleCUWidget({
    super.key,
    this.cpOVVehicleDt,
  });

  final DtOrderVisitVehicleStruct? cpOVVehicleDt;

  @override
  State<MdOVVehicleCUWidget> createState() => _MdOVVehicleCUWidgetState();
}

class _MdOVVehicleCUWidgetState extends State<MdOVVehicleCUWidget> {
  late MdOVVehicleCUModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVVehicleCUModel());

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

    return Container(
      width: 500.0,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Container(
          width: 400.0,
          decoration: BoxDecoration(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 18.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zktdab6i' /* Transporte */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 44.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.close_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: Color(0xFFE0E3E7),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Form(
                                            key: _model.formKey,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .cpDropdownVehiclesModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      CpDropdownVehiclesWidget(
                                                    cpHintText: 'Veículo',
                                                    cpInitialValue: widget
                                                        .cpOVVehicleDt
                                                        ?.vehicleId,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpInputIntegerModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CpInputIntegerWidget(
                                                    cpInitialValue: widget
                                                        .cpOVVehicleDt
                                                        ?.recorderStart
                                                        .toString(),
                                                    cpLabelText:
                                                        'Registrador Inicial',
                                                    cpIsReadOnly: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .cpInputIntegerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CpInputIntegerWidget(
                                                    cpInitialValue: widget
                                                        .cpOVVehicleDt
                                                        ?.recorderEnd
                                                        .toString(),
                                                    cpLabelText:
                                                        'Registrador Final',
                                                    cpIsReadOnly: false,
                                                  ),
                                                ),
                                                if (widget.cpOVVehicleDt !=
                                                    null)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (!true)
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                var confirmDialogResponse =
                                                                    await showDialog<
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
                                                                  await OrdersVisitsVehiclesTable()
                                                                      .update(
                                                                    data: {
                                                                      'is_deleted':
                                                                          true,
                                                                      'deleted_user_id':
                                                                          FFAppState()
                                                                              .stUserCurrent
                                                                              .id,
                                                                      'deleted_at':
                                                                          supaSerialize<DateTime>(
                                                                              getCurrentTimestamp),
                                                                    },
                                                                    matchingRows:
                                                                        (rows) =>
                                                                            rows.eqOrNull(
                                                                      'id',
                                                                      widget
                                                                          .cpOVVehicleDt
                                                                          ?.id,
                                                                    ),
                                                                  );
                                                                  await action_blocks
                                                                      .abOVSelectedVehicles(
                                                                    context,
                                                                    abOVId: FFAppState()
                                                                        .stOVSelected
                                                                        .id,
                                                                  );
                                                                  Navigator.pop(
                                                                      context);
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '5mahjexv' /* EXCLUIR */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                                elevation: 5.0,
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
                                                                            16.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.resVehicleSelected =
                                                                  await VVehiclesTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownVehiclesModel
                                                                      .dropdownVehiclesValue,
                                                                ),
                                                              );
                                                              await OrdersVisitsVehiclesTable()
                                                                  .update(
                                                                data: {
                                                                  'vehicle_id': _model
                                                                      .cpDropdownVehiclesModel
                                                                      .dropdownVehiclesValue,
                                                                  'recorder_start':
                                                                      int.tryParse(_model
                                                                          .cpInputIntegerModel1
                                                                          .inputTextTextController
                                                                          .text),
                                                                  'recorder_end':
                                                                      int.tryParse(_model
                                                                          .cpInputIntegerModel2
                                                                          .inputTextTextController
                                                                          .text),
                                                                  'value_unit': _model
                                                                      .resVehicleSelected
                                                                      ?.firstOrNull
                                                                      ?.valueUnit,
                                                                  'value_total': (int.parse(_model
                                                                              .cpInputIntegerModel2
                                                                              .inputTextTextController
                                                                              .text) -
                                                                          int.parse(_model
                                                                              .cpInputIntegerModel1
                                                                              .inputTextTextController
                                                                              .text)) *
                                                                      (_model
                                                                          .resVehicleSelected!
                                                                          .firstOrNull!
                                                                          .valueUnit!),
                                                                },
                                                                matchingRows:
                                                                    (rows) => rows
                                                                        .eqOrNull(
                                                                  'id',
                                                                  widget
                                                                      .cpOVVehicleDt
                                                                      ?.id,
                                                                ),
                                                              );
                                                              await action_blocks
                                                                  .abOVSelectedVehicles(
                                                                context,
                                                                abOVId: FFAppState()
                                                                    .stOVSelected
                                                                    .id,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                              Navigator.pop(
                                                                  context);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'goek8p7f' /* ALTERAR */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: double
                                                                  .infinity,
                                                              height: 50.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                              elevation: 5.0,
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
                                                                          16.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                if (widget.cpOVVehicleDt ==
                                                    null)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.resVehicleSelectedNew =
                                                                  await VVehiclesTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownVehiclesModel
                                                                      .dropdownVehiclesValue,
                                                                ),
                                                              );
                                                              await OrdersVisitsVehiclesTable()
                                                                  .insert({
                                                                'ov_id':
                                                                    FFAppState()
                                                                        .stOVSelected
                                                                        .id,
                                                                'vehicle_id': _model
                                                                    .cpDropdownVehiclesModel
                                                                    .dropdownVehiclesValue,
                                                                'recorder_start':
                                                                    int.tryParse(_model
                                                                        .cpInputIntegerModel1
                                                                        .inputTextTextController
                                                                        .text),
                                                                'recorder_end':
                                                                    int.tryParse(_model
                                                                        .cpInputIntegerModel2
                                                                        .inputTextTextController
                                                                        .text),
                                                                'value_unit': _model
                                                                    .resVehicleSelectedNew
                                                                    ?.firstOrNull
                                                                    ?.valueUnit,
                                                                'discount': 1.0,
                                                                'created_user_id':
                                                                    FFAppState()
                                                                        .stUserCurrent
                                                                        .id,
                                                                'created_at':
                                                                    supaSerialize<
                                                                            DateTime>(
                                                                        getCurrentTimestamp),
                                                                'version_mode':
                                                                    FFAppState()
                                                                        .stAppVersionMode
                                                                        ?.name,
                                                              });
                                                              await action_blocks
                                                                  .abOVSelectedVehicles(
                                                                context,
                                                                abOVId: FFAppState()
                                                                    .stOVSelected
                                                                    .id,
                                                              );
                                                              Navigator.pop(
                                                                  context);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'yfr376d2' /* INCLUIR */,
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
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                              elevation: 5.0,
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
                                                                          16.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                              ].divide(SizedBox(height: 12.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
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
