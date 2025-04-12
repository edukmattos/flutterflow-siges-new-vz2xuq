import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_settings_companies_list_item_model.dart';
export 'cp_settings_companies_list_item_model.dart';

class CpSettingsCompaniesListItemWidget extends StatefulWidget {
  const CpSettingsCompaniesListItemWidget({
    super.key,
    required this.cpCompanyDt,
  });

  final DtCompanyStruct? cpCompanyDt;

  @override
  State<CpSettingsCompaniesListItemWidget> createState() =>
      _CpSettingsCompaniesListItemWidgetState();
}

class _CpSettingsCompaniesListItemWidgetState
    extends State<CpSettingsCompaniesListItemWidget> {
  late CpSettingsCompaniesListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpSettingsCompaniesListItemModel());

    _model.switchValue = widget.cpCompanyDt!.isAvailable;
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
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpCompanyDt?.imgFilePath}/${widget.cpCompanyDt?.imgFileName}',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.cpCompanyDt?.code,
                                'Code',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.cpCompanyDt?.description,
                                'Description',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Switch.adaptive(
                    value: _model.switchValue!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue = newValue);
                      if (newValue) {
                        FFAppState().stCounterLoop = 0;
                        FFAppState().stCounterLoopFinal = valueOrDefault<int>(
                          FFAppState().stCompaniesSearchResults.length,
                          0,
                        );
                        safeSetState(() {});
                        while (FFAppState().stCounterLoop <
                            FFAppState().stCounterLoopFinal) {
                          if (FFAppState()
                                  .stCompaniesSearchResults
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.id ==
                              widget.cpCompanyDt?.id) {
                            FFAppState().updateStCompaniesSearchResultsAtIndex(
                              FFAppState().stCounterLoop,
                              (e) => e..isAvailable = _model.switchValue,
                            );
                            safeSetState(() {});
                            await CfgCompaniesTable().update(
                              data: {
                                'is_available': _model.switchValue,
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                widget.cpCompanyDt?.id,
                              ),
                            );
                          } else {
                            FFAppState().stCounterLoop =
                                FFAppState().stCounterLoop + 1;
                            safeSetState(() {});
                          }
                        }
                      } else {
                        FFAppState().stCounterLoop = 0;
                        FFAppState().stCounterLoopFinal = valueOrDefault<int>(
                          FFAppState().stCompaniesSearchResults.length,
                          0,
                        );
                        safeSetState(() {});
                        while (FFAppState().stCounterLoop <
                            FFAppState().stCounterLoopFinal) {
                          if (FFAppState()
                                  .stCompaniesSearchResults
                                  .elementAtOrNull(FFAppState().stCounterLoop)
                                  ?.id ==
                              widget.cpCompanyDt?.id) {
                            FFAppState().updateStCompaniesSearchResultsAtIndex(
                              FFAppState().stCounterLoop,
                              (e) => e..isAvailable = _model.switchValue,
                            );
                            safeSetState(() {});
                            await CfgCompaniesTable().update(
                              data: {
                                'is_available': _model.switchValue,
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                widget.cpCompanyDt?.id,
                              ),
                            );
                          } else {
                            FFAppState().stCounterLoop =
                                FFAppState().stCounterLoop + 1;
                            safeSetState(() {});
                          }
                        }
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).success,
                    activeTrackColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                    inactiveThumbColor: FlutterFlowTheme.of(context).error,
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
