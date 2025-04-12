import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_assets_types/cp_dropdown_assets_types_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_asset_c_u_step01_model.dart';
export 'pg_asset_c_u_step01_model.dart';

class PgAssetCUStep01Widget extends StatefulWidget {
  const PgAssetCUStep01Widget({
    super.key,
    required this.cpOperation,
  });

  final String? cpOperation;

  static String routeName = 'pgAssetCUStep_01';
  static String routePath = 'pgAssetCUStep01';

  @override
  State<PgAssetCUStep01Widget> createState() => _PgAssetCUStep01WidgetState();
}

class _PgAssetCUStep01WidgetState extends State<PgAssetCUStep01Widget> {
  late PgAssetCUStep01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetCUStep01Model());

    _model.textController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.code);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                (widget.cpOperation == 'create') ||
                        (widget.cpOperation == 'duplicate')
                    ? 'Novo Ativo'
                    : 'Editar Ativo',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: FlutterFlowTheme.of(context).info,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.cpDBUserAvailableModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CpDBUserAvailableWidget(
                        toolTip: FFAppState().stUserCurrent.nameShort,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 12.0),
                        child: Container(
                          constraints: BoxConstraints(
                            minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                            maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                          ),
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (widget.cpOperation == 'update')
                                  wrapWithModel(
                                    model: _model.cpAssetCreateCardModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpAssetCreateCardWidget(),
                                  ),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: true,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'znubtm53' /* Código */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily),
                                              ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          errorStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 0.0, 12.0),
                                          suffixIcon: _model.textController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.textController
                                                        ?.clear();
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                            ),
                                        minLines: 1,
                                        keyboardType: TextInputType.number,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
                                      ),
                                      wrapWithModel(
                                        model:
                                            _model.cpDropdownAssetsTypesModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpDropdownAssetsTypesWidget(
                                          cpHintText: 'Tipo Ativo',
                                          cpInitialValue: FFAppState()
                                              .stAssetSelectedCU
                                              .typeId,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  if (_model
                                                          .cpDropdownAssetsTypesModel
                                                          .dropdownAssetTypesValue !=
                                                      0) {
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    if (_model
                                                            .cpDropdownAssetsTypesModel
                                                            .dropdownAssetTypesValue ==
                                                        null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informar Tipo do Ativo.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                    if ((widget.cpOperation ==
                                                            'create') ||
                                                        (widget.cpOperation ==
                                                            'duplicate')) {
                                                      if (_model.textController
                                                              .text !=
                                                          '0') {
                                                        _model.resAssetCreate =
                                                            await VAssetsTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eqOrNull(
                                                                'code',
                                                                _model
                                                                    .textController
                                                                    .text,
                                                              )
                                                              .eqOrNull(
                                                                'version_mode',
                                                                FFAppState()
                                                                    .stAppVersionMode
                                                                    ?.name,
                                                              ),
                                                        );
                                                        _shouldSetState = true;
                                                        if (_model
                                                                .resAssetCreate
                                                                ?.length !=
                                                            0) {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Ops ...'),
                                                                content: Text(
                                                                    'Ativo já cadastrado.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                    } else {
                                                      _model.resAssetUpdate =
                                                          await VAssetsTable()
                                                              .queryRows(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'code',
                                                              _model
                                                                  .textController
                                                                  .text,
                                                            )
                                                            .neqOrNull(
                                                              'id',
                                                              FFAppState()
                                                                  .stAssetSelected
                                                                  .id,
                                                            )
                                                            .eqOrNull(
                                                              'version_mode',
                                                              FFAppState()
                                                                  .stAppVersionMode
                                                                  ?.name,
                                                            ),
                                                      );
                                                      _shouldSetState = true;
                                                      if (_model.resAssetUpdate
                                                              ?.length !=
                                                          0) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Ativo já cadastrado.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }
                                                    }

                                                    _model.resAssetType =
                                                        await CfgAssetsTypesTable()
                                                            .queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'id',
                                                        _model
                                                            .cpDropdownAssetsTypesModel
                                                            .dropdownAssetTypesValue,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    FFAppState()
                                                        .updateStAssetSelectedStruct(
                                                      (e) => e
                                                        ..code = _model
                                                            .textController.text
                                                        ..typeId = _model
                                                            .cpDropdownAssetsTypesModel
                                                            .dropdownAssetTypesValue
                                                        ..description = _model
                                                            .resAssetType
                                                            ?.firstOrNull
                                                            ?.description
                                                        ..typeDescription =
                                                            _model
                                                                .resAssetType
                                                                ?.firstOrNull
                                                                ?.description,
                                                    );
                                                    FFAppState()
                                                        .updateStAssetSelectedCUStruct(
                                                      (e) => e
                                                        ..code = _model
                                                            .textController.text
                                                        ..description = _model
                                                            .resAssetType
                                                            ?.firstOrNull
                                                            ?.description
                                                        ..typeId = _model
                                                            .cpDropdownAssetsTypesModel
                                                            .dropdownAssetTypesValue
                                                        ..typeDescription =
                                                            _model
                                                                .resAssetType
                                                                ?.firstOrNull
                                                                ?.description,
                                                    );
                                                    FFAppState().update(() {});
                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamed(
                                                      PgAssetCUStep02Widget
                                                          .routeName,
                                                      queryParameters: {
                                                        'ppOperation':
                                                            serializeParam(
                                                          widget.cpOperation,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              Text('Ops ...'),
                                                          content: Text(
                                                              'Informe o Tipo do ativo.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'vo1rn9ni' /* AVANÇAR */,
                                                ),
                                                icon: FaIcon(
                                                  FontAwesomeIcons.angleRight,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 24.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.start,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
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
                                                  elevation: 5.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].addToEnd(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
