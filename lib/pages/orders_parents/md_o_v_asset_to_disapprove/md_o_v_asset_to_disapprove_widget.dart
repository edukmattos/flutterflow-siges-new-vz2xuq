import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'md_o_v_asset_to_disapprove_model.dart';
export 'md_o_v_asset_to_disapprove_model.dart';

class MdOVAssetToDisapproveWidget extends StatefulWidget {
  const MdOVAssetToDisapproveWidget({super.key});

  @override
  State<MdOVAssetToDisapproveWidget> createState() =>
      _MdOVAssetToDisapproveWidgetState();
}

class _MdOVAssetToDisapproveWidgetState
    extends State<MdOVAssetToDisapproveWidget> {
  late MdOVAssetToDisapproveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVAssetToDisapproveModel());

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
                                                  'z1ymz8m1' /* Rejeição */,
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
                                              model: _model.cpInputTextModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CpInputTextWidget(
                                                cpInitialValue: FFAppState()
                                                    .stOVSelectedAsset
                                                    .disapprovedNotes,
                                                cpLabelText: 'Motivo(s)',
                                                cpIsReadOnly: false,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.formKey
                                                          .currentState !=
                                                      null) {
                                                    _model.formKey.currentState!
                                                        .validate();
                                                  }
                                                  await OrdersVisitsAssetsTable()
                                                      .update(
                                                    data: {
                                                      'processing_id': 4,
                                                      'disapproved_user_id':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .id,
                                                      'disapproved_at':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              getCurrentTimestamp),
                                                      'disapproved_notes': _model
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
                                                  await action_blocks
                                                      .abOVSelectedAsset(
                                                    context,
                                                    abOVAssetId: FFAppState()
                                                        .stOVSelectedAsset
                                                        .id,
                                                  );
                                                  await action_blocks
                                                      .abOVSelectedAssetsUpdate(
                                                    context,
                                                    abOVId: FFAppState()
                                                        .stOVSelected
                                                        .id,
                                                  );
                                                  await action_blocks
                                                      .abUsersNotificationsAdd(
                                                    context,
                                                    abType:
                                                        'orderVisitDisapproved',
                                                    abTitle:
                                                        'Atendimento rejeitado.',
                                                    abBody:
                                                        'Serviço Autorizado:${'\n'}OS ${FFAppState().stOSelected.orderMask}: ${FFAppState().stOSelected.statusDescription}${'\n'}${FFAppState().stOSelected.unitDescription}${'\n'}${FFAppState().stOSelected.requestedServices}',
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

                                                  context.pushNamed(
                                                      PgOVShowWidget.routeName);

                                                  Navigator.pop(context);
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'g05vu8ut' /* CONFIRMAR */,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
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
