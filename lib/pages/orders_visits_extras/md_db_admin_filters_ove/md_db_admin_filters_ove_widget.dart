import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_filters_assets_tags/cp_dropdown_filters_assets_tags_widget.dart';
import '/pages/dashboard/cp_dd_o_types_multi_all/cp_dd_o_types_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_multi_all/cp_dd_o_types_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_parent_multi_all/cp_dd_systems_parent_multi_all_widget.dart';
import '/pages/dashboard/cp_dd_systems_subs_multi_all/cp_dd_systems_subs_multi_all_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_teams_department/cp_dropdown_filters_teams_department_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types/cp_dropdown_filters_units_types_widget.dart';
import '/pages/dashboard/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import '/pages/orders_parents/cp_dd_orders_causes_reasons_multi/cp_dd_orders_causes_reasons_multi_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'md_db_admin_filters_ove_model.dart';
export 'md_db_admin_filters_ove_model.dart';

class MdDbAdminFiltersOveWidget extends StatefulWidget {
  const MdDbAdminFiltersOveWidget({super.key});

  @override
  State<MdDbAdminFiltersOveWidget> createState() =>
      _MdDbAdminFiltersOveWidgetState();
}

class _MdDbAdminFiltersOveWidgetState extends State<MdDbAdminFiltersOveWidget> {
  late MdDbAdminFiltersOveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdDbAdminFiltersOveModel());

    _model.tfOveDateStartTextController ??= TextEditingController();
    _model.tfOveDateStartFocusNode ??= FocusNode();

    _model.tfOveDateEndTextController ??= TextEditingController();
    _model.tfOveDateEndFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.tfOveDateStartTextController?.text = dateTimeFormat(
            "dd/MM/y",
            FFAppState().stFiltersOVE.dateStart,
            locale: FFLocalizations.of(context).languageCode,
          );
          _model.tfOveDateEndTextController?.text = dateTimeFormat(
            "dd/MM/y",
            FFAppState().stFiltersOVE.dateEnd,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
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
                                            '8amri7gg' /* Filtros */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      if (false)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: Text(
                                            FFAppState().stFiltersOVE.pgAdmin,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall,
                                                  letterSpacing: 0.0,
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
                                      if (FFAppState().stFiltersOVE.pgAdmin ==
                                          'OVE')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Flex(
                                                  direction: (MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          393.0)
                                                      ? Axis.horizontal
                                                      : Axis.vertical,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .tfOveDateStartTextController,
                                                                  focusNode: _model
                                                                      .tfOveDateStartFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.tfOveDateStartTextController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () => safeSetState(
                                                                        () {}),
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  autofillHints: [
                                                                    AutofillHints
                                                                        .name
                                                                  ],
                                                                  textCapitalization:
                                                                      TextCapitalization
                                                                          .none,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'x42tq5ih' /* Data inicial */,
                                                                    ),
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    errorStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            0.0,
                                                                            12.0),
                                                                    suffixIcon: _model
                                                                            .tfOveDateStartTextController!
                                                                            .text
                                                                            .isNotEmpty
                                                                        ? InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              _model.tfOveDateStartTextController?.clear();
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: Color(0xFF757575),
                                                                              size: 22.0,
                                                                            ),
                                                                          )
                                                                        : null,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  minLines: 1,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  validator: _model
                                                                      .tfOveDateStartTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                  inputFormatters: [
                                                                    if (!isAndroid &&
                                                                        !isiOS)
                                                                      TextInputFormatter.withFunction(
                                                                          (oldValue,
                                                                              newValue) {
                                                                        return TextEditingValue(
                                                                          selection:
                                                                              newValue.selection,
                                                                          text: newValue
                                                                              .text
                                                                              .toCapitalization(TextCapitalization.none),
                                                                        );
                                                                      }),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            4.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      8.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .calendar_month,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 24.0,
                                                                  ),
                                                                  showLoadingIndicator:
                                                                      true,
                                                                  onPressed:
                                                                      () async {
                                                                    final _datePicked1Date =
                                                                        await showDatePicker(
                                                                      context:
                                                                          context,
                                                                      initialDate:
                                                                          getCurrentTimestamp,
                                                                      firstDate:
                                                                          DateTime(
                                                                              1900),
                                                                      lastDate:
                                                                          DateTime(
                                                                              2050),
                                                                      builder:
                                                                          (context,
                                                                              child) {
                                                                        return wrapInMaterialDatePickerTheme(
                                                                          context,
                                                                          child!,
                                                                          headerBackgroundColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          headerForegroundColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          headerTextStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .override(
                                                                                font: FlutterFlowTheme.of(context).headlineLarge,
                                                                                fontSize: 32.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                          pickerBackgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          pickerForegroundColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          selectedDateTimeBackgroundColor:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          selectedDateTimeForegroundColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          actionButtonForegroundColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          iconSize:
                                                                              24.0,
                                                                        );
                                                                      },
                                                                    );

                                                                    if (_datePicked1Date !=
                                                                        null) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.datePicked1 =
                                                                            DateTime(
                                                                          _datePicked1Date
                                                                              .year,
                                                                          _datePicked1Date
                                                                              .month,
                                                                          _datePicked1Date
                                                                              .day,
                                                                        );
                                                                      });
                                                                    } else if (_model
                                                                            .datePicked1 !=
                                                                        null) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.datePicked1 =
                                                                            getCurrentTimestamp;
                                                                      });
                                                                    }
                                                                    await Future
                                                                        .wait([
                                                                      Future(
                                                                          () async {
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .tfOveDateStartTextController
                                                                              ?.text = dateTimeFormat(
                                                                            "dd/MM/y",
                                                                            _model.datePicked1,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          );
                                                                        });
                                                                      }),
                                                                      Future(
                                                                          () async {
                                                                        FFAppState()
                                                                            .updateStFiltersOVEStruct(
                                                                          (e) => e
                                                                            ..dateStart = functions.cfSetDatetime(
                                                                                _model.datePicked1!,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                        );
                                                                        FFAppState()
                                                                            .update(() {});
                                                                      }),
                                                                    ]);
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .tfOveDateEndTextController,
                                                                  focusNode: _model
                                                                      .tfOveDateEndFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.tfOveDateEndTextController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () => safeSetState(
                                                                        () {}),
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  autofillHints: [
                                                                    AutofillHints
                                                                        .name
                                                                  ],
                                                                  textCapitalization:
                                                                      TextCapitalization
                                                                          .none,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '4h3s9q34' /* Data final */,
                                                                    ),
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).bodyLarge,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    errorStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            0.0,
                                                                            12.0),
                                                                    suffixIcon: _model
                                                                            .tfOveDateEndTextController!
                                                                            .text
                                                                            .isNotEmpty
                                                                        ? InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              _model.tfOveDateEndTextController?.clear();
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: Color(0xFF757575),
                                                                              size: 22.0,
                                                                            ),
                                                                          )
                                                                        : null,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        font: FlutterFlowTheme.of(context)
                                                                            .bodyLarge,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  minLines: 1,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  validator: _model
                                                                      .tfOveDateEndTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                  inputFormatters: [
                                                                    if (!isAndroid &&
                                                                        !isiOS)
                                                                      TextInputFormatter.withFunction(
                                                                          (oldValue,
                                                                              newValue) {
                                                                        return TextEditingValue(
                                                                          selection:
                                                                              newValue.selection,
                                                                          text: newValue
                                                                              .text
                                                                              .toCapitalization(TextCapitalization.none),
                                                                        );
                                                                      }),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            4.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      8.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .calendar_month,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 24.0,
                                                                  ),
                                                                  showLoadingIndicator:
                                                                      true,
                                                                  onPressed:
                                                                      () async {
                                                                    final _datePicked2Date =
                                                                        await showDatePicker(
                                                                      context:
                                                                          context,
                                                                      initialDate:
                                                                          getCurrentTimestamp,
                                                                      firstDate:
                                                                          DateTime(
                                                                              1900),
                                                                      lastDate:
                                                                          DateTime(
                                                                              2050),
                                                                      builder:
                                                                          (context,
                                                                              child) {
                                                                        return wrapInMaterialDatePickerTheme(
                                                                          context,
                                                                          child!,
                                                                          headerBackgroundColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          headerForegroundColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          headerTextStyle: FlutterFlowTheme.of(context)
                                                                              .headlineLarge
                                                                              .override(
                                                                                font: FlutterFlowTheme.of(context).headlineLarge,
                                                                                fontSize: 32.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                          pickerBackgroundColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          pickerForegroundColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          selectedDateTimeBackgroundColor:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          selectedDateTimeForegroundColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          actionButtonForegroundColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          iconSize:
                                                                              24.0,
                                                                        );
                                                                      },
                                                                    );

                                                                    if (_datePicked2Date !=
                                                                        null) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.datePicked2 =
                                                                            DateTime(
                                                                          _datePicked2Date
                                                                              .year,
                                                                          _datePicked2Date
                                                                              .month,
                                                                          _datePicked2Date
                                                                              .day,
                                                                        );
                                                                      });
                                                                    } else if (_model
                                                                            .datePicked2 !=
                                                                        null) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.datePicked2 =
                                                                            getCurrentTimestamp;
                                                                      });
                                                                    }
                                                                    await Future
                                                                        .wait([
                                                                      Future(
                                                                          () async {
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .tfOveDateEndTextController
                                                                              ?.text = dateTimeFormat(
                                                                            "dd/MM/y",
                                                                            _model.datePicked2,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          );
                                                                        });
                                                                      }),
                                                                      Future(
                                                                          () async {
                                                                        FFAppState()
                                                                            .updateStFiltersOVEStruct(
                                                                          (e) => e
                                                                            ..dateEnd = functions.cfSetDatetime(
                                                                                _model.datePicked2!,
                                                                                23,
                                                                                59,
                                                                                59),
                                                                        );
                                                                        FFAppState()
                                                                            .update(() {});
                                                                      }),
                                                                    ]);
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          393.0)
                                                      ? SizedBox(width: 8.0)
                                                      : SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .cpDdSystemsParentMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdSystemsParentMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .systemsParentsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdSystemsSubsMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdSystemsSubsMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .systemsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsTypesParentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersUnitsTypesParentWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsTypesIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsTypesModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersUnitsTypesWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsTypesIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersUnitsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDropdownFiltersUnitsWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .unitsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersAssetsTagsModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersAssetsTagsWidget(
                                              cpHintText: 'Setores',
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .assetsTagsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.cpDdOTypesMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDdOTypesMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .oTypesIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdOTypesSubsMultiAllModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CpDdOTypesSubsMultiAllWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .oTypesSubsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDropdownFiltersTeamsDepartmentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDropdownFiltersTeamsDepartmentWidget(
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .teamsIds,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .cpDdOrdersCausesReasonsMultiModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                CpDdOrdersCausesReasonsMultiWidget(
                                              cpHintText: 'Causas',
                                              cpInitialValue: FFAppState()
                                                  .stFiltersOVE
                                                  .oCausesReasonsIds,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (FFAppState().stFiltersOveCount >
                                                0)
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        FFAppState()
                                                            .stFiltersOveCount = 0;
                                                        FFAppState()
                                                            .updateStFiltersOVEStruct(
                                                          (e) => e
                                                            ..teamsIds = []
                                                            ..unitsIds = []
                                                            ..oTypesIds = []
                                                            ..assetsTagsIds = []
                                                            ..oTypesSubsIds = []
                                                            ..systemsParentsIds =
                                                                []
                                                            ..systemsIds = []
                                                            ..unitsTypesParentsIds =
                                                                []
                                                            ..unitsTypesIds = []
                                                            ..oCausesReasonsIds =
                                                                [],
                                                        );
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersAssetsTagsModel
                                                              .dropdownFiltersAssetsTagsValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersUnitsModel
                                                              .dropdownFiltersUnitsValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersTeamsDepartmentModel
                                                              .dropdownFiltersTeamsDepartmentValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdOTypesMultiAllModel
                                                              .ddOTypesMultiAllValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdSystemsParentMultiAllModel
                                                              .ddSystemsParentMultiAllValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdSystemsSubsMultiAllModel
                                                              .ddSystemsSubsMultiAllValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersUnitsTypesParentModel
                                                              .dropdownFiltersUnitsTypesParentValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDropdownFiltersUnitsTypesModel
                                                              .dropdownFiltersUnitsTypesValueController
                                                              ?.value = [];
                                                        });
                                                        safeSetState(() {
                                                          _model
                                                              .cpDdOrdersCausesReasonsMultiModel
                                                              .ddOrdersCausesReasonsMultiValueController
                                                              ?.value = [];
                                                        });
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3c4xwslx' /* Limpar */,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 6.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
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
                                                        .updateStFiltersOVEStruct(
                                                      (e) => e
                                                        ..teamsIds = _model
                                                            .cpDropdownFiltersTeamsDepartmentModel
                                                            .dropdownFiltersTeamsDepartmentValue!
                                                            .toList()
                                                        ..unitsIds = _model
                                                            .cpDropdownFiltersUnitsModel
                                                            .dropdownFiltersUnitsValue!
                                                            .toList()
                                                        ..oTypesIds = _model
                                                            .cpDdOTypesMultiAllModel
                                                            .ddOTypesMultiAllValue!
                                                            .toList()
                                                        ..assetsTagsIds = _model
                                                            .cpDropdownFiltersAssetsTagsModel
                                                            .dropdownFiltersAssetsTagsValue!
                                                            .toList()
                                                        ..oTypesSubsIds = _model
                                                            .cpDdOTypesSubsMultiAllModel
                                                            .ddOTypesSubsMultiAllValue!
                                                            .toList()
                                                        ..systemsParentsIds = _model
                                                            .cpDdSystemsParentMultiAllModel
                                                            .ddSystemsParentMultiAllValue!
                                                            .toList()
                                                        ..systemsIds = _model
                                                            .cpDdSystemsSubsMultiAllModel
                                                            .ddSystemsSubsMultiAllValue!
                                                            .toList()
                                                        ..unitsTypesParentsIds = _model
                                                            .cpDropdownFiltersUnitsTypesParentModel
                                                            .dropdownFiltersUnitsTypesParentValue!
                                                            .toList()
                                                        ..unitsTypesIds = _model
                                                            .cpDropdownFiltersUnitsTypesModel
                                                            .dropdownFiltersUnitsTypesValue!
                                                            .toList()
                                                        ..oCausesReasonsIds = _model
                                                            .cpDdOrdersCausesReasonsMultiModel
                                                            .ddOrdersCausesReasonsMultiValue!
                                                            .toList(),
                                                    );
                                                    FFAppState().update(() {});
                                                    FFAppState()
                                                            .stDbAdminOVEFiltersModel =
                                                        'Filters';
                                                    safeSetState(() {});
                                                    await action_blocks
                                                        .abDbAdminOVEFiltersModel(
                                                      context,
                                                      abModel: FFAppState()
                                                          .stDbAdminOVEFiltersModel,
                                                    );
                                                    Navigator.pop(context);
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'tat62mmq' /* Aplicar */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
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
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
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
