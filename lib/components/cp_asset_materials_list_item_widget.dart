import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/cp_asset_material_add_list_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_materials/cp_asset_materials_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_asset_materials_list_item_model.dart';
export 'cp_asset_materials_list_item_model.dart';

class CpAssetMaterialsListItemWidget extends StatefulWidget {
  const CpAssetMaterialsListItemWidget({super.key});

  @override
  State<CpAssetMaterialsListItemWidget> createState() =>
      _CpAssetMaterialsListItemWidgetState();
}

class _CpAssetMaterialsListItemWidgetState
    extends State<CpAssetMaterialsListItemWidget> {
  late CpAssetMaterialsListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetMaterialsListItemModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'wnu0ich5' /* Componentes */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (functions.cfCheckStOVSelectedAssetIsEmpty(
                        FFAppState().stOVSelectedAsset) ??
                    true)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 180.0,
                        decoration: BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.cpInputMaterialCodeDescriptionModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpInputTextWidget(),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 16.0,
                        borderWidth: 6.0,
                        buttonSize: 50.0,
                        icon: FaIcon(
                          FontAwesomeIcons.search,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: (_model.cpInputMaterialCodeDescriptionModel
                                        .inputTextTextController.text ==
                                    '')
                            ? null
                            : () async {
                                var _shouldSetState = false;
                                _model.resAllowedAssetMaterials =
                                    await action_blocks.abGuardian(
                                  context,
                                  abPgRequestedId: 17,
                                );
                                _shouldSetState = true;
                                if (_model.resAllowedAssetMaterials!) {
                                  _model.resMaterials = await ApiMaterialsGroup
                                      .apiMaterialsSearchableCall
                                      .call(
                                    apiKey: FFDevEnvironmentValues().envApiKey,
                                    accessToken: currentJwtToken,
                                    searchTerms: _model
                                        .cpInputMaterialCodeDescriptionModel
                                        .inputTextTextController
                                        .text,
                                    versionMode:
                                        FFAppState().stAppVersionMode?.name,
                                  );

                                  _shouldSetState = true;
                                  if ((_model.resMaterials?.succeeded ??
                                      true)) {
                                    FFAppState()
                                            .stAssetSelectedMaterialsSearchResults =
                                        ((_model.resMaterials?.jsonBody ?? '')
                                                    .toList()
                                                    .map<DtMaterialStruct?>(
                                                        DtMaterialStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<DtMaterialStruct?>)
                                            .withoutNulls
                                            .toList()
                                            .cast<DtMaterialStruct>();
                                    FFAppState().update(() {});
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Ops ... Houve um erro em localizar Material.',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                } else {
                                  context
                                      .pushNamed(PgNotAllowedWidget.routeName);

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
              ],
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Builder(
              builder: (context) {
                final gcMateriaisResults = FFAppState()
                    .stAssetSelectedMaterialsSearchResults
                    .map((e) => e)
                    .toList();

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: gcMateriaisResults.length,
                  itemBuilder: (context, gcMateriaisResultsIndex) {
                    final gcMateriaisResultsItem =
                        gcMateriaisResults[gcMateriaisResultsIndex];
                    return CpAssetMaterialAddListItemWidget(
                      key: Key(
                          'Key9iq_${gcMateriaisResultsIndex}_of_${gcMateriaisResults.length}'),
                      cpMaterialDt: gcMateriaisResultsItem,
                    );
                  },
                );
              },
            ),
            Builder(
              builder: (context) {
                final gcAssetMaterials = FFAppState()
                    .stAssetSelectedMaterials
                    .map((e) => e)
                    .toList();

                return ListView.separated(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: gcAssetMaterials.length,
                  separatorBuilder: (_, __) => SizedBox(height: 10.0),
                  itemBuilder: (context, gcAssetMaterialsIndex) {
                    final gcAssetMaterialsItem =
                        gcAssetMaterials[gcAssetMaterialsIndex];
                    return CpAssetMaterialsWidget(
                      key: Key(
                          'Key50g_${gcAssetMaterialsIndex}_of_${gcAssetMaterials.length}'),
                      cpAssetMaterialDt: gcAssetMaterialsItem,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
