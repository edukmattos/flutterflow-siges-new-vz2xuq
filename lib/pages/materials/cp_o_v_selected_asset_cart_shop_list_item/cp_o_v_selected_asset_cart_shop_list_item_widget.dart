import '/backend/schema/structs/index.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_selected_asset_cart_shop_list_item_model.dart';
export 'cp_o_v_selected_asset_cart_shop_list_item_model.dart';

class CpOVSelectedAssetCartShopListItemWidget extends StatefulWidget {
  const CpOVSelectedAssetCartShopListItemWidget({
    super.key,
    required this.cpMaterialDt,
  });

  final DtMaterialStruct? cpMaterialDt;

  @override
  State<CpOVSelectedAssetCartShopListItemWidget> createState() =>
      _CpOVSelectedAssetCartShopListItemWidgetState();
}

class _CpOVSelectedAssetCartShopListItemWidgetState
    extends State<CpOVSelectedAssetCartShopListItemWidget>
    with TickerProviderStateMixin {
  late CpOVSelectedAssetCartShopListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CpOVSelectedAssetCartShopListItemModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(16.0),
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
            mainAxisSize: MainAxisSize.min,
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
                        widget.cpMaterialDt?.description,
                        'Descricao',
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
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
                        widget.cpMaterialDt!.code,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleLargeFamily),
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Container(
                          width: 150.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.cpInputCurrency0DecimalsCopyModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpInputCurrency0DecimalsCopyWidget(
                              cpInitialValue: '1,00',
                              cpLabelText: 'Quantidade',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      widget.cpMaterialDt!.unit,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!),
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.cartPlus,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        if (_model.formKey.currentState != null) {
                          _model.formKey.currentState!.validate();
                        }
                        if ((functions
                                    .cfConvNumberStringToDouble(_model
                                        .cpInputCurrency0DecimalsCopyModel
                                        .textController
                                        .text)
                                    .toString() !=
                                '0') ||
                            (_model.cpInputCurrency0DecimalsCopyModel
                                        .textController.text !=
                                    '')) {
                          await Future.wait([
                            Future(() async {
                              FFAppState().stRowsSelected = [];
                              safeSetState(() {});
                              FFAppState().addToStRowsSelected(
                                  widget.cpMaterialDt!.id);
                              safeSetState(() {});
                            }),
                            Future(() async {
                              await action_blocks.abOVSelectedAssetCart(
                                context,
                                abOperation: 'add',
                                abUserId: FFAppState().stUserCurrent.id,
                                abMaterialId: widget.cpMaterialDt?.id,
                                abMaterialAmount:
                                    functions.cfConvNumberStringToDouble(_model
                                        .cpInputCurrency0DecimalsCopyModel
                                        .textController
                                        .text),
                                abOVAssetId: FFAppState().stOVSelectedAsset.id,
                              );
                            }),
                          ]);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Ops ...'),
                                content: Text('Informar a Quantidade.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          return;
                        }
                      },
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['cardOnPageLoadAnimation']!),
    );
  }
}
