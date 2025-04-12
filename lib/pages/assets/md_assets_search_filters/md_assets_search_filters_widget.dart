import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_filters_assets_statuses/cp_dropdown_filters_assets_statuses_widget.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags/cp_dropdown_filters_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags_subs/cp_dropdown_filters_assets_tags_subs_widget.dart';
import '/pages/assets/cp_dropdown_filters_assets_types/cp_dropdown_filters_assets_types_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_assets_units/cp_dropdown_filters_assets_units_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'md_assets_search_filters_model.dart';
export 'md_assets_search_filters_model.dart';

class MdAssetsSearchFiltersWidget extends StatefulWidget {
  const MdAssetsSearchFiltersWidget({super.key});

  @override
  State<MdAssetsSearchFiltersWidget> createState() =>
      _MdAssetsSearchFiltersWidgetState();
}

class _MdAssetsSearchFiltersWidgetState
    extends State<MdAssetsSearchFiltersWidget> {
  late MdAssetsSearchFiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdAssetsSearchFiltersModel());

    _model.tfCodeDescriptionTextController ??=
        TextEditingController(text: FFAppState().stFiltersAssets.searchTerms);
    _model.tfCodeDescriptionFocusNode ??= FocusNode();

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
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
                              16.0, 0.0, 16.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 8.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '8k487jv4' /* Filtros */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
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
                                            color: FlutterFlowTheme.of(context)
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
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsUnitsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsUnitsWidget(
                                              cpHintText: 'Unidades ?',
                                              cpInitialValue: FFAppState()
                                                  .stFiltersAssets
                                                  .units,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsTypesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsTypesWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersAssets
                                                  .types,
                                              cpHintText: 'Tipo ?',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsTagsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsTagsWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersAssets
                                                  .tags,
                                              cpHintText: 'Setores ?',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsTagsSubsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsTagsSubsWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersAssets
                                                  .tagsSubs,
                                              cpHintText: 'Posições ?',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsStatusesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsStatusesWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersAssets
                                                  .statuses,
                                              cpHintText: 'Situações ?',
                                            ),
                                          ),
                                          TextFormField(
                                            controller: _model
                                                .tfCodeDescriptionTextController,
                                            focusNode: _model
                                                .tfCodeDescriptionFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.tfCodeDescriptionTextController',
                                              Duration(milliseconds: 2000),
                                              () => safeSetState(() {}),
                                            ),
                                            autofocus: false,
                                            autofillHints: [AutofillHints.name],
                                            textCapitalization:
                                                TextCapitalization.none,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'cb81fk6l' /* Código e/ou descrição */,
                                              ),
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily),
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                              errorStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 12.0, 0.0,
                                                          12.0),
                                              suffixIcon: _model
                                                      .tfCodeDescriptionTextController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .tfCodeDescriptionTextController
                                                            ?.clear();
                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                                ),
                                            minLines: 1,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .tfCodeDescriptionTextControllerValidator
                                                .asValidator(context),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              if (FFAppState()
                                                      .stFiltersAssetsCount >
                                                  0)
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          FFAppState()
                                                                  .stFiltersAssets =
                                                              DtFiltersAssetsStruct();
                                                          FFAppState()
                                                              .stFiltersAssetsCount = 0;
                                                          safeSetState(() {});
                                                          safeSetState(() {
                                                            _model
                                                                .cpDropdownFiltersAssetsUnitsModel
                                                                .dropdownFiltersAssetsUnitsValueController
                                                                ?.value = [];
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .cpDropdownFiltersAssetsTypesModel
                                                                .dropdownFiltersAssetsTypesValueController
                                                                ?.value = [];
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .cpDropdownFiltersAssetsTagsModel
                                                                .dropdownFiltersAssetsTagsValueController
                                                                ?.value = [];
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .cpDropdownFiltersAssetsTagsSubsModel
                                                                .dropdownFiltersAssetsTagsSubsValueController
                                                                ?.value = [];
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .cpDropdownFiltersAssetsStatusesModel
                                                                .dropdownFiltersAssetsStatusesValueController
                                                                ?.value = [];
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .tfCodeDescriptionTextController
                                                                ?.text = null;
                                                          });
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '46dek56x' /* Limpar  */,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 50.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 5.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            width: 6.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                      ),
                                                    ),
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
                                                      FFAppState()
                                                              .stFiltersAssetsIsSearching =
                                                          true;
                                                      FFAppState()
                                                          .update(() {});
                                                      FFAppState()
                                                              .stFiltersAssets =
                                                          DtFiltersAssetsStruct(
                                                        units: _model
                                                            .cpDropdownFiltersAssetsUnitsModel
                                                            .dropdownFiltersAssetsUnitsValue,
                                                        statuses: _model
                                                            .cpDropdownFiltersAssetsStatusesModel
                                                            .dropdownFiltersAssetsStatusesValue,
                                                        tags: _model
                                                            .cpDropdownFiltersAssetsTagsModel
                                                            .dropdownFiltersAssetsTagsValue,
                                                        tagsSubs: _model
                                                            .cpDropdownFiltersAssetsTagsSubsModel
                                                            .dropdownFiltersAssetsTagsSubsValue,
                                                        types: _model
                                                            .cpDropdownFiltersAssetsTypesModel
                                                            .dropdownFiltersAssetsTypesValue,
                                                        searchTerms: _model
                                                            .tfCodeDescriptionTextController
                                                            .text,
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                      Navigator.pop(context);
                                                      await action_blocks
                                                          .abFiltersAssetsCount(
                                                              context);
                                                      await action_blocks
                                                          .abAssetsSearchFilters(
                                                        context,
                                                        abUnits: _model
                                                            .cpDropdownFiltersAssetsUnitsModel
                                                            .dropdownFiltersAssetsUnitsValue,
                                                        abStatuses: _model
                                                            .cpDropdownFiltersAssetsStatusesModel
                                                            .dropdownFiltersAssetsStatusesValue,
                                                        abTags: _model
                                                            .cpDropdownFiltersAssetsTagsModel
                                                            .dropdownFiltersAssetsTagsValue,
                                                        abTagsSubs: _model
                                                            .cpDropdownFiltersAssetsTagsSubsModel
                                                            .dropdownFiltersAssetsTagsSubsValue,
                                                        abSearchTerms: _model
                                                            .tfCodeDescriptionTextController
                                                            .text,
                                                        abTypes: _model
                                                            .cpDropdownFiltersAssetsTypesModel
                                                            .dropdownFiltersAssetsTypesValue,
                                                        abLimit: 10,
                                                        abOffset: 0,
                                                      );
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'w6tctba8' /* Aplicar */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
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
                                            ],
                                          ),
                                        ]
                                            .divide(SizedBox(height: 8.0))
                                            .addToStart(SizedBox(height: 24.0))
                                            .addToEnd(SizedBox(height: 24.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ].addToEnd(SizedBox(height: 24.0)),
                            ),
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
