import '/backend/schema/structs/index.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'md_ove_menu_processing_model.dart';
export 'md_ove_menu_processing_model.dart';

class MdOveMenuProcessingWidget extends StatefulWidget {
  const MdOveMenuProcessingWidget({
    super.key,
    int? cpProcessingId,
    required this.cpDtOve,
    int? cpPageId,
    bool? cpIsFiled,
  })  : this.cpProcessingId = cpProcessingId ?? 0,
        this.cpPageId = cpPageId ?? 0,
        this.cpIsFiled = cpIsFiled ?? false;

  final int cpProcessingId;
  final DtOrderVisitExtraStruct? cpDtOve;
  final int cpPageId;
  final bool cpIsFiled;

  @override
  State<MdOveMenuProcessingWidget> createState() =>
      _MdOveMenuProcessingWidgetState();
}

class _MdOveMenuProcessingWidgetState extends State<MdOveMenuProcessingWidget> {
  late MdOveMenuProcessingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOveMenuProcessingModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isAllowed = await action_blocks.abGuardian(
        context,
        abPgRequestedId: widget.cpPageId,
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

    _model.tfRequetedServicesTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.cpDtOve?.requestedServices,
      'Serviços a realizar',
    ));
    _model.tfRequetedServicesFocusNode ??= FocusNode();

    _model.tfStartedAtTextController ??= TextEditingController(
        text: functions.cfConvDatetimeEnStringToDatetimeBrString(
            widget.cpDtOve!.startedAt));
    _model.tfStartedAtFocusNode ??= FocusNode();

    _model.tfEndedAtTextController ??= TextEditingController(
        text: functions.cfConvDatetimeEnStringToDatetimeBrString(
            widget.cpDtOve!.endedAt));
    _model.tfEndedAtFocusNode ??= FocusNode();

    _model.tfDisapprovedCommentsTextController ??= TextEditingController();
    _model.tfDisapprovedCommentsFocusNode ??= FocusNode();

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
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tel2wybl' /* Serviço Extra */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
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
                                                .tfOMaskTextControllerValidator
                                                .asValidator(context),
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
                                            maxLines: 3,
                                            minLines: 1,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .tfRequetedServicesTextControllerValidator
                                                .asValidator(context),
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
                                              cpHintText: 'Prioridade',
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
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.tfStartedAtTextController',
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
                                                          'isjr93bj' /* Início previsto */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
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
                                                                .tfStartedAtTextController!
                                                                .text
                                                                .isNotEmpty
                                                            ? InkWell(
                                                                onTap:
                                                                    () async {
                                                                  _model
                                                                      .tfStartedAtTextController
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
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                      minLines: 1,
                                                      maxLength: 16,
                                                      buildCounter: (context,
                                                              {required currentLength,
                                                              required isFocused,
                                                              maxLength}) =>
                                                          null,
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
                                                              initialDate: (functions
                                                                      .cfConvDatetimeBrStringToDatetimeEn(_model
                                                                          .tfStartedAtTextController
                                                                          .text) ??
                                                                  DateTime
                                                                      .now()),
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
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
                                                                initialTime: TimeOfDay.fromDateTime((functions.cfConvDatetimeBrStringToDatetimeEn(_model
                                                                        .tfStartedAtTextController
                                                                        .text) ??
                                                                    DateTime
                                                                        .now())),
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
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
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
                                                                    functions.cfConvDatetimeBrStringToDatetimeEn(_model
                                                                        .tfStartedAtTextController
                                                                        .text);
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
                                                          'iv26feua' /* Final previsto */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
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
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                      minLines: 1,
                                                      maxLength: 16,
                                                      buildCounter: (context,
                                                              {required currentLength,
                                                              required isFocused,
                                                              maxLength}) =>
                                                          null,
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
                                                              initialDate: (functions
                                                                      .cfConvDatetimeBrStringToDatetimeEn(_model
                                                                          .tfEndedAtTextController
                                                                          .text) ??
                                                                  DateTime
                                                                      .now()),
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
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
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
                                                                initialTime: TimeOfDay.fromDateTime((functions.cfConvDatetimeBrStringToDatetimeEn(_model
                                                                        .tfEndedAtTextController
                                                                        .text) ??
                                                                    DateTime
                                                                        .now())),
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
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                          fontSize:
                                                                              32.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
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
                                                                    functions.cfConvDatetimeBrStringToDatetimeEn(_model
                                                                        .tfEndedAtTextController
                                                                        .text);
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
                                          if (widget.cpProcessingId == 4)
                                            TextFormField(
                                              controller: _model
                                                  .tfDisapprovedCommentsTextController,
                                              focusNode: _model
                                                  .tfDisapprovedCommentsFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.tfDisapprovedCommentsTextController',
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
                                                  'iqh9vgdb' /* Informe os motivos */,
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
                                                        .tfDisapprovedCommentsTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .tfDisapprovedCommentsTextController
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
                                              maxLines: 3,
                                              minLines: 1,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .tfDisapprovedCommentsTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                        ].divide(SizedBox(height: 12.0)),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (widget.cpIsFiled == false) {
                                          return Builder(
                                            builder: (context) {
                                              if (widget.cpProcessingId == 1) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
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
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue ==
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar uma Unidade.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar um Setor.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o tipo da OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar Espécie de OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o Motivo.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar a Prioridad'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                                if (functions.cfIsEndDatetimeGreater(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text,
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text)!) {
                                                                  await action_blocks
                                                                      .abOVEProcessing(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                    abOMask: _model
                                                                        .tfOMaskTextController
                                                                        .text,
                                                                    abStartedAt:
                                                                        _model
                                                                            .tfStartedAtTextController
                                                                            .text,
                                                                    abEndedAt: _model
                                                                        .tfEndedAtTextController
                                                                        .text,
                                                                    abUserId:
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    abUpdatedAt:
                                                                        getCurrentTimestamp,
                                                                    abUnitId: _model
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue,
                                                                    abOTypeId: _model
                                                                        .cpDropdownOrdersTypesModel
                                                                        .dropdownOrdersTypesValue,
                                                                    abAssetTagId: _model
                                                                        .cpDropdownAssetsTagsModel
                                                                        .dropdownAssetTagsValue,
                                                                    abPriorityId: _model
                                                                        .cpDropdownOrdersPrioritiesModel
                                                                        .dropdownOrdersPrioritiesValue,
                                                                    abRequestedServices:
                                                                        _model
                                                                            .tfRequetedServicesTextController
                                                                            .text,
                                                                    abProcessingId:
                                                                        1,
                                                                    abDisapprovedComments:
                                                                        _model
                                                                            .tfDisapprovedCommentsTextController
                                                                            .text,
                                                                    abOTypeSubId: _model
                                                                        .cpDdOTypesSubsAvailableMonoModel
                                                                        .ddOTypesSubsAvailableMonoValue,
                                                                    abOCauseReasonId: _model
                                                                        .cpDropdownOrdersCausesReasonsModel
                                                                        .dropdownOrdersCausesReasonsValue,
                                                                  );
                                                                  await action_blocks
                                                                      .abOVESelected(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                  );
                                                                  Navigator.pop(
                                                                      context);
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops ...'),
                                                                        content:
                                                                            Text('Verificar as previsões de Inicio e Fim.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'x5zf3y6y' /* MANTER RASCUNHO */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              } else if (widget
                                                      .cpProcessingId ==
                                                  2) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
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
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue ==
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar uma Unidade.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar um Setor.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o tipo da OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar Espécie de OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o Motivo.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar a Prioridad'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                                if (functions.cfIsEndDatetimeGreater(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text,
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text)!) {
                                                                  await action_blocks
                                                                      .abOVEProcessing(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                    abOMask: _model
                                                                        .tfOMaskTextController
                                                                        .text,
                                                                    abStartedAt:
                                                                        _model
                                                                            .tfStartedAtTextController
                                                                            .text,
                                                                    abEndedAt: _model
                                                                        .tfEndedAtTextController
                                                                        .text,
                                                                    abUserId:
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    abUpdatedAt:
                                                                        getCurrentTimestamp,
                                                                    abUnitId: _model
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue,
                                                                    abOTypeId: _model
                                                                        .cpDropdownOrdersTypesModel
                                                                        .dropdownOrdersTypesValue,
                                                                    abAssetTagId: _model
                                                                        .cpDropdownAssetsTagsModel
                                                                        .dropdownAssetTagsValue,
                                                                    abPriorityId: _model
                                                                        .cpDropdownOrdersPrioritiesModel
                                                                        .dropdownOrdersPrioritiesValue,
                                                                    abRequestedServices:
                                                                        _model
                                                                            .tfRequetedServicesTextController
                                                                            .text,
                                                                    abProcessingId:
                                                                        2,
                                                                    abOTypeSubId: _model
                                                                        .cpDdOTypesSubsAvailableMonoModel
                                                                        .ddOTypesSubsAvailableMonoValue,
                                                                    abOCauseReasonId: _model
                                                                        .cpDropdownOrdersCausesReasonsModel
                                                                        .dropdownOrdersCausesReasonsValue,
                                                                  );
                                                                  await action_blocks
                                                                      .abOVESelected(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                  );
                                                                  Navigator.pop(
                                                                      context);
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops ...'),
                                                                        content:
                                                                            Text('Verificar as previsões inicial e final.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'kjw8q0td' /* REPORTAR */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleMediumFamily),
                                                                    ),
                                                                elevation: 5.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              } else if (widget
                                                      .cpProcessingId ==
                                                  3) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
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
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue ==
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar uma Unidade.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar um Setor.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o tipo da OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar Espécie de OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o Motivo.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar a Prioridad'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                                if (functions.cfIsEndDatetimeGreater(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text,
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text)!) {
                                                                  await action_blocks
                                                                      .abOVEProcessing(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                    abOMask: _model
                                                                        .tfOMaskTextController
                                                                        .text,
                                                                    abStartedAt:
                                                                        _model
                                                                            .tfStartedAtTextController
                                                                            .text,
                                                                    abEndedAt: _model
                                                                        .tfEndedAtTextController
                                                                        .text,
                                                                    abUserId:
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    abUpdatedAt:
                                                                        getCurrentTimestamp,
                                                                    abUnitId: _model
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue,
                                                                    abOTypeId: _model
                                                                        .cpDropdownOrdersTypesModel
                                                                        .dropdownOrdersTypesValue,
                                                                    abAssetTagId: _model
                                                                        .cpDropdownAssetsTagsModel
                                                                        .dropdownAssetTagsValue,
                                                                    abPriorityId: _model
                                                                        .cpDropdownOrdersPrioritiesModel
                                                                        .dropdownOrdersPrioritiesValue,
                                                                    abRequestedServices:
                                                                        _model
                                                                            .tfRequetedServicesTextController
                                                                            .text,
                                                                    abProcessingId:
                                                                        3,
                                                                    abOTypeSubId: _model
                                                                        .cpDdOTypesSubsAvailableMonoModel
                                                                        .ddOTypesSubsAvailableMonoValue,
                                                                    abOCauseReasonId: _model
                                                                        .cpDropdownOrdersCausesReasonsModel
                                                                        .dropdownOrdersCausesReasonsValue,
                                                                  );
                                                                  await action_blocks
                                                                      .abOVESelected(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                  );
                                                                  Navigator.pop(
                                                                      context);
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops ...'),
                                                                        content:
                                                                            Text('Verificar as previsões inicial e final.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'kdee5d42' /* REVISAR */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
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
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              } else if (widget
                                                      .cpProcessingId ==
                                                  4) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
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
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue ==
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar uma Unidade.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar um Setor.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o tipo da OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar Espécie de OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o Motivo.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar a Prioridad'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                                if (functions.cfIsEndDatetimeGreater(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text,
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text)!) {
                                                                  if (_model.tfDisapprovedCommentsTextController
                                                                              .text !=
                                                                          '') {
                                                                    await action_blocks
                                                                        .abOVEProcessing(
                                                                      context,
                                                                      abOVEId: widget
                                                                          .cpDtOve
                                                                          ?.id,
                                                                      abOMask: _model
                                                                          .tfOMaskTextController
                                                                          .text,
                                                                      abStartedAt: _model
                                                                          .tfStartedAtTextController
                                                                          .text,
                                                                      abEndedAt: _model
                                                                          .tfEndedAtTextController
                                                                          .text,
                                                                      abUserId: FFAppState()
                                                                          .stUserCurrent
                                                                          .id,
                                                                      abUpdatedAt:
                                                                          getCurrentTimestamp,
                                                                      abUnitId: _model
                                                                          .cpDropdownUnitsModel
                                                                          .dropdownUnitsValue,
                                                                      abOTypeId: _model
                                                                          .cpDropdownOrdersTypesModel
                                                                          .dropdownOrdersTypesValue,
                                                                      abAssetTagId: _model
                                                                          .cpDropdownAssetsTagsModel
                                                                          .dropdownAssetTagsValue,
                                                                      abPriorityId: _model
                                                                          .cpDropdownOrdersPrioritiesModel
                                                                          .dropdownOrdersPrioritiesValue,
                                                                      abRequestedServices: _model
                                                                          .tfRequetedServicesTextController
                                                                          .text,
                                                                      abProcessingId:
                                                                          4,
                                                                      abDisapprovedComments: _model
                                                                          .tfDisapprovedCommentsTextController
                                                                          .text,
                                                                      abOTypeSubId: _model
                                                                          .cpDdOTypesSubsAvailableMonoModel
                                                                          .ddOTypesSubsAvailableMonoValue,
                                                                      abOCauseReasonId: _model
                                                                          .cpDropdownOrdersCausesReasonsModel
                                                                          .dropdownOrdersCausesReasonsValue,
                                                                    );
                                                                    await action_blocks
                                                                        .abOVESelected(
                                                                      context,
                                                                      abOVEId: widget
                                                                          .cpDtOve
                                                                          ?.id,
                                                                    );
                                                                    Navigator.pop(
                                                                        context);
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Ops ... '),
                                                                          content:
                                                                              Text('Informar os motivos da rejeição.'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    return;
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
                                                                        content:
                                                                            Text('Verificar as previsões de Inicio e Fim.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'xwiof8z3' /* REJEITAR */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleMediumFamily),
                                                                    ),
                                                                elevation: 5.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              } else if (widget
                                                      .cpProcessingId ==
                                                  5) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
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
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue ==
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar uma Unidade.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar um Setor.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o tipo da OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar Espécie de OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o Motivo.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar a Prioridad'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                                if (functions.cfIsEndDatetimeGreater(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text,
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text)!) {
                                                                  await action_blocks
                                                                      .abOVEProcessing(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                    abOMask: _model
                                                                        .tfOMaskTextController
                                                                        .text,
                                                                    abStartedAt:
                                                                        _model
                                                                            .tfStartedAtTextController
                                                                            .text,
                                                                    abEndedAt: _model
                                                                        .tfEndedAtTextController
                                                                        .text,
                                                                    abUserId:
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    abUpdatedAt:
                                                                        getCurrentTimestamp,
                                                                    abUnitId: _model
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue,
                                                                    abOTypeId: _model
                                                                        .cpDropdownOrdersTypesModel
                                                                        .dropdownOrdersTypesValue,
                                                                    abAssetTagId: _model
                                                                        .cpDropdownAssetsTagsModel
                                                                        .dropdownAssetTagsValue,
                                                                    abPriorityId: _model
                                                                        .cpDropdownOrdersPrioritiesModel
                                                                        .dropdownOrdersPrioritiesValue,
                                                                    abRequestedServices:
                                                                        _model
                                                                            .tfRequetedServicesTextController
                                                                            .text,
                                                                    abProcessingId:
                                                                        5,
                                                                    abIsFiled:
                                                                        false,
                                                                    abOTypeSubId: _model
                                                                        .cpDdOTypesSubsAvailableMonoModel
                                                                        .ddOTypesSubsAvailableMonoValue,
                                                                    abOCauseReasonId: _model
                                                                        .cpDropdownOrdersCausesReasonsModel
                                                                        .dropdownOrdersCausesReasonsValue,
                                                                  );
                                                                  await action_blocks
                                                                      .abOVESelected(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                  );
                                                                  Navigator.pop(
                                                                      context);
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops ...'),
                                                                        content:
                                                                            Text('Verificar as previsões inicial e final.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '8eb305u4' /* APROVAR */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              } else {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
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
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue ==
                                                                    null) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar uma Unidade.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar um Setor.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o tipo da OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar Espécie de OS.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar o Motivo.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
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
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops...'),
                                                                        content:
                                                                            Text('Informar a Prioridad'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                                if (functions.cfIsEndDatetimeGreater(
                                                                    _model
                                                                        .tfStartedAtTextController
                                                                        .text,
                                                                    _model
                                                                        .tfEndedAtTextController
                                                                        .text)!) {
                                                                  await action_blocks
                                                                      .abOVEProcessing(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                    abOMask: _model
                                                                        .tfOMaskTextController
                                                                        .text,
                                                                    abStartedAt:
                                                                        _model
                                                                            .tfStartedAtTextController
                                                                            .text,
                                                                    abEndedAt: _model
                                                                        .tfEndedAtTextController
                                                                        .text,
                                                                    abUserId:
                                                                        FFAppState()
                                                                            .stUserCurrent
                                                                            .id,
                                                                    abUpdatedAt:
                                                                        getCurrentTimestamp,
                                                                    abUnitId: _model
                                                                        .cpDropdownUnitsModel
                                                                        .dropdownUnitsValue,
                                                                    abOTypeId: _model
                                                                        .cpDropdownOrdersTypesModel
                                                                        .dropdownOrdersTypesValue,
                                                                    abAssetTagId: _model
                                                                        .cpDropdownAssetsTagsModel
                                                                        .dropdownAssetTagsValue,
                                                                    abPriorityId: _model
                                                                        .cpDropdownOrdersPrioritiesModel
                                                                        .dropdownOrdersPrioritiesValue,
                                                                    abRequestedServices:
                                                                        _model
                                                                            .tfRequetedServicesTextController
                                                                            .text,
                                                                    abProcessingId:
                                                                        99,
                                                                    abOTypeSubId: _model
                                                                        .cpDdOTypesSubsAvailableMonoModel
                                                                        .ddOTypesSubsAvailableMonoValue,
                                                                    abOCauseReasonId: _model
                                                                        .cpDropdownOrdersCausesReasonsModel
                                                                        .dropdownOrdersCausesReasonsValue,
                                                                  );
                                                                  Navigator.pop(
                                                                      context);
                                                                  await action_blocks
                                                                      .abOVESelected(
                                                                    context,
                                                                    abOVEId: widget
                                                                        .cpDtOve
                                                                        ?.id,
                                                                  );
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Ops ...'),
                                                                        content:
                                                                            Text('Verificar as previsões inicial e final.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'wzi8jl8l' /* EXCLUIR */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleMediumFamily),
                                                                    ),
                                                                elevation: 5.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              }
                                            },
                                          );
                                        } else {
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
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
                                                                      'Ops...'),
                                                                  content: Text(
                                                                      'Informar uma Unidade.'),
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
                                                                      'Ops...'),
                                                                  content: Text(
                                                                      'Informar um Setor.'),
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
                                                                      'Ops...'),
                                                                  content: Text(
                                                                      'Informar o tipo da OS.'),
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
                                                                      'Informar Espécie de OS.'),
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
                                                                      'Informar o Motivo.'),
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
                                                                      'Ops...'),
                                                                  content: Text(
                                                                      'Informar a Prioridad'),
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
                                                            await action_blocks
                                                                .abOVEProcessing(
                                                              context,
                                                              abOVEId: widget
                                                                  .cpDtOve?.id,
                                                              abOMask: _model
                                                                  .tfOMaskTextController
                                                                  .text,
                                                              abStartedAt: _model
                                                                  .tfStartedAtTextController
                                                                  .text,
                                                              abEndedAt: _model
                                                                  .tfEndedAtTextController
                                                                  .text,
                                                              abUserId: FFAppState()
                                                                  .stUserCurrent
                                                                  .id,
                                                              abUpdatedAt:
                                                                  getCurrentTimestamp,
                                                              abUnitId: _model
                                                                  .cpDropdownUnitsModel
                                                                  .dropdownUnitsValue,
                                                              abOTypeId: _model
                                                                  .cpDropdownOrdersTypesModel
                                                                  .dropdownOrdersTypesValue,
                                                              abAssetTagId: _model
                                                                  .cpDropdownAssetsTagsModel
                                                                  .dropdownAssetTagsValue,
                                                              abPriorityId: _model
                                                                  .cpDropdownOrdersPrioritiesModel
                                                                  .dropdownOrdersPrioritiesValue,
                                                              abRequestedServices:
                                                                  _model
                                                                      .tfRequetedServicesTextController
                                                                      .text,
                                                              abProcessingId: 5,
                                                              abIsFiled: true,
                                                              abOTypeSubId: _model
                                                                  .cpDdOTypesSubsAvailableMonoModel
                                                                  .ddOTypesSubsAvailableMonoValue,
                                                              abOCauseReasonId: _model
                                                                  .cpDropdownOrdersCausesReasonsModel
                                                                  .dropdownOrdersCausesReasonsValue,
                                                            );
                                                            safeSetState(() {});
                                                            await action_blocks
                                                                .abOVESelected(
                                                              context,
                                                              abOVEId: widget
                                                                  .cpDtOve?.id,
                                                            );
                                                            safeSetState(() {});
                                                            Navigator.pop(
                                                                context);
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Ops ...'),
                                                                  content: Text(
                                                                      'Verificar as previsões inicial e final.'),
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
                                                            return;
                                                          }
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'jq3ppjrf' /* ARQUIVAR */,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              double.infinity,
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
                                                              .success,
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
                                                ],
                                              ),
                                            ],
                                          );
                                        }
                                      },
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
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
