import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_currency0_decimals_copy/cp_input_currency0_decimals_copy_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
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
import 'cp_asset_material_add_list_item_model.dart';
export 'cp_asset_material_add_list_item_model.dart';

class CpAssetMaterialAddListItemWidget extends StatefulWidget {
  const CpAssetMaterialAddListItemWidget({
    super.key,
    required this.cpMaterialDt,
  });

  final DtMaterialStruct? cpMaterialDt;

  @override
  State<CpAssetMaterialAddListItemWidget> createState() =>
      _CpAssetMaterialAddListItemWidgetState();
}

class _CpAssetMaterialAddListItemWidgetState
    extends State<CpAssetMaterialAddListItemWidget>
    with TickerProviderStateMixin {
  late CpAssetMaterialAddListItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetMaterialAddListItemModel());

    _model.switchValue = true;
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
      'textOnPageLoadAnimation4': AnimationInfo(
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
                      widget.cpMaterialDt!.description,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!),
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
                      await AssetsMaterialsTable().insert({
                        'asset_id': FFAppState().stAssetSelected.id,
                        'material_id': widget.cpMaterialDt?.id,
                        'version_mode': FFAppState().stAppVersionMode?.name,
                        'is_original': _model.switchValue,
                        'brand_model': _model.cpInputBrandModelModel
                            .inputTextTextController.text,
                        'amount': functions.cfConvNumberStringToDouble(
                            _model.cpInputAmountModel.textController.text),
                        'created_user_id': FFAppState().stUserCurrent.id,
                        'created_at':
                            supaSerialize<DateTime>(getCurrentTimestamp),
                        'location': _model
                            .cpInputLocationModel.inputTextTextController.text,
                      });
                      FFAppState().stAssetSelectedMaterialsSearchResults = [];
                      safeSetState(() {});
                      await action_blocks.abAssetSelectedMaterials(
                        context,
                        abAssetId: FFAppState().stAssetSelected.id,
                      );
                      safeSetState(() {});
                      FFAppState().stAssetSelectedMaterialsSearchResults = [];
                      safeSetState(() {});
                    },
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
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
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
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Container(
                              width: 140.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.cpInputBrandModelModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpInputTextWidget(
                                  cpLabelText: 'Marca/Modelo',
                                  cpIsReadOnly: false,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 120.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.cpInputLocationModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpInputTextWidget(
                                  cpLabelText: 'Localização',
                                  cpIsReadOnly: false,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'v8suw23y' /* Original */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation3']!),
                              ),
                              Switch.adaptive(
                                value: _model.switchValue!,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue = newValue);
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).success,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).alternate,
                                inactiveTrackColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                inactiveThumbColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            ],
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
                                        cpLabelText: 'Qte',
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Text(
                                    widget.cpMaterialDt!.unit,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation4']!),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['cardOnPageLoadAnimation']!),
    );
  }
}
