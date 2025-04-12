import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
import 'pg_asset_c_u_step0319_model.dart';
export 'pg_asset_c_u_step0319_model.dart';

class PgAssetCUStep0319Widget extends StatefulWidget {
  const PgAssetCUStep0319Widget({
    super.key,
    required this.ppOperation,
  });

  final String? ppOperation;

  static String routeName = 'pgAssetCUStep_03_19';
  static String routePath = 'pgAssetCUStep0319';

  @override
  State<PgAssetCUStep0319Widget> createState() =>
      _PgAssetCUStep0319WidgetState();
}

class _PgAssetCUStep0319WidgetState extends State<PgAssetCUStep0319Widget>
    with TickerProviderStateMixin {
  late PgAssetCUStep0319Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetCUStep0319Model());

    _model.tfVoltageTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.voltage);
    _model.tfVoltageFocusNode ??= FocusNode();

    _model.tfAmperageTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.amperage);
    _model.tfAmperageFocusNode ??= FocusNode();

    _model.tfWeightAmountTextController ??= TextEditingController(
        text: FFAppState().stAssetSelectedCU.weight.toString());
    _model.tfWeightAmountFocusNode ??= FocusNode();

    animationsMap.addAll({
      'cpInputCurrency2DecimalsOnPageLoadAnimation': AnimationInfo(
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
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(-30.0, 0.0),
            end: Offset(0.0, 0.0),
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
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(-30.0, 0.0),
            end: Offset(0.0, 0.0),
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
                                            wrapWithModel(
                                              model: _model
                                                  .cpInputPowerAmountModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  CpInputCurrency2DecimalsWidget(
                                                cpInitialValue: functions
                                                    .cfConvDoubleToCurrency2Decimals(
                                                        FFAppState()
                                                            .stAssetSelectedCU
                                                            .power
                                                            .toString(),
                                                        2),
                                                cpLabelText: 'Potência (CV)',
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'cpInputCurrency2DecimalsOnPageLoadAnimation']!),
                                            TextFormField(
                                              controller: _model
                                                  .tfVoltageTextController,
                                              focusNode:
                                                  _model.tfVoltageFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfVoltageTextController',
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
                                                  'oh45ekb8' /* Tensões (AT/BT V) */,
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
                                                        .tfVoltageTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfVoltageTextController
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
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfVoltageTextControllerValidator
                                                  .asValidator(context),
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation1']!),
                                            TextFormField(
                                              controller: _model
                                                  .tfAmperageTextController,
                                              focusNode:
                                                  _model.tfAmperageFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfAmperageTextController',
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
                                                  'rqsah4x5' /* Correntes eléticas (AT/BT A) */,
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
                                                        .tfAmperageTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfAmperageTextController
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
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfAmperageTextControllerValidator
                                                  .asValidator(context),
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation2']!),
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
                                                  '7cg82qd3' /* Peso (Kg) */,
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
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          PgAssetsSearchWidget
                                                              .routeName);
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'hho19wdp' /* CANCELAR */,
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
                                                          ..voltage = _model
                                                              .tfVoltageTextController
                                                              .text
                                                          ..voltageUnit = 'V'
                                                          ..amperage = _model
                                                              .tfAmperageTextController
                                                              .text
                                                          ..amperageUnit = 'A'
                                                          ..power = functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputPowerAmountModel
                                                                  .textController
                                                                  .text)
                                                          ..powerUnit = 'KVA'
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
                                                              '${FFAppState().stAssetSelectedCU.typeDescription}${_model.cpInputPowerAmountModel.textController.text}${FFAppState().stAssetSelectedCU.powerUnit}  ${_model.tfVoltageTextController.text}${FFAppState().stAssetSelectedCU.voltageUnit} ${FFAppState().stAssetSelectedCU.model} ${FFAppState().stAssetSelectedCU.brand} ${FFAppState().stAssetSelectedCU.serial}',
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
                                                          'power': FFAppState()
                                                              .stAssetSelectedCU
                                                              .power,
                                                          'power_unit': FFAppState()
                                                              .stAssetSelectedCU
                                                              .powerUnit,
                                                          'voltage': FFAppState()
                                                              .stAssetSelectedCU
                                                              .voltage,
                                                          'amperage': FFAppState()
                                                              .stAssetSelectedCU
                                                              .amperage,
                                                          'amperage_unit':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .amperageUnit,
                                                          'voltage_unit':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .voltageUnit,
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
                                                          'version_mode':
                                                              FFAppState()
                                                                  .stAppVersionMode
                                                                  ?.name,
                                                          'type_id': FFAppState()
                                                              .stAssetSelectedCU
                                                              .typeId,
                                                          'acquisition_at':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  FFAppState()
                                                                      .stAssetSelectedCU
                                                                      .acquisitionDatetime),
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
                                                            'power': FFAppState()
                                                                .stAssetSelectedCU
                                                                .power,
                                                            'voltage': FFAppState()
                                                                .stAssetSelectedCU
                                                                .voltage,
                                                            'amperage': FFAppState()
                                                                .stAssetSelectedCU
                                                                .amperage,
                                                            'service_factor':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .serviceFactor,
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
                                                            'acquisition_value':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .acquisitionValue,
                                                            'power_unit':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .powerUnit,
                                                            'amperage_unit':
                                                                FFAppState()
                                                                    .stAssetSelectedCU
                                                                    .amperageUnit,
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
                                                            .stAssetSelected
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
                                                      'mygibkem' /* AVANÇAR */,
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
