import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_vehicles_list_item_model.dart';
export 'cp_o_v_vehicles_list_item_model.dart';

class CpOVVehiclesListItemWidget extends StatefulWidget {
  const CpOVVehiclesListItemWidget({
    super.key,
    required this.cpDtOVVehicle,
  });

  final DtOrderVisitVehicleStruct? cpDtOVVehicle;

  @override
  State<CpOVVehiclesListItemWidget> createState() =>
      _CpOVVehiclesListItemWidgetState();
}

class _CpOVVehiclesListItemWidgetState
    extends State<CpOVVehiclesListItemWidget> {
  late CpOVVehiclesListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVVehiclesListItemModel());

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

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.cpDtOVVehicle!.vehicleDescription,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: FlutterFlowTheme.of(context).titleMedium,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Qte: ${widget.cpDtOVVehicle?.amount.toString()}${widget.cpDtOVVehicle?.unit} | Vlr.Unit.: ${valueOrDefault<String>(
                            formatNumber(
                              widget.cpDtOVVehicle?.valueUnit,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                              currency: 'R\$ ',
                            ),
                            '0',
                          )} | A/D:  ${formatNumber(
                            widget.cpDtOVVehicle?.discount,
                            formatType: FormatType.custom,
                            format: '0.####',
                            locale: 'pt_br',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            formatNumber(
                              widget.cpDtOVVehicle?.valueTotal,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                              currency: 'R\$ ',
                            ),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: FlutterFlowTheme.of(context).titleMedium,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (!FFAppState().stOVSelected.ovIsFiled)
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
                                  title: Text('Ops ...'),
                                  content: Text(
                                      'Deseja realmente EXCLUIR este registro ?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: Text('Confirmar'),
                                    ),
                                  ],
                                );
                              },
                            ) ??
                            false;
                        if (confirmDialogResponse) {
                          await OrdersVisitsVehiclesTable().delete(
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              widget.cpDtOVVehicle?.id,
                            ),
                          );
                          await action_blocks.abOVSelectedVehicles(
                            context,
                            abOVId: FFAppState().stOVSelected.id,
                          );
                        }
                      },
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
