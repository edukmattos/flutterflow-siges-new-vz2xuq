import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_assets_couplings_models/cp_dropdown_assets_couplings_models_widget.dart';
import '/pages/components/cp_input_currency2_decimals/cp_input_currency2_decimals_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_asset_c_u_step032_model.dart';
export 'pg_asset_c_u_step032_model.dart';

class PgAssetCUStep032Widget extends StatefulWidget {
  const PgAssetCUStep032Widget({
    super.key,
    required this.ppOperation,
  });

  final String? ppOperation;

  static String routeName = 'pgAssetCUStep_03_2';
  static String routePath = 'pgAssetCUStep032';

  @override
  State<PgAssetCUStep032Widget> createState() => _PgAssetCUStep032WidgetState();
}

class _PgAssetCUStep032WidgetState extends State<PgAssetCUStep032Widget>
    with TickerProviderStateMixin {
  late PgAssetCUStep032Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetCUStep032Model());

    _model.tfPolesAmountTextController ??= TextEditingController(
        text: FFAppState().stAssetSelectedCU.poles.toString());
    _model.tfPolesAmountFocusNode ??= FocusNode();

    _model.tfRotationAmountTextController ??= TextEditingController(
        text: FFAppState().stAssetSelectedCU.rotation.toString());
    _model.tfRotationAmountFocusNode ??= FocusNode();

    _model.tfWeightAmountTextController ??= TextEditingController(
        text: FFAppState().stAssetSelectedCU.weight.toString());
    _model.tfWeightAmountFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textFieldOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.cpDBUserAvailableModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpDBUserAvailableWidget(
                    toolTip: FFAppState().stUserCurrent.nameShort,
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
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 32.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextFormField(
                                              controller: _model
                                                  .tfPolesAmountTextController,
                                              focusNode:
                                                  _model.tfPolesAmountFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfPolesAmountTextController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              autofillHints: [
                                                AutofillHints.name
                                              ],
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '1d57zzy5' /* Pólos (P) */,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 12.0,
                                                            0.0, 12.0),
                                                suffixIcon: _model
                                                        .tfPolesAmountTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfPolesAmountTextController
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
                                              style:
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
                                              minLines: 1,
                                              keyboardType:
                                                  TextInputType.number,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfPolesAmountTextControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation1']!),
                                            TextFormField(
                                              controller: _model
                                                  .tfRotationAmountTextController,
                                              focusNode: _model
                                                  .tfRotationAmountFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfRotationAmountTextController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              autofillHints: [
                                                AutofillHints.name
                                              ],
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'jerte0nx' /* Rotação (rpm) */,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 12.0,
                                                            0.0, 12.0),
                                                suffixIcon: _model
                                                        .tfRotationAmountTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfRotationAmountTextController
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
                                              style:
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
                                              minLines: 1,
                                              keyboardType:
                                                  TextInputType.number,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfRotationAmountTextControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation2']!),
                                            wrapWithModel(
                                              model: _model
                                                  .cpInputCurrency2DecimalsModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  CpInputCurrency2DecimalsWidget(
                                                cpInitialValue: functions
                                                    .cfConvDoubleToCurrency2Decimals(
                                                        FFAppState()
                                                            .stAssetSelectedCU
                                                            .rotorDiameter
                                                            .toString(),
                                                        2),
                                                cpLabelText:
                                                    'Diâmetro Rotor (mm)',
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'sdz0gbw7' /* Ponto Superior (PS) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputPressureMaxModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputCurrency2DecimalsWidget(
                                                          cpInitialValue: functions
                                                              .cfConvDoubleToCurrency2Decimals(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .pressureMax
                                                                      .toString(),
                                                                  2),
                                                          cpLabelText:
                                                              'Pressão máxima',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fqxwrtdj' /* mca */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputFlowRateMinModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputCurrency2DecimalsWidget(
                                                          cpInitialValue: functions
                                                              .cfConvDoubleToCurrency2Decimals(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .flowRateMin
                                                                      .toString(),
                                                                  2),
                                                          cpLabelText:
                                                              'Vazão mínima',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'a52fdy6p' /* l/s */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9ph4c0fp' /* Ponto Operação (PO) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputPressureOperationModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputCurrency2DecimalsWidget(
                                                          cpInitialValue: functions
                                                              .cfConvDoubleToCurrency2Decimals(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .pressureOperation
                                                                      .toString(),
                                                                  2),
                                                          cpLabelText:
                                                              'Pressão operação',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nfxxg6ts' /* mca */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputFlowRateOperationModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputCurrency2DecimalsWidget(
                                                          cpInitialValue: functions
                                                              .cfConvDoubleToCurrency2Decimals(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .flowRateOperation
                                                                      .toString(),
                                                                  2),
                                                          cpLabelText:
                                                              'Vazão operação',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fqt3krfp' /* l/s */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'n0iy6kqs' /* Ponto Inferior (PI) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputPressureMinModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputCurrency2DecimalsWidget(
                                                          cpInitialValue: functions
                                                              .cfConvDoubleToCurrency2Decimals(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .pressureMin
                                                                      .toString(),
                                                                  2),
                                                          cpLabelText:
                                                              'Pressão mínima',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'npw8d2a5' /* mca */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .cpInputFlowRateMaxModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            CpInputCurrency2DecimalsWidget(
                                                          cpInitialValue: functions
                                                              .cfConvDoubleToCurrency2Decimals(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .flowRateMax
                                                                      .toString(),
                                                                  2),
                                                          cpLabelText:
                                                              'Vazão máxima',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'h9kl6i6q' /* l/s */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ],
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .cpDropdownAssetsCouplingsModelsModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  CpDropdownAssetsCouplingsModelsWidget(
                                                cpHintText:
                                                    'Modelo acoplamento',
                                                cpInitialValue: FFAppState()
                                                    .stAssetSelected
                                                    .couplingModelId,
                                              ),
                                            ),
                                            TextFormField(
                                              controller: _model
                                                  .tfWeightAmountTextController,
                                              focusNode: _model
                                                  .tfWeightAmountFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfWeightAmountTextController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              autofillHints: [
                                                AutofillHints.name
                                              ],
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '6257kxgk' /* Peso (Kg) */,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
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
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 12.0,
                                                            0.0, 12.0),
                                                suffixIcon: _model
                                                        .tfWeightAmountTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfWeightAmountTextController
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
                                              style:
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
                                              minLines: 1,
                                              keyboardType:
                                                  TextInputType.number,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfWeightAmountTextControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation3']!),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {},
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'cckz2cum' /* CANCELAR */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.clear,
                                                      size: 25.0,
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
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
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
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      if (_model.formKey
                                                              .currentState !=
                                                          null) {
                                                        _model.formKey
                                                            .currentState!
                                                            .validate();
                                                      }
                                                      FFAppState()
                                                          .updateStAssetSelectedCUStruct(
                                                        (e) => e
                                                          ..poles = int
                                                              .tryParse(_model
                                                                  .tfPolesAmountTextController
                                                                  .text)
                                                          ..polesUnit = 'P'
                                                          ..rotation = int
                                                              .tryParse(_model
                                                                  .tfRotationAmountTextController
                                                                  .text)
                                                          ..rotationUnit = 'rpm'
                                                          ..weight = functions
                                                              .cfConvNumberStringToInteger(
                                                                  _model
                                                                      .tfWeightAmountTextController
                                                                      .text)
                                                          ..weightUnit = 'Kg',
                                                      );
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .updateStAssetSelectedCUStruct(
                                                        (e) => e
                                                          ..description =
                                                              '${FFAppState().stAssetSelectedCU.typeDescription} ${_model.tfPolesAmountTextController.text}${FFAppState().stAssetSelectedCU.polesUnit} ${FFAppState().stAssetSelectedCU.model} ${FFAppState().stAssetSelectedCU.brand} ${FFAppState().stAssetSelectedCU.serial}',
                                                      );
                                                      safeSetState(() {});
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
                                                      safeSetState(() {});
                                                      if ((widget.ppOperation ==
                                                              'create') ||
                                                          (widget.ppOperation ==
                                                              'duplicate')) {
                                                        _model.resAssetCreated =
                                                            await AssetsTable()
                                                                .insert({
                                                          'company_id': 1,
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
                                                          'poles': FFAppState()
                                                              .stAssetSelectedCU
                                                              .poles,
                                                          'rotation': FFAppState()
                                                              .stAssetSelectedCU
                                                              .rotation,
                                                          'rotation_unit':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .rotationUnit,
                                                          'service_factor':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .serviceFactor,
                                                          'status_at': supaSerialize<
                                                                  DateTime>(
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .statusDatetime),
                                                          'location': FFAppState()
                                                              .stAssetSelectedCU
                                                              .location,
                                                          'weight': FFAppState()
                                                              .stAssetSelectedCU
                                                              .weight
                                                              .toDouble(),
                                                          'weight_unit':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .weightUnit,
                                                          'created_user_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .id,
                                                          'created_at':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'description':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .description,
                                                          'searchable': FFAppState()
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
                                                          'type_id': FFAppState()
                                                              .stAssetSelectedCU
                                                              .typeId,
                                                          'acquisition_at':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .acquisitionDatetime),
                                                          'pressure_max': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputPressureMaxModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_min': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputFlowRateMinModel
                                                                  .textController
                                                                  .text),
                                                          'pressure_operation':
                                                              functions.cfConvNumberStringToDouble(_model
                                                                  .cpInputPressureOperationModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_operation':
                                                              functions.cfConvNumberStringToDouble(_model
                                                                  .cpInputFlowRateOperationModel
                                                                  .textController
                                                                  .text),
                                                          'pressure_min': double
                                                              .tryParse(_model
                                                                  .cpInputPressureMinModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_max': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputFlowRateMaxModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_unit':
                                                              'l/s',
                                                          'pressure_unit':
                                                              'mca',
                                                          'rotor_diameter': double
                                                              .tryParse(_model
                                                                  .cpInputCurrency2DecimalsModel
                                                                  .textController
                                                                  .text),
                                                          'rotor_diameter_unit':
                                                              'mm',
                                                          'coupling_model_id': _model
                                                              .cpDropdownAssetsCouplingsModelsModel
                                                              .dropdownAssetsCouplingsModelsValue,
                                                          'version_mode':
                                                              FFAppState()
                                                                  .stAppVersionMode
                                                                  ?.name,
                                                        });
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
                                                        safeSetState(() {});
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
                                                            'type_id': FFAppState()
                                                                .stAssetSelectedCU
                                                                .typeId,
                                                            'searchable':
                                                                FFAppState()
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
                                                            'poles': FFAppState()
                                                                .stAssetSelectedCU
                                                                .poles,
                                                            'rotation': FFAppState()
                                                                .stAssetSelectedCU
                                                                .rotation,
                                                            'description':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .description,
                                                            'location': FFAppState()
                                                                .stAssetSelectedCU
                                                                .location,
                                                            'weight': FFAppState()
                                                                .stAssetSelectedCU
                                                                .weight
                                                                .toDouble(),
                                                            'weight_unit':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .weightUnit,
                                                            'updated_user_id':
                                                                FFAppState()
                                                                    .stUserCurrent
                                                                    .id,
                                                            'updated_at':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                            'priority_id':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .priorityId,
                                                            'status_at': supaSerialize<
                                                                    DateTime>(
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .statusDatetime),
                                                            'acquisition_at':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    FFAppState()
                                                                        .stAssetSelectedCU
                                                                        .acquisitionDatetime),
                                                            'pressure_max': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputPressureMaxModel
                                                                    .textController
                                                                    .text),
                                                            'flow_rate_min': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputFlowRateMinModel
                                                                    .textController
                                                                    .text),
                                                            'pressure_operation':
                                                                functions.cfConvNumberStringToDouble(_model
                                                                    .cpInputPressureOperationModel
                                                                    .textController
                                                                    .text),
                                                            'flow_rate_operation':
                                                                functions.cfConvNumberStringToDouble(_model
                                                                    .cpInputFlowRateOperationModel
                                                                    .textController
                                                                    .text),
                                                            'pressure_min': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputPressureMinModel
                                                                    .textController
                                                                    .text),
                                                            'flow_rate_max': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputFlowRateMaxModel
                                                                    .textController
                                                                    .text),
                                                            'rotor_diameter': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputCurrency2DecimalsModel
                                                                    .textController
                                                                    .text),
                                                            'rotor_diameter_unit':
                                                                'mm',
                                                            'pressure_unit':
                                                                'mca',
                                                            'flow_rate_unit':
                                                                'l/s',
                                                            'coupling_model_id': _model
                                                                .cpDropdownAssetsCouplingsModelsModel
                                                                .dropdownAssetsCouplingsModelsValue,
                                                            'acquisition_value':
                                                                FFAppState()
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
                                                        abAssetId: FFAppState()
                                                            .stAssetSelectedCU
                                                            .id,
                                                      );
                                                      if (Navigator.of(context)
                                                          .canPop()) {
                                                        context.pop();
                                                      }
                                                      context.pushNamed(
                                                        PgAssetCUStep04ImageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'ppOperation':
                                                              serializeParam(
                                                            widget.ppOperation,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '3evdardk' /* AVANÇAR */,
                                                    ),
                                                    icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .angleRight,
                                                      size: 15.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconAlignment:
                                                          IconAlignment.end,
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
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
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ),
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
              ].addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
