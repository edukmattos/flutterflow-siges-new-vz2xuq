import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_contracts_services_list_item_model.dart';
export 'cp_contracts_services_list_item_model.dart';

class CpContractsServicesListItemWidget extends StatefulWidget {
  const CpContractsServicesListItemWidget({
    super.key,
    required this.cpContractService,
  });

  final VContractsServicesRow? cpContractService;

  @override
  State<CpContractsServicesListItemWidget> createState() =>
      _CpContractsServicesListItemWidgetState();
}

class _CpContractsServicesListItemWidgetState
    extends State<CpContractsServicesListItemWidget> {
  late CpContractsServicesListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpContractsServicesListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.cpContractService!.description!,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                        ),
                        Text(
                          '${valueOrDefault<String>(
                            formatNumber(
                              widget.cpContractService?.valueUnit,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                            ),
                            '0',
                          )}/${widget.cpContractService?.unit}',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  FlutterFlowIconButton(
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
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Ativar Contrato'),
                                content: Text('Deseja realmente ATIVAR ?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('Cancelar'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Confirmar'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      if (confirmDialogResponse) {
                        await ContractsTable().update(
                          data: {
                            'status_id': 1,
                          },
                          matchingRows: (rows) => rows.eqOrNull(
                            'id',
                            widget.cpContractService?.id,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
