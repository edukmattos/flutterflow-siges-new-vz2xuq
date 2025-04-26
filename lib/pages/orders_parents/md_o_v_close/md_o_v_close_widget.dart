import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders_parents/cp_dropdown_o_close_statuses/cp_dropdown_o_close_statuses_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_suspended_reasons/cp_dropdown_orders_suspended_reasons_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_o_v_close_model.dart';
export 'md_o_v_close_model.dart';

class MdOVCloseWidget extends StatefulWidget {
  const MdOVCloseWidget({super.key});

  @override
  State<MdOVCloseWidget> createState() => _MdOVCloseWidgetState();
}

class _MdOVCloseWidgetState extends State<MdOVCloseWidget> {
  late MdOVCloseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVCloseModel());

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
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                    width: 500.0,
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
                              18.0, 0.0, 18.0, 0.0),
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
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4iqwbd23' /* Encerrar */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                    Divider(
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: Color(0xFFE0E3E7),
                                    ),
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownOCloseStatusesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            updateOnChange: true,
                                            child:
                                                CpDropdownOCloseStatusesWidget(
                                              cpHintText: 'OS Situação ?',
                                              cpInitialValue: 6,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownOrdersSuspendedReasonsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownOrdersSuspendedReasonsWidget(
                                              cpHintText:
                                                  'Se OS suspensa, qual motivo ? ',
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'w74b2ppj' /* Se OS Suspensa, qual nível pro... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Slider(
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                min: 0.0,
                                                max: 100.0,
                                                value: _model.sliderValue ??=
                                                    valueOrDefault<double>(
                                                          FFAppState()
                                                              .stOSelected
                                                              .progress,
                                                          0.0,
                                                        ) *
                                                        100,
                                                label: _model.sliderValue
                                                    ?.toString(),
                                                divisions: 20,
                                                onChanged: (_model
                                                            .cpDropdownOCloseStatusesModel
                                                            .dropdownOCloseStatusesValue ==
                                                        7)
                                                    ? null
                                                    : (newValue) {
                                                        safeSetState(() =>
                                                            _model.sliderValue =
                                                                newValue);
                                                      },
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDropdownOCloseStatusesModel
                                                              .dropdownOCloseStatusesValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Informar a Situação da OS.'),
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
                                                        return;
                                                      }
                                                      _model.lcsvProgress =
                                                          (_model.sliderValue!) /
                                                              100;
                                                      safeSetState(() {});
                                                      if (_model
                                                              .cpDropdownOCloseStatusesModel
                                                              .dropdownOCloseStatusesValue ==
                                                          6) {
                                                        if (_model
                                                                .cpDropdownOrdersSuspendedReasonsModel
                                                                .dropdownOrdersOrdersSuspendedReasonsValue !=
                                                            null) {
                                                          if ((_model.lcsvProgress >=
                                                                  0.05) &&
                                                              (_model.lcsvProgress <=
                                                                  0.95)) {
                                                            // Encerra Atendimento
                                                            await OrdersVisitsTable()
                                                                .update(
                                                              data: {
                                                                'ov_ended_at':
                                                                    supaSerialize<
                                                                            DateTime>(
                                                                        getCurrentTimestamp),
                                                                'ov_status_id':
                                                                    2,
                                                                'ov_o_status_id': _model
                                                                    .cpDropdownOCloseStatusesModel
                                                                    .dropdownOCloseStatusesValue,
                                                                'ov_o_suspended_reason_id': _model
                                                                    .cpDropdownOrdersSuspendedReasonsModel
                                                                    .dropdownOrdersOrdersSuspendedReasonsValue,
                                                                'ov_o_progress':
                                                                    _model
                                                                        .lcsvProgress,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                FFAppState()
                                                                    .stOVSelected
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
                                                                      'A situação da OS não permite o nível de progresso informado.'),
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
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Ops ...'),
                                                                content: Text(
                                                                    'Informar o motivo da suspensão.'),
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
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        _model.lcsvProgress =
                                                            1.0;
                                                        safeSetState(() {});
                                                        // Encerra Atendimento
                                                        await OrdersVisitsTable()
                                                            .update(
                                                          data: {
                                                            'ov_ended_at':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                            'ov_status_id': 2,
                                                            'ov_o_status_id': _model
                                                                .cpDropdownOCloseStatusesModel
                                                                .dropdownOCloseStatusesValue,
                                                            'ov_o_progress':
                                                                _model
                                                                    .lcsvProgress,
                                                          },
                                                          matchingRows:
                                                              (rows) =>
                                                                  rows.eqOrNull(
                                                            'id',
                                                            FFAppState()
                                                                .stOVSelected
                                                                .id,
                                                          ),
                                                        );
                                                      }

                                                      // Atualiza Status OS
                                                      await OrdersTable()
                                                          .update(
                                                        data: {
                                                          'status_id': _model
                                                              .cpDropdownOCloseStatusesModel
                                                              .dropdownOCloseStatusesValue,
                                                          'status_at':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'suspended_reason_id': _model
                                                              .cpDropdownOrdersSuspendedReasonsModel
                                                              .dropdownOrdersOrdersSuspendedReasonsValue,
                                                          'progress': _model
                                                              .lcsvProgress,
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
                                                          FFAppState()
                                                              .stOVSelected
                                                              .oId,
                                                        ),
                                                      );
                                                      // Atualiza OV + O
                                                      await action_blocks
                                                          .abOVSelected(
                                                        context,
                                                        abOVId: FFAppState()
                                                            .stOVSelected
                                                            .id,
                                                      );
                                                      // Atualiza Status TeamUsers
                                                      FFAppState()
                                                          .stCounterLoop = 0;
                                                      FFAppState()
                                                              .stCounterLoopFinal =
                                                          FFAppState()
                                                              .stOVSelectedTeamUsers
                                                              .length;
                                                      safeSetState(() {});
                                                      while (FFAppState()
                                                              .stCounterLoop <
                                                          FFAppState()
                                                              .stCounterLoopFinal) {
                                                        await UsersTable()
                                                            .update(
                                                          data: {
                                                            'ov_in_progress_leader_id':
                                                                0,
                                                            'o_contract_id_in_progress':
                                                                0,
                                                            'o_type_id_in_progress':
                                                                0,
                                                            'o_type_sub_id_in_progress':
                                                                0,
                                                            'o_plan_id_in_progress':
                                                                0,
                                                            'o_asset_tag_id_in_progress':
                                                                0,
                                                            'o_unit_id_in_progress':
                                                                0,
                                                            'o_system_id_in_progress':
                                                                0,
                                                            'o_system_parent_id_in_progress':
                                                                0,
                                                            'o_unit_type_id_in_progress':
                                                                0,
                                                            'o_unit_type_parent_id_in_progress':
                                                                0,
                                                            'o_object_id_in_progress':
                                                                0,
                                                            'ov_id_in_progress':
                                                                0,
                                                            'o_id_in_progress':
                                                                0,
                                                            'op_id_in_progress':
                                                                0,
                                                            'is_available':
                                                                true,
                                                            'is_ov_in_progress':
                                                                false,
                                                          },
                                                          matchingRows:
                                                              (rows) =>
                                                                  rows.eqOrNull(
                                                            'id',
                                                            FFAppState()
                                                                .stOVSelectedTeamUsers
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .stCounterLoop)
                                                                ?.userId,
                                                          ),
                                                        );
                                                        _shouldSetState = true;
                                                        FFAppState()
                                                                .stCounterLoop =
                                                            FFAppState()
                                                                    .stCounterLoop +
                                                                1;
                                                        FFAppState()
                                                            .update(() {});
                                                      }
                                                      if (FFAppState()
                                                              .stUserCurrent
                                                              .id ==
                                                          FFAppState()
                                                              .stOSelected
                                                              .teamLeaderId) {
                                                        await action_blocks
                                                            .abUserUpdate(
                                                          context,
                                                          abEmail: FFAppState()
                                                              .stOSelected
                                                              .teamLeaderEmail,
                                                        );
                                                      }
                                                      await action_blocks
                                                          .abOPEvents(
                                                        context,
                                                        abOPId: FFAppState()
                                                            .stOVSelected
                                                            .opId,
                                                        abTitle:
                                                            'Atendimento Encerrado.',
                                                        abBody:
                                                            '${FFAppState().stUserSelected.nameShort} encerrou o atendimento: ${'\n'}OS ${FFAppState().stOSelected.orderMask}: ${FFAppState().stOSelected.statusDescription}${'\n'}${FFAppState().stOVSelected.oUnitDescription}${'\n'}${FFAppState().stOSelected.assetTagDescription}${'\n'}${FFAppState().stOVSelected.oRequestedServices}',
                                                        abOId: FFAppState()
                                                            .stOVSelected
                                                            .oId,
                                                      );
                                                      await action_blocks
                                                          .abOVSelectedProcessingCheck(
                                                        context,
                                                        abOVId: FFAppState()
                                                            .stOVSelected
                                                            .id,
                                                      );
                                                      Navigator.pop(context);
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'jvb33g9d' /* CONFIRMAR */,
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
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                      elevation: 5.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 6.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]
                                            .divide(SizedBox(height: 12.0))
                                            .addToEnd(SizedBox(height: 24.0)),
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
