import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_currency0_decimals_copy/cp_input_currency0_decimals_copy_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_contract_service_shop_list_item_model.dart';
export 'cp_o_v_contract_service_shop_list_item_model.dart';

class CpOVContractServiceShopListItemWidget extends StatefulWidget {
  const CpOVContractServiceShopListItemWidget({
    super.key,
    required this.cpContractServiceDt,
  });

  final DtContractServiceStruct? cpContractServiceDt;

  @override
  State<CpOVContractServiceShopListItemWidget> createState() =>
      _CpOVContractServiceShopListItemWidgetState();
}

class _CpOVContractServiceShopListItemWidgetState
    extends State<CpOVContractServiceShopListItemWidget>
    with TickerProviderStateMixin {
  late CpOVContractServiceShopListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVContractServiceShopListItemModel());

    animationsMap.addAll({
      'cardOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      valueOrDefault<String>(
                        widget.cpContractServiceDt?.description,
                        'Descricao',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: FlutterFlowTheme.of(context).titleMedium,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.cpContractServiceDt!.code,
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              font: FlutterFlowTheme.of(context).labelMedium,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                  ],
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Container(
                        width: 150.0,
                        decoration: BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.cpInputValueUnitModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpInputCurrency0DecimalsCopyWidget(
                            cpInitialValue:
                                functions.cfConvDoubleToCurrency2Decimals(
                                    widget.cpContractServiceDt!.valueUnit
                                        .toString(),
                                    2),
                            cpLabelText: 'R\$ Unitário',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.cpInputADModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpInputCurrency0DecimalsCopyWidget(
                          cpInitialValue:
                              functions.cfConvDoubleToCurrency2Decimals(
                                  widget.cpContractServiceDt!.discount
                                      .toString(),
                                  2),
                          cpLabelText: 'A/D',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Container(
                              width: 110.0,
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.cpInputAmountModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpInputCurrency0DecimalsCopyWidget(
                                  cpInitialValue: '1,00',
                                  cpLabelText: 'Quantidade',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Text(
                              widget.cpContractServiceDt!.unit,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation3']!),
                          ),
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 16.0,
                            borderWidth: 6.0,
                            buttonSize: 50.0,
                            icon: FaIcon(
                              FontAwesomeIcons.plusCircle,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              await OrdersVisitsServicesTable().insert({
                                'ov_id': FFAppState().stOVSelected.id,
                                'service_id':
                                    widget.cpContractServiceDt?.serviceId,
                                'value_unit':
                                    functions.cfConvNumberStringToDouble(_model
                                        .cpInputValueUnitModel
                                        .textController
                                        .text),
                                'amount': functions.cfConvNumberStringToDouble(
                                    _model.cpInputAmountModel.textController
                                        .text),
                                'discount':
                                    functions.cfConvNumberStringToDouble(_model
                                        .cpInputADModel.textController.text),
                                'version_mode':
                                    FFAppState().stAppVersionMode?.name,
                                'value_total': functions
                                        .cfConvNumberStringToDouble(_model
                                            .cpInputValueUnitModel
                                            .textController
                                            .text) *
                                    functions.cfConvNumberStringToDouble(_model
                                        .cpInputADModel.textController.text) *
                                    functions.cfConvNumberStringToDouble(_model
                                        .cpInputAmountModel
                                        .textController
                                        .text),
                                'created_user_id':
                                    FFAppState().stUserCurrent.id,
                                'created_at': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                              });
                              await action_blocks.abOVSelectedServices(
                                context,
                                abOVId: FFAppState().stOVSelected.id,
                              );
                              await action_blocks.abOVSelected(
                                context,
                                abOVId: FFAppState().stOVSelected.id,
                              );
                              FFAppState()
                                  .stContractSelectedServicesSearchResults = [];
                              safeSetState(() {});
                            },
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['cardOnPageLoadAnimation']!),
    );
  }
}
