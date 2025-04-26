import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_settings_company_contract_show_card_model.dart';
export 'cp_settings_company_contract_show_card_model.dart';

class CpSettingsCompanyContractShowCardWidget extends StatefulWidget {
  const CpSettingsCompanyContractShowCardWidget({super.key});

  @override
  State<CpSettingsCompanyContractShowCardWidget> createState() =>
      _CpSettingsCompanyContractShowCardWidgetState();
}

class _CpSettingsCompanyContractShowCardWidgetState
    extends State<CpSettingsCompanyContractShowCardWidget>
    with TickerProviderStateMixin {
  late CpSettingsCompanyContractShowCardModel _model;

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
        createModel(context, () => CpSettingsCompanyContractShowCardModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
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
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stContractSelected.providerCompanyImgFilePath}/${FFAppState().stContractSelected.providerCompanyImgFileName}',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).info,
                          width: 6.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            FFAppState()
                                .stContractSelected
                                .providerCompanyDescription,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Text(
                          FFAppState().stContractSelected.code,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                font: FlutterFlowTheme.of(context).labelMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Text(
                          FFAppState().stContractSelected.description,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                font: FlutterFlowTheme.of(context).labelMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(16.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                        width: 0.0,
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: AlignedTooltip(
                      content: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFAppState().stContractSelected.statusCode,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: FlutterFlowTheme.of(context).bodyLarge,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBtnText,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: Duration(milliseconds: 100),
                      showDuration: Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          FFAppState().stContractSelected.statusCode,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: FlutterFlowTheme.of(context).titleSmall,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ].divide(SizedBox(width: 8.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
