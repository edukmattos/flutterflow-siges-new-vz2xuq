import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_assets_priorities/cp_dropdown_assets_priorities_widget.dart';
import '/pages/assets/cp_dropdown_assets_statuses/cp_dropdown_assets_statuses_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_assets_tags_subs/cp_dropdown_assets_tags_subs_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_currency2_decimals/cp_input_currency2_decimals_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_asset_c_u_step02_model.dart';
export 'pg_asset_c_u_step02_model.dart';

class PgAssetCUStep02Widget extends StatefulWidget {
  const PgAssetCUStep02Widget({
    super.key,
    required this.ppOperation,
  });

  final String? ppOperation;

  static String routeName = 'pgAssetCUStep_02';
  static String routePath = 'pgAssetCUStep02';

  @override
  State<PgAssetCUStep02Widget> createState() => _PgAssetCUStep02WidgetState();
}

class _PgAssetCUStep02WidgetState extends State<PgAssetCUStep02Widget> {
  late PgAssetCUStep02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetCUStep02Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    _model.tfBrandTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.brand);
    _model.tfBrandFocusNode ??= FocusNode();

    _model.tfModelTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.model);
    _model.tfModelFocusNode ??= FocusNode();

    _model.tfSerialTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.serial);
    _model.tfSerialFocusNode ??= FocusNode();

    _model.tfLocationTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.location);
    _model.tfLocationFocusNode ??= FocusNode();

    _model.tfStatusAtTextController ??= TextEditingController(
        text: widget.ppOperation == 'create'
            ? null
            : FFAppState().stAssetSelectedCU.statusAt);
    _model.tfStatusAtFocusNode ??= FocusNode();

    _model.tfCommentsTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.comments);
    _model.tfCommentsFocusNode ??= FocusNode();

    _model.tfAquisitionAtTextController ??= TextEditingController(
        text: widget.ppOperation == 'create'
            ? null
            : FFAppState().stAssetSelectedCU.acquisitionAt);
    _model.tfAquisitionAtFocusNode ??= FocusNode();

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
                (widget.ppOperation == 'create') ||
                        (widget.ppOperation == 'duplicate')
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
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
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
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
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
                            if (widget.ppOperation == 'update')
                              wrapWithModel(
                                model: _model.cpAssetCreateCardModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpAssetCreateCardWidget(),
                              ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormField(
                                        controller:
                                            _model.tfBrandTextController,
                                        focusNode: _model.tfBrandFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfBrandTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '2sl5fy6f' /* Marca ? */,
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
                                          suffixIcon: _model
                                                  .tfBrandTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.tfBrandTextController
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfBrandTextControllerValidator
                                            .asValidator(context),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.tfModelTextController,
                                        focusNode: _model.tfModelFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfModelTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'i12l54fp' /* Modelo ? */,
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
                                          suffixIcon: _model
                                                  .tfModelTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.tfModelTextController
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfModelTextControllerValidator
                                            .asValidator(context),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.tfSerialTextController,
                                        focusNode: _model.tfSerialFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfSerialTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'lf9tgr0o' /* Serial ? */,
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
                                          suffixIcon: _model
                                                  .tfSerialTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .tfSerialTextController
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfSerialTextControllerValidator
                                            .asValidator(context),
                                      ),
                                      wrapWithModel(
                                        model: _model.cpDropdownUnitsModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpDropdownUnitsWidget(
                                          cpHintText: 'Unidade ?',
                                          cpInitialValue: FFAppState()
                                              .stAssetSelectedCU
                                              .unitId,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.cpDropdownAssetsTagsModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpDropdownAssetsTagsWidget(
                                          cpHintText: 'Setor ?',
                                          cpInitialValue: FFAppState()
                                              .stAssetSelectedCU
                                              .tagId,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model
                                            .cpDropdownAssetsTagsSubsModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpDropdownAssetsTagsSubsWidget(
                                          cpHintText: 'Posição ?',
                                          cpInitialValue: FFAppState()
                                              .stAssetSelectedCU
                                              .tagSubId,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model
                                            .cpDropdownAssetsPrioritiesModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpDropdownAssetsPrioritiesWidget(
                                          cpHintText: 'Prioridade ?',
                                          cpInitialValue: FFAppState()
                                              .stAssetSelectedCU
                                              .priorityId,
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.tfLocationTextController,
                                        focusNode: _model.tfLocationFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfLocationTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'puko5u9y' /* Localização ? */,
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
                                          suffixIcon: _model
                                                  .tfLocationTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .tfLocationTextController
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfLocationTextControllerValidator
                                            .asValidator(context),
                                      ),
                                      wrapWithModel(
                                        model: _model
                                            .cpDropdownAssetsStatusesModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpDropdownAssetsStatusesWidget(
                                          cpHintText: 'Situação ?',
                                          cpInitialValue: FFAppState()
                                              .stAssetSelectedCU
                                              .statusId,
                                        ),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.tfStatusAtTextController,
                                        focusNode: _model.tfStatusAtFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfStatusAtTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'hx2v4ja3' /* Data Situação ? */,
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
                                          suffixIcon: _model
                                                  .tfStatusAtTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .tfStatusAtTextController
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
                                        keyboardType: TextInputType.datetime,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfStatusAtTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          _model.tfStatusAtMask
                                        ],
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.tfCommentsTextController,
                                        focusNode: _model.tfCommentsFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfCommentsTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '98u336q8' /* Observações ? */,
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
                                          suffixIcon: _model
                                                  .tfCommentsTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .tfCommentsTextController
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
                                        maxLines: 5,
                                        minLines: 2,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfCommentsTextControllerValidator
                                            .asValidator(context),
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.tfAquisitionAtTextController,
                                        focusNode:
                                            _model.tfAquisitionAtFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tfAquisitionAtTextController',
                                          Duration(milliseconds: 2000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: false,
                                        autofillHints: [AutofillHints.name],
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'moptcrgv' /* Data Aquisição ? */,
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
                                          suffixIcon: _model
                                                  .tfAquisitionAtTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .tfAquisitionAtTextController
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
                                        keyboardType: TextInputType.datetime,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .tfAquisitionAtTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          _model.tfAquisitionAtMask
                                        ],
                                      ),
                                      wrapWithModel(
                                        model:
                                            _model.cpInputAcquisitionValueModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpInputCurrency2DecimalsWidget(
                                          cpInitialValue: functions
                                              .cfConvDoubleToCurrency2Decimals(
                                                  FFAppState()
                                                      .stAssetSelectedCU
                                                      .acquisitionValue
                                                      .toString(),
                                                  2),
                                          cpLabelText: 'Valor Aqusição (R\$)',
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                  context.pushNamed(
                                                      PgAssetsSearchWidget
                                                          .routeName);
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'rsnovo9t' /* CANCELAR */,
                                                ),
                                                icon: Icon(
                                                  Icons.clear_sharp,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.start,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
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
                                                          .cpDropdownUnitsModel
                                                          .dropdownUnitsValue !=
                                                      0) {
                                                    if (_model
                                                            .cpDropdownAssetsTagsModel
                                                            .dropdownAssetTagsValue !=
                                                        0) {
                                                      if (_model
                                                              .cpDropdownAssetsTagsSubsModel
                                                              .dropdownAssetTagsSubsValue !=
                                                          0) {
                                                        if (_model
                                                                .cpDropdownAssetsStatusesModel
                                                                .dropdownAssetsStatusesValue !=
                                                            0) {
                                                          _model.resStatusAtIsValid =
                                                              await actions
                                                                  .caCheckDateBrStringIsValid(
                                                            _model
                                                                .tfStatusAtTextController
                                                                .text,
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if (_model
                                                              .resStatusAtIsValid!) {
                                                            _model.resAcquisitionAtIsValid =
                                                                await actions
                                                                    .caCheckDateBrStringIsValid(
                                                              _model
                                                                  .tfAquisitionAtTextController
                                                                  .text,
                                                            );
                                                            _shouldSetState =
                                                                true;
                                                            if (_model
                                                                .resAcquisitionAtIsValid!) {
                                                              if (_model.formKey
                                                                          .currentState ==
                                                                      null ||
                                                                  !_model
                                                                      .formKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                return;
                                                              }
                                                              if (_model
                                                                      .cpDropdownAssetsStatusesModel
                                                                      .dropdownAssetsStatusesValue ==
                                                                  null) {
                                                                return;
                                                              }
                                                              _model.resUnit =
                                                                  await VUnitsTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownUnitsModel
                                                                      .dropdownUnitsValue,
                                                                ),
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              _model.resAssetTag =
                                                                  await CfgAssetsTagsTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownAssetsTagsModel
                                                                      .dropdownAssetTagsValue,
                                                                ),
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              _model.resAssetTagSub =
                                                                  await CfgAssetsTagsSubsTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownAssetsTagsSubsModel
                                                                      .dropdownAssetTagsSubsValue,
                                                                ),
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              _model.resAssetStatus =
                                                                  await CfgAssetsStatusesTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownAssetsStatusesModel
                                                                      .dropdownAssetsStatusesValue,
                                                                ),
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              _model.resAssetPriority =
                                                                  await CfgAssetsPrioritiesTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  _model
                                                                      .cpDropdownAssetsPrioritiesModel
                                                                      .dropdownAssetsPrioritiesValue,
                                                                ),
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              FFAppState()
                                                                  .updateStAssetSelectedCUStruct(
                                                                (e) => e
                                                                  ..unitId = _model
                                                                      .cpDropdownUnitsModel
                                                                      .dropdownUnitsValue
                                                                  ..unitDescription = _model
                                                                      .resUnit
                                                                      ?.firstOrNull
                                                                      ?.descriptionFull
                                                                  ..tagId = _model
                                                                      .cpDropdownAssetsTagsModel
                                                                      .dropdownAssetTagsValue
                                                                  ..tagDescription = _model
                                                                      .resAssetTag
                                                                      ?.firstOrNull
                                                                      ?.description
                                                                  ..tagSubId = _model
                                                                      .cpDropdownAssetsTagsSubsModel
                                                                      .dropdownAssetTagsSubsValue
                                                                  ..tagSubDescription = _model
                                                                      .resAssetTagSub
                                                                      ?.firstOrNull
                                                                      ?.description
                                                                  ..statusId = _model
                                                                      .cpDropdownAssetsStatusesModel
                                                                      .dropdownAssetsStatusesValue
                                                                  ..statusDescription = _model
                                                                      .resAssetStatus
                                                                      ?.firstOrNull
                                                                      ?.description
                                                                  ..brand = _model
                                                                      .tfBrandTextController
                                                                      .text
                                                                  ..model = _model
                                                                      .tfModelTextController
                                                                      .text
                                                                  ..serial = _model
                                                                      .tfSerialTextController
                                                                      .text
                                                                  ..location =
                                                                      _model
                                                                          .tfLocationTextController
                                                                          .text
                                                                  ..description =
                                                                      '${FFAppState().stAssetSelectedCU.typeDescription} ${FFAppState().stAssetSelectedCU.brand} ${formatNumber(
                                                                    FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .power,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .commaDecimal,
                                                                  )}${FFAppState().stAssetSelectedCU.powerUnit} ${FFAppState().stAssetSelectedCU.poles.toString()}${FFAppState().stAssetSelectedCU.polesUnit} ${FFAppState().stAssetSelectedCU.voltage}${FFAppState().stAssetSelectedCU.voltageUnit} ${FFAppState().stAssetSelectedCU.model} ${FFAppState().stAssetSelectedCU.serial}'
                                                                  ..priorityId = _model
                                                                      .cpDropdownAssetsPrioritiesModel
                                                                      .dropdownAssetsPrioritiesValue
                                                                  ..priorityCode = _model
                                                                      .resAssetPriority
                                                                      ?.firstOrNull
                                                                      ?.code
                                                                  ..priorityDescription = _model
                                                                      .resAssetPriority
                                                                      ?.firstOrNull
                                                                      ?.description
                                                                  ..comments =
                                                                      _model
                                                                          .tfCommentsTextController
                                                                          .text
                                                                  ..acquisitionValue =
                                                                      functions.cfConvNumberStringToDouble(_model
                                                                          .cpInputAcquisitionValueModel
                                                                          .textController
                                                                          .text)
                                                                  ..statusAt = functions
                                                                      .cfConvDateStringBrToDatetimeENYmd000(_model
                                                                          .tfStatusAtTextController
                                                                          .text)
                                                                      .toString()
                                                                  ..statusDatetime =
                                                                      functions.cfConvDateStringBrToDatetimeENYmd000(_model
                                                                          .tfStatusAtTextController
                                                                          .text)
                                                                  ..acquisitionAt = functions
                                                                      .cfConvDateStringBrToDatetimeENYmd000(_model
                                                                          .tfAquisitionAtTextController
                                                                          .text)
                                                                      .toString()
                                                                  ..acquisitionDatetime =
                                                                      functions.cfConvDateStringBrToDatetimeENYmd000(_model
                                                                          .tfAquisitionAtTextController
                                                                          .text),
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                              if (FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .typeId ==
                                                                  1) {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  PgAssetCUStep031Widget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'ppOperation':
                                                                        serializeParam(
                                                                      widget
                                                                          .ppOperation,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              } else if (FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .typeId ==
                                                                  2) {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  PgAssetCUStep032Widget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'ppOperation':
                                                                        serializeParam(
                                                                      widget
                                                                          .ppOperation,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              } else if ((FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      28) ||
                                                                  (FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      200)) {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  PgAssetCUStep0328200Widget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'ppOperation':
                                                                        serializeParam(
                                                                      widget
                                                                          .ppOperation,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              } else if ((FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      12) ||
                                                                  (FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      13) ||
                                                                  (FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      14) ||
                                                                  (FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      15) ||
                                                                  (FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId ==
                                                                      29)) {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  PgAssetCUStep031213141529Widget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'ppOperation':
                                                                        serializeParam(
                                                                      widget
                                                                          .ppOperation,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              } else if (FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .typeId ==
                                                                  19) {
                                                                context
                                                                    .pushNamed(
                                                                  PgAssetCUStep0319Widget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'ppOperation':
                                                                        serializeParam(
                                                                      widget
                                                                          .ppOperation,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );

                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              } else {
                                                                FFAppState()
                                                                    .updateStAssetSelectedCUStruct(
                                                                  (e) => e
                                                                    ..description =
                                                                        '${FFAppState().stAssetSelectedCU.typeDescription} ${FFAppState().stAssetSelectedCU.model} ${FFAppState().stAssetSelectedCU.brand} ${FFAppState().stAssetSelectedCU.serial}',
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                    .updateStAssetSelectedStruct(
                                                                  (e) => e
                                                                    ..searchable =
                                                                        '${FFAppState().stAssetSelected.code} ${FFAppState().stAssetSelected.description}',
                                                                );
                                                                FFAppState()
                                                                    .updateStAssetSelectedCUStruct(
                                                                  (e) => e
                                                                    ..searchable =
                                                                        '${FFAppState().stAssetSelectedCU.code} ${FFAppState().stAssetSelectedCU.description}',
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                                if ((widget.ppOperation ==
                                                                        'create') ||
                                                                    (widget.ppOperation ==
                                                                        'duplicate')) {
                                                                  _model.resAssetCreated =
                                                                      await AssetsTable()
                                                                          .insert({
                                                                    'company_id':
                                                                        1,
                                                                    'unit_id': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .unitId,
                                                                    'code': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .code,
                                                                    'status_id':
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .statusId,
                                                                    'tag_id': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .tagId,
                                                                    'tag_sub_id':
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .tagSubId,
                                                                    'comments': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .comments,
                                                                    'brand': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .brand,
                                                                    'model': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .model,
                                                                    'serial': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .serial,
                                                                    'status_at': supaSerialize<
                                                                            DateTime>(
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .statusDatetime),
                                                                    'location': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .location,
                                                                    'created_user_id':
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    'created_at':
                                                                        supaSerialize<DateTime>(
                                                                            getCurrentTimestamp),
                                                                    'description':
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .description,
                                                                    'searchable':
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .searchable,
                                                                    'priority_id':
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .priorityId,
                                                                    'acquisition_value':
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .acquisitionValue,
                                                                    'version_mode':
                                                                        FFAppState()
                                                                            .stAppVersionMode
                                                                            ?.name,
                                                                    'type_id': FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .typeId,
                                                                    'acquisition_at': supaSerialize<
                                                                            DateTime>(
                                                                        FFAppState()
                                                                            .stAssetSelectedCU
                                                                            .acquisitionDatetime),
                                                                  });
                                                                  _shouldSetState =
                                                                      true;
                                                                  FFAppState()
                                                                      .updateStAssetSelectedStruct(
                                                                    (e) => e
                                                                      ..id = _model
                                                                          .resAssetCreated
                                                                          ?.id,
                                                                  );
                                                                  FFAppState()
                                                                      .updateStAssetSelectedCUStruct(
                                                                    (e) => e
                                                                      ..id = _model
                                                                          .resAssetCreated
                                                                          ?.id,
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  await AssetsTable()
                                                                      .update(
                                                                    data: {
                                                                      'unit_id': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .unitId,
                                                                      'code': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .code,
                                                                      'status_id': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .statusId,
                                                                      'tag_id': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .tagId,
                                                                      'tag_sub_id': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .tagSubId,
                                                                      'type_id': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .typeId,
                                                                      'searchable': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .searchable,
                                                                      'comments': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .comments,
                                                                      'brand': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .brand,
                                                                      'model': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .model,
                                                                      'serial': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .serial,
                                                                      'description': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .description,
                                                                      'location': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .location,
                                                                      'updated_user_id':
                                                                          FFAppState()
                                                                              .stUserCurrent
                                                                              .id,
                                                                      'updated_at':
                                                                          supaSerialize<DateTime>(
                                                                              getCurrentTimestamp),
                                                                      'priority_id': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .priorityId,
                                                                      'acquisition_at': supaSerialize<DateTime>(FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .acquisitionDatetime),
                                                                      'acquisition_value': FFAppState()
                                                                          .stAssetSelectedCU
                                                                          .acquisitionValue,
                                                                    },
                                                                    matchingRows:
                                                                        (rows) =>
                                                                            rows.eqOrNull(
                                                                      'id',
                                                                      FFAppState()
                                                                          .stAssetSelected
                                                                          .id,
                                                                    ),
                                                                  );
                                                                }

                                                                await action_blocks
                                                                    .abAssetSelected(
                                                                  context,
                                                                  abAssetId:
                                                                      FFAppState()
                                                                          .stAssetSelected
                                                                          .id,
                                                                );
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  PgAssetCUStep04ImageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'ppOperation':
                                                                        serializeParam(
                                                                      widget
                                                                          .ppOperation,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              }
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Ops ...'),
                                                                    content: Text(
                                                                        'Verifique a data da aquisição.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Ops ...'),
                                                                  content: Text(
                                                                      'Verifique a data da situação.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Ops ...'),
                                                                content: Text(
                                                                    'Informe a Situação.'),
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
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Informe a Posição.'),
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
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Ops ...'),
                                                            content: Text(
                                                                'Informe o Setor.'),
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
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              Text('Ops ...'),
                                                          content: Text(
                                                              'Informe a Unidade.'),
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
                                                text: (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            1) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            2) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            12) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            13) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            14) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            15) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            28) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            29) ||
                                                        (FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId !=
                                                            200)
                                                    ? 'AVANÇAR'
                                                    : 'FINALIZAR',
                                                icon: FaIcon(
                                                  FontAwesomeIcons.angleRight,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
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
                              ],
                            ),
                          ].divide(SizedBox(height: 12.0)),
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
    );
  }
}
