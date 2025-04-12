import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders_parents/cp_dropdown_orders_cancel_reasons/cp_dropdown_orders_cancel_reasons_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'md_o_to_cancel_model.dart';
export 'md_o_to_cancel_model.dart';

class MdOToCancelWidget extends StatefulWidget {
  const MdOToCancelWidget({super.key});

  @override
  State<MdOToCancelWidget> createState() => _MdOToCancelWidgetState();
}

class _MdOToCancelWidgetState extends State<MdOToCancelWidget> {
  late MdOToCancelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOToCancelModel());

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
      width: double.infinity,
      height: double.infinity,
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
                                child: SingleChildScrollView(
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'nyblo7c4' /* Cancelamento */,
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
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 25.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                icon: Icon(
                                                  Icons.close_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 30.0,
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
                                      Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .cpDropdownOrdersCancelReasonsModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  CpDropdownOrdersCancelReasonsWidget(
                                                cpHintText: 'Motivo',
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (_model.formKey
                                                            .currentState !=
                                                        null) {
                                                      _model
                                                          .formKey.currentState!
                                                          .validate();
                                                    }
                                                    if (_model
                                                            .cpDropdownOrdersCancelReasonsModel
                                                            .dropdownOrdersCancelReasonsValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar motivo do cancelamento.'),
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
                                                    }
                                                    await OrdersTable().update(
                                                      data: {
                                                        'status_id': 7,
                                                        'status_at': supaSerialize<
                                                                DateTime>(
                                                            getCurrentTimestamp),
                                                        'cancel_reason_id': _model
                                                            .cpDropdownOrdersCancelReasonsModel
                                                            .dropdownOrdersCancelReasonsValue,
                                                        'canceled_user_id':
                                                            FFAppState()
                                                                .stUserCurrent
                                                                .id,
                                                        'canceled_at':
                                                            supaSerialize<
                                                                    DateTime>(
                                                                getCurrentTimestamp),
                                                        'canceled_team_id':
                                                            FFAppState()
                                                                .stUserCurrent
                                                                .teamId,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        FFAppState()
                                                            .stOSelected
                                                            .id,
                                                      ),
                                                    );
                                                    await action_blocks
                                                        .abUsersNotificationsAdd(
                                                      context,
                                                      abType:
                                                          'orderVisitDisapproved',
                                                      abTitle:
                                                          'Atendimento rejeitado.',
                                                      abBody:
                                                          'Serviço CANCELADO:${'\n'}OS ${FFAppState().stOSelected.orderMask}: ${FFAppState().stOSelected.statusDescription}${'\n'}${FFAppState().stOSelected.unitDescription}${'\n'}${FFAppState().stOSelected.requestedServices}',
                                                      abUserIdFrom: FFAppState()
                                                          .stUserCurrent
                                                          .id,
                                                      abUserIdTo: FFAppState()
                                                          .stOVSelected
                                                          .ovTeamLeaderId,
                                                      abImgUrl: null,
                                                      abOId: FFAppState()
                                                          .stOVSelected
                                                          .oId,
                                                      abTokenFcm: FFAppState()
                                                          .stUserSelected
                                                          .tokenFcm,
                                                      abUserFromNameShort:
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .nameShort,
                                                      abNotificationAmount:
                                                          FFAppState()
                                                                  .stUserSelected
                                                                  .notificationsAmount +
                                                              1,
                                                      abPageTarget: 'pgOShow',
                                                      abMobileWhatsapp:
                                                          FFAppState()
                                                              .stUserSelected
                                                              .mobileWhatsapp,
                                                    );
                                                    await action_blocks
                                                        .abOSelected(
                                                      context,
                                                      abOId: FFAppState()
                                                          .stOSelected
                                                          .id,
                                                      abIsParent: false,
                                                      abIsNew: false,
                                                    );
                                                    Navigator.pop(context);
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'xlu55jn0' /* CONFIRMAR */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                    elevation: 5.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      width: 6.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 12.0))
                                              .addToEnd(SizedBox(height: 32.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
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
