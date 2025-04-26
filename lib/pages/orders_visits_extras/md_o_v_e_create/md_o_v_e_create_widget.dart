import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_available_mono/cp_dd_o_types_subs_available_mono_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_causes_reasons/cp_dropdown_orders_causes_reasons_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'md_o_v_e_create_model.dart';
export 'md_o_v_e_create_model.dart';

class MdOVECreateWidget extends StatefulWidget {
  const MdOVECreateWidget({
    super.key,
    String? cpOperation,
    this.cpDtOve,
  }) : this.cpOperation = cpOperation ?? 'create';

  final String cpOperation;
  final DtOrderVisitExtraStruct? cpDtOve;

  @override
  State<MdOVECreateWidget> createState() => _MdOVECreateWidgetState();
}

class _MdOVECreateWidgetState extends State<MdOVECreateWidget> {
  late MdOVECreateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVECreateModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isAllowed = await action_blocks.abGuardian(
        context,
        abPgRequestedId: 28,
      );
      if (!_model.isAllowed!) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Ops ... Acesso negado.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        return;
      }
    });

    _model.tfOMaskTextController ??=
        TextEditingController(text: widget.cpDtOve?.oMask);
    _model.tfOMaskFocusNode ??= FocusNode();

    _model.tfRequetedServicesTextController ??=
        TextEditingController(text: widget.cpDtOve?.requestedServices);
    _model.tfRequetedServicesFocusNode ??= FocusNode();

    _model.tfStartedAtTextController ??= TextEditingController();
    _model.tfStartedAtFocusNode ??= FocusNode();

    _model.tfEndedAtTextController ??= TextEditingController();
    _model.tfEndedAtFocusNode ??= FocusNode();

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
      width: 500.0,
      height: double.infinity,
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
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
                              18.0, 0.0, 18.0, 18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title:
                                                          Text('asdfasfdafs'),
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
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xh2mslq7' /* Serviço Extra */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 44.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.close_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
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
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: Color(0xFFE0E3E7),
                                    ),
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          TextFormField(
                                            controller:
                                                _model.tfOMaskTextController,
                                            focusNode: _model.tfOMaskFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.tfOMaskTextController',
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
                                                'vfm44qrb' /* Nr OS */,
                                              ),
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                              errorStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        letterSpacing: 0.0,
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
                                                      .tfOMaskTextController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .tfOMaskTextController
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                  letterSpacing: 0.0,
                                                ),
                                            minLines: 1,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .tfOMaskTextControllerValidator
                                                .asValidator(context),
                                            inputFormatters: [
                                              if (!isAndroid && !isiOS)
                                                TextInputFormatter.withFunction(
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
                                          ),
                                          wrapWithModel(
                                            model: _model.cpDropdownUnitsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDropdownUnitsWidget(
                                              cpHintText: 'Unidade',
                                              cpInitialValue:
                                                  widget.cpDtOve?.unitId,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownAssetsTagsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDropdownAssetsTagsWidget(
                                              cpHintText: 'Setor',
                                              cpInitialValue:
                                                  widget.cpDtOve?.assetTagId,
                                            ),
                                          ),
                                          TextFormField(
                                            controller: _model
                                                .tfRequetedServicesTextController,
                                            focusNode: _model
                                                .tfRequetedServicesFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.tfRequetedServicesTextController',
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
                                                'g6opem7p' /* Serviços a realizar */,
                                              ),
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                              errorStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        letterSpacing: 0.0,
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
                                                      .tfRequetedServicesTextController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .tfRequetedServicesTextController
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 3,
                                            minLines: 1,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .tfRequetedServicesTextControllerValidator
                                                .asValidator(context),
                                            inputFormatters: [
                                              if (!isAndroid && !isiOS)
                                                TextInputFormatter.withFunction(
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
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownOrdersTypesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDropdownOrdersTypesWidget(
                                              cpHintText: 'Tipo OS',
                                              cpInitialValue:
                                                  widget.cpDtOve?.oTypeId,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdOTypesSubsAvailableMonoModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdOTypesSubsAvailableMonoWidget(
                                              cpHintText: 'Espécie OS',
                                              cpInitialValue:
                                                  widget.cpDtOve?.oTypeSubId,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownOrdersCausesReasonsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownOrdersCausesReasonsWidget(
                                              cpHintText: 'Motivo',
                                              cpInitialValue: widget
                                                  .cpDtOve?.oCauseReasonId,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownOrdersPrioritiesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownOrdersPrioritiesWidget(
                                              cpHintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '5uks20a7' /* Prioridade */,
                                              ),
                                              cpInitialValue:
                                                  widget.cpDtOve?.priorityId,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    TextFormField(
                                                      controller: _model
                                                          .tfStartedAtTextController,
                                                      focusNode: _model
                                                          .tfStartedAtFocusNode,
                                                      autofocus: false,
                                                      autofillHints: [
                                                        AutofillHints.name
                                                      ],
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'we9yrk8u' /* Inicio previsto */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    12.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType
                                                              .datetime,
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      validator: _model
                                                          .tfStartedAtTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.tfStartedAtMask
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    4.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderRadius: 8.0,
                                                          buttonSize: 40.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                          icon: Icon(
                                                            Icons
                                                                .calendar_month,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 24.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            final _datePicked1Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  getCurrentTimestamp,
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate:
                                                                  DateTime(
                                                                      2050),
                                                              builder: (context,
                                                                  child) {
                                                                return wrapInMaterialDatePickerTheme(
                                                                  context,
                                                                  child!,
                                                                  headerBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  headerForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                  headerTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .headlineLarge,
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                  pickerBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  pickerForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  selectedDateTimeBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                  selectedDateTimeForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                  actionButtonForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  iconSize:
                                                                      24.0,
                                                                );
                                                              },
                                                            );

                                                            TimeOfDay?
                                                                _datePicked1Time;
                                                            if (_datePicked1Date !=
                                                                null) {
                                                              _datePicked1Time =
                                                                  await showTimePicker(
                                                                context:
                                                                    context,
                                                                initialTime: TimeOfDay
                                                                    .fromDateTime(
                                                                        getCurrentTimestamp),
                                                                builder:
                                                                    (context,
                                                                        child) {
                                                                  return wrapInMaterialTimePickerTheme(
                                                                    context,
                                                                    child!,
                                                                    headerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    headerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    headerTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).headlineLarge,
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                    pickerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    pickerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    selectedDateTimeBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .success,
                                                                    selectedDateTimeForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    actionButtonForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    iconSize:
                                                                        24.0,
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            if (_datePicked1Date !=
                                                                    null &&
                                                                _datePicked1Time !=
                                                                    null) {
                                                              safeSetState(() {
                                                                _model.datePicked1 =
                                                                    DateTime(
                                                                  _datePicked1Date
                                                                      .year,
                                                                  _datePicked1Date
                                                                      .month,
                                                                  _datePicked1Date
                                                                      .day,
                                                                  _datePicked1Time!
                                                                      .hour,
                                                                  _datePicked1Time
                                                                      .minute,
                                                                );
                                                              });
                                                            } else if (_model
                                                                    .datePicked1 !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked1 =
                                                                    getCurrentTimestamp;
                                                              });
                                                            }
                                                            safeSetState(() {
                                                              _model.tfStartedAtTextController
                                                                      ?.text =
                                                                  dateTimeFormat(
                                                                "dd/MM/y HH:mm",
                                                                _model
                                                                    .datePicked1,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              );
                                                              _model
                                                                  .tfStartedAtMask
                                                                  .updateMask(
                                                                newValue:
                                                                    TextEditingValue(
                                                                  text: _model
                                                                      .tfStartedAtTextController!
                                                                      .text,
                                                                ),
                                                              );
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    TextFormField(
                                                      controller: _model
                                                          .tfEndedAtTextController,
                                                      focusNode: _model
                                                          .tfEndedAtFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.tfEndedAtTextController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () =>
                                                            safeSetState(() {}),
                                                      ),
                                                      autofocus: false,
                                                      autofillHints: [
                                                        AutofillHints.name
                                                      ],
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'ksucmqct' /* Final previsto */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    12.0),
                                                        suffixIcon: _model
                                                                .tfEndedAtTextController!
                                                                .text
                                                                .isNotEmpty
                                                            ? InkWell(
                                                                onTap:
                                                                    () async {
                                                                  _model
                                                                      .tfEndedAtTextController
                                                                      ?.clear();
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.clear,
                                                                  color: Color(
                                                                      0xFF757575),
                                                                  size: 22.0,
                                                                ),
                                                              )
                                                            : null,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType
                                                              .datetime,
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      validator: _model
                                                          .tfEndedAtTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.tfEndedAtMask
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    4.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderRadius: 8.0,
                                                          buttonSize: 40.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                          icon: Icon(
                                                            Icons
                                                                .calendar_month,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 24.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            final _datePicked2Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  getCurrentTimestamp,
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate:
                                                                  DateTime(
                                                                      2050),
                                                              builder: (context,
                                                                  child) {
                                                                return wrapInMaterialDatePickerTheme(
                                                                  context,
                                                                  child!,
                                                                  headerBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  headerForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                  headerTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .headlineLarge,
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                  pickerBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  pickerForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  selectedDateTimeBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                  selectedDateTimeForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                  actionButtonForegroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  iconSize:
                                                                      24.0,
                                                                );
                                                              },
                                                            );

                                                            TimeOfDay?
                                                                _datePicked2Time;
                                                            if (_datePicked2Date !=
                                                                null) {
                                                              _datePicked2Time =
                                                                  await showTimePicker(
                                                                context:
                                                                    context,
                                                                initialTime: TimeOfDay
                                                                    .fromDateTime(
                                                                        getCurrentTimestamp),
                                                                builder:
                                                                    (context,
                                                                        child) {
                                                                  return wrapInMaterialTimePickerTheme(
                                                                    context,
                                                                    child!,
                                                                    headerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    headerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    headerTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).headlineLarge,
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                    pickerBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    pickerForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    selectedDateTimeBackgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                    selectedDateTimeForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    actionButtonForegroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    iconSize:
                                                                        24.0,
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            if (_datePicked2Date !=
                                                                    null &&
                                                                _datePicked2Time !=
                                                                    null) {
                                                              safeSetState(() {
                                                                _model.datePicked2 =
                                                                    DateTime(
                                                                  _datePicked2Date
                                                                      .year,
                                                                  _datePicked2Date
                                                                      .month,
                                                                  _datePicked2Date
                                                                      .day,
                                                                  _datePicked2Time!
                                                                      .hour,
                                                                  _datePicked2Time
                                                                      .minute,
                                                                );
                                                              });
                                                            } else if (_model
                                                                    .datePicked2 !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked2 =
                                                                    getCurrentTimestamp;
                                                              });
                                                            }
                                                            safeSetState(() {
                                                              _model.tfEndedAtTextController
                                                                      ?.text =
                                                                  dateTimeFormat(
                                                                "dd/MM/y HH:mm",
                                                                _model
                                                                    .datePicked2,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              );
                                                              _model
                                                                  .tfEndedAtMask
                                                                  .updateMask(
                                                                newValue:
                                                                    TextEditingValue(
                                                                  text: _model
                                                                      .tfEndedAtTextController!
                                                                      .text,
                                                                ),
                                                              );
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDropdownUnitsModel
                                                              .dropdownUnitsValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Informar UNIDADE.'),
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
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDropdownAssetsTagsModel
                                                              .dropdownAssetTagsValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Informar SETOR.'),
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
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDropdownOrdersTypesModel
                                                              .dropdownOrdersTypesValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Informar TIPO OS.'),
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
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDdOTypesSubsAvailableMonoModel
                                                              .ddOTypesSubsAvailableMonoValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops...'),
                                                              content: Text(
                                                                  'Informar ESPÉCIE OS.'),
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
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDropdownOrdersCausesReasonsModel
                                                              .dropdownOrdersCausesReasonsValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops...'),
                                                              content: Text(
                                                                  'Informar MOTIVO.'),
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
                                                        return;
                                                      }
                                                      if (_model
                                                              .cpDropdownOrdersPrioritiesModel
                                                              .dropdownOrdersPrioritiesValue ==
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Informar a PRIORIDADE.'),
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
                                                        return;
                                                      }
                                                      if (functions
                                                          .cfIsEndDatetimeGreater(
                                                              _model
                                                                  .tfStartedAtTextController
                                                                  .text,
                                                              _model
                                                                  .tfEndedAtTextController
                                                                  .text)!) {
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
                                                        _shouldSetState = true;
                                                        _model.resOVEAdded =
                                                            await OrdersVisitsExtrasTable()
                                                                .insert({
                                                          'o_mask': _model
                                                              .tfOMaskTextController
                                                              .text,
                                                          'started_at': supaSerialize<
                                                                  DateTime>(
                                                              functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(
                                                                  _model
                                                                      .tfStartedAtTextController
                                                                      .text)),
                                                          'ended_at': supaSerialize<
                                                                  DateTime>(
                                                              functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(
                                                                  _model
                                                                      .tfEndedAtTextController
                                                                      .text)),
                                                          'processing_id': 1,
                                                          'created_user_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .id,
                                                          'created_at':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                          'is_deleted': false,
                                                          'unit_id': _model
                                                              .cpDropdownUnitsModel
                                                              .dropdownUnitsValue,
                                                          'o_type_id': _model
                                                              .cpDropdownOrdersTypesModel
                                                              .dropdownOrdersTypesValue,
                                                          'company_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .companyId,
                                                          'department_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .departmentId,
                                                          'requested_services':
                                                              _model
                                                                  .tfRequetedServicesTextController
                                                                  .text,
                                                          'asset_tag_id': _model
                                                              .cpDropdownAssetsTagsModel
                                                              .dropdownAssetTagsValue,
                                                          'provider_company_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .companyId,
                                                          'provider_department_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .departmentId,
                                                          'priority_id': _model
                                                              .cpDropdownOrdersPrioritiesModel
                                                              .dropdownOrdersPrioritiesValue,
                                                          'duration_hours': functions.cfGetDifDecHoursBetweenDates(
                                                              functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(
                                                                  _model
                                                                      .tfStartedAtTextController
                                                                      .text),
                                                              functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(
                                                                  _model
                                                                      .tfEndedAtTextController
                                                                      .text),
                                                              2),
                                                          'team_leader_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .id,
                                                          'team_id':
                                                              FFAppState()
                                                                  .stUserCurrent
                                                                  .teamId,
                                                          'system_parent_id':
                                                              valueOrDefault<
                                                                  int>(
                                                            _model
                                                                .resUnit
                                                                ?.firstOrNull
                                                                ?.systemParentId,
                                                            0,
                                                          ),
                                                          'system_id':
                                                              valueOrDefault<
                                                                  int>(
                                                            _model
                                                                .resUnit
                                                                ?.firstOrNull
                                                                ?.systemId,
                                                            0,
                                                          ),
                                                          'unit_type_parent_id':
                                                              valueOrDefault<
                                                                  int>(
                                                            _model
                                                                .resUnit
                                                                ?.firstOrNull
                                                                ?.unitTypeParentId,
                                                            0,
                                                          ),
                                                          'unit_type_id':
                                                              valueOrDefault<
                                                                  int>(
                                                            _model
                                                                .resUnit
                                                                ?.firstOrNull
                                                                ?.unitTypeId,
                                                            0,
                                                          ),
                                                          'o_type_sub_id': _model
                                                              .cpDdOTypesSubsAvailableMonoModel
                                                              .ddOTypesSubsAvailableMonoValue,
                                                          'o_cause_reason_id': _model
                                                              .cpDropdownOrdersCausesReasonsModel
                                                              .dropdownOrdersCausesReasonsValue,
                                                        });
                                                        _shouldSetState = true;
                                                        if (widget
                                                                .cpOperation ==
                                                            'create') {
                                                          await OrdersVisitsExtrasTeamsTable()
                                                              .insert({
                                                            'ove_id':
                                                                valueOrDefault<
                                                                    int>(
                                                              _model.resOVEAdded
                                                                  ?.id,
                                                              0,
                                                            ),
                                                            'user_id':
                                                                FFAppState()
                                                                    .stUserCurrent
                                                                    .id,
                                                            'is_leader': true,
                                                            'duration_hours': functions.cfGetDifDecHoursBetweenDates(
                                                                functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text),
                                                                functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text),
                                                                2),
                                                            'started_at_date':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model
                                                                        .datePicked1),
                                                            'started_at_hour_min':
                                                                supaSerialize<
                                                                        PostgresTime>(
                                                                    PostgresTime(
                                                                        _model
                                                                            .datePicked1)),
                                                            'ended_at_date':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model
                                                                        .datePicked2),
                                                            'ended_at_hour_min':
                                                                supaSerialize<
                                                                        PostgresTime>(
                                                                    PostgresTime(
                                                                        _model
                                                                            .datePicked2)),
                                                          });
                                                        } else {
                                                          await OrdersVisitsExtrasTable()
                                                              .update(
                                                            data: {
                                                              'team_id': widget
                                                                  .cpDtOve
                                                                  ?.teamId,
                                                              'team_leader_id':
                                                                  widget
                                                                      .cpDtOve
                                                                      ?.teamLeaderId,
                                                              'team_amount':
                                                                  widget
                                                                      .cpDtOve
                                                                      ?.teamAmount,
                                                              'team_names_short':
                                                                  widget
                                                                      .cpDtOve
                                                                      ?.teamNamesShort,
                                                            },
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                              'id',
                                                              _model.resOVEAdded
                                                                  ?.id,
                                                            ),
                                                          );
                                                          _model.apiResultsue =
                                                              await ApiOrdersVisitsExtrasTeamsGroup
                                                                  .apiOrderVisitTeamExtraByIdCall
                                                                  .call(
                                                            apiUrl:
                                                                FFDevEnvironmentValues()
                                                                    .envApiUrl,
                                                            apiKey:
                                                                FFDevEnvironmentValues()
                                                                    .envApiKey,
                                                            accessToken:
                                                                currentJwtToken,
                                                            oveId: widget
                                                                .cpDtOve?.id,
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .apiResultsue
                                                                  ?.succeeded ??
                                                              true)) {
                                                            _model
                                                                .lcsvOveDuplicateTeamUsers = ((_model
                                                                            .apiResultsue
                                                                            ?.jsonBody ??
                                                                        '')
                                                                    .toList()
                                                                    .map<DtOrderVisitExtraTeamUserStruct?>(
                                                                        DtOrderVisitExtraTeamUserStruct
                                                                            .maybeFromMap)
                                                                    .toList() as Iterable<DtOrderVisitExtraTeamUserStruct?>)
                                                                .withoutNulls
                                                                .toList()
                                                                .cast<DtOrderVisitExtraTeamUserStruct>();
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                .stCounterLoop = 0;
                                                            FFAppState()
                                                                    .stCounterLoopFinal =
                                                                _model
                                                                    .lcsvOveDuplicateTeamUsers
                                                                    .length;
                                                            safeSetState(() {});
                                                            while (FFAppState()
                                                                    .stCounterLoop <
                                                                FFAppState()
                                                                    .stCounterLoopFinal) {
                                                              await OrdersVisitsExtrasTeamsTable()
                                                                  .insert({
                                                                'ove_id': _model
                                                                    .resOVEAdded
                                                                    ?.id,
                                                                'user_id': _model
                                                                    .lcsvOveDuplicateTeamUsers
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .stCounterLoop)
                                                                    ?.userId,
                                                                'is_leader': _model
                                                                    .lcsvOveDuplicateTeamUsers
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .stCounterLoop)
                                                                    ?.isLeader,
                                                                'duration_hours': functions.cfGetDifDecHoursBetweenDates(
                                                                    functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(_model
                                                                        .tfStartedAtTextController
                                                                        .text),
                                                                    functions.cfConvDatetimeStringBrToDatetimeENYmdHHmm00(_model
                                                                        .tfEndedAtTextController
                                                                        .text),
                                                                    2),
                                                                'started_at_date':
                                                                    supaSerialize<
                                                                            DateTime>(
                                                                        _model
                                                                            .datePicked1),
                                                                'started_at_hour_min': supaSerialize<
                                                                        PostgresTime>(
                                                                    PostgresTime(
                                                                        _model
                                                                            .datePicked1)),
                                                                'ended_at_date':
                                                                    supaSerialize<
                                                                            DateTime>(
                                                                        _model
                                                                            .datePicked2),
                                                                'ended_at_hour_min': supaSerialize<
                                                                        PostgresTime>(
                                                                    PostgresTime(
                                                                        _model
                                                                            .datePicked2)),
                                                              });
                                                              FFAppState()
                                                                      .stCounterLoop =
                                                                  FFAppState()
                                                                          .stCounterLoop +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          } else {
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                        }

                                                        Navigator.pop(context);
                                                        FFAppState()
                                                            .stOVEProcessingId = 1;
                                                        FFAppState()
                                                                .stOVEIsFiled =
                                                            false;
                                                        safeSetState(() {});
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Ops ...'),
                                                              content: Text(
                                                                  'Verificar as previsões de inicio e fim.'),
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

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'u40h4hma' /* INCLUIR */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
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
                                                              .info,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                      elevation: 5.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
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
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 8.0))
                          .addToEnd(SizedBox(height: 50.0)),
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
