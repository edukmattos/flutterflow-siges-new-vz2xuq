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
import 'package:provider/provider.dart';
import 'pg_asset_c_u_step0328200_model.dart';
export 'pg_asset_c_u_step0328200_model.dart';

class PgAssetCUStep0328200Widget extends StatefulWidget {
  const PgAssetCUStep0328200Widget({
    super.key,
    required this.ppOperation,
  });

  final String? ppOperation;

  static String routeName = 'pgAssetCUStep_03_28-200';
  static String routePath = 'pgAssetCUStep0328200';

  @override
  State<PgAssetCUStep0328200Widget> createState() =>
      _PgAssetCUStep0328200WidgetState();
}

class _PgAssetCUStep0328200WidgetState extends State<PgAssetCUStep0328200Widget>
    with TickerProviderStateMixin {
  late PgAssetCUStep0328200Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAssetCUStep0328200Model());

    _model.tfVoltageTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.voltage);
    _model.tfVoltageFocusNode ??= FocusNode();

    _model.tfAmperageTextController ??=
        TextEditingController(text: FFAppState().stAssetSelectedCU.amperage);
    _model.tfAmperageFocusNode ??= FocusNode();

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
      'cpInputCurrency2DecimalsOnPageLoadAnimation1': AnimationInfo(
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
      'textFieldOnPageLoadAnimation4': AnimationInfo(
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
      'cpInputCurrency2DecimalsOnPageLoadAnimation2': AnimationInfo(
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
      'textFieldOnPageLoadAnimation5': AnimationInfo(
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
                      font: FlutterFlowTheme.of(context).headlineMedium,
                      color: FlutterFlowTheme.of(context).info,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
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
                                                'cpInputCurrency2DecimalsOnPageLoadAnimation1']!),
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
                                                  'v6qe5rhn' /* Tensões (V1/V2) */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
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
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfVoltageTextControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                              ],
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
                                                  'qh6e45xd' /* Correntes eléticas (A1/A2) */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
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
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfAmperageTextControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation2']!),
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
                                                  'xmw2ttl4' /* Pólos (P) */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
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
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
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
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation3']!),
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
                                                  '1278tufx' /* Rotação (rpm) */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
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
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
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
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation4']!),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'grljj6hf' /* Ponto Superior (PS) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        letterSpacing: 0.0,
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
                                                        'v8dxz7cl' /* mca */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                letterSpacing:
                                                                    0.0,
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
                                                        'pbxs4w9n' /* l/s */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                letterSpacing:
                                                                    0.0,
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
                                                    '6yng2854' /* Ponto Operação (PO) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        letterSpacing: 0.0,
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
                                                        'a5mtvtbm' /* mca */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                letterSpacing:
                                                                    0.0,
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
                                                        'vebo78uo' /* l/s */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                letterSpacing:
                                                                    0.0,
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
                                                    'vjfjcjwv' /* Ponto Inferior (PI) */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        letterSpacing: 0.0,
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
                                                        'xytdf4r6' /* mca */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                letterSpacing:
                                                                    0.0,
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
                                                        'p4vdzdgt' /* l/s */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ],
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .cpInputServiceFactorAmountModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  CpInputCurrency2DecimalsWidget(
                                                cpInitialValue: functions
                                                    .cfConvDoubleToCurrency2Decimals(
                                                        FFAppState()
                                                            .stAssetSelectedCU
                                                            .serviceFactor
                                                            .toString(),
                                                        2),
                                                cpLabelText: 'Fator Serviço',
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'cpInputCurrency2DecimalsOnPageLoadAnimation2']!),
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
                                                  'u51iq3z2' /* Peso (Kg) */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
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
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
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
                                                if (!isAndroid && !isiOS)
                                                  TextInputFormatter
                                                      .withFunction(
                                                          (oldValue, newValue) {
                                                    return TextEditingValue(
                                                      selection:
                                                          newValue.selection,
                                                      text: newValue.text
                                                          .toCapitalization(
                                                              TextCapitalization
                                                                  .none),
                                                    );
                                                  }),
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('[0-9]'))
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation5']!),
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
                                                      '8yfi55tl' /* CANCELAR */,
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
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall,
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
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
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
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
                                                          ..power = functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputPowerAmountModel
                                                                  .textController
                                                                  .text)
                                                          ..powerUnit = 'CV'
                                                          ..serviceFactor = functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputServiceFactorAmountModel
                                                                  .textController
                                                                  .text)
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
                                                              '${FFAppState().stAssetSelectedCU.typeDescription} ${_model.cpInputPowerAmountModel.textController.text}${FFAppState().stAssetSelectedCU.powerUnit} ${_model.tfPolesAmountTextController.text}${FFAppState().stAssetSelectedCU.polesUnit} ${_model.tfVoltageTextController.text}${FFAppState().stAssetSelectedCU.voltageUnit} ${FFAppState().stAssetSelectedCU.model} ${FFAppState().stAssetSelectedCU.brand} ${FFAppState().stAssetSelectedCU.serial}',
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
                                                          'poles': FFAppState()
                                                              .stAssetSelectedCU
                                                              .poles,
                                                          'amperage_unit':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .amperageUnit,
                                                          'voltage_unit':
                                                              FFAppState()
                                                                  .stAssetSelectedCU
                                                                  .voltageUnit,
                                                          'poles_unit': FFAppState()
                                                              .stAssetSelectedCU
                                                              .polesUnit,
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
                                                          'flow_rate_max': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputFlowRateMaxModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_min': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputFlowRateMinModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_operation':
                                                              functions.cfConvNumberStringToDouble(_model
                                                                  .cpInputFlowRateOperationModel
                                                                  .textController
                                                                  .text),
                                                          'flow_rate_unit':
                                                              'l/s',
                                                          'pressure_max': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputPressureMaxModel
                                                                  .textController
                                                                  .text),
                                                          'pressure_min': functions
                                                              .cfConvNumberStringToDouble(_model
                                                                  .cpInputPressureMinModel
                                                                  .textController
                                                                  .text),
                                                          'pressure_operation':
                                                              functions.cfConvNumberStringToDouble(_model
                                                                  .cpInputPressureOperationModel
                                                                  .textController
                                                                  .text),
                                                          'pressure_unit':
                                                              'mca',
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
                                                            'power': FFAppState()
                                                                .stAssetSelectedCU
                                                                .power,
                                                            'voltage': FFAppState()
                                                                .stAssetSelectedCU
                                                                .voltage,
                                                            'amperage': FFAppState()
                                                                .stAssetSelectedCU
                                                                .amperage,
                                                            'poles': FFAppState()
                                                                .stAssetSelectedCU
                                                                .poles,
                                                            'rotation': FFAppState()
                                                                .stAssetSelectedCU
                                                                .rotation,
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
                                                            'pressure_max': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputPressureMaxModel
                                                                    .textController
                                                                    .text),
                                                            'pressure_min': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputPressureMinModel
                                                                    .textController
                                                                    .text),
                                                            'pressure_operation':
                                                                functions.cfConvNumberStringToDouble(_model
                                                                    .cpInputPressureOperationModel
                                                                    .textController
                                                                    .text),
                                                            'flow_rate_max': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputFlowRateMaxModel
                                                                    .textController
                                                                    .text),
                                                            'flow_rate_min': functions
                                                                .cfConvNumberStringToDouble(_model
                                                                    .cpInputFlowRateMinModel
                                                                    .textController
                                                                    .text),
                                                            'flow_rate_operation':
                                                                functions.cfConvNumberStringToDouble(_model
                                                                    .cpInputFlowRateOperationModel
                                                                    .textController
                                                                    .text),
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
                                                      'sknpvhzs' /* AVANÇAR */,
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
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall,
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
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
