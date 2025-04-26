import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_connectivity_icon_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
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
import 'package:provider/provider.dart';
import 'pg_o_p_create_model.dart';
export 'pg_o_p_create_model.dart';

class PgOPCreateWidget extends StatefulWidget {
  const PgOPCreateWidget({super.key});

  static String routeName = 'pgOPCreate';
  static String routePath = 'pgOPCreate';

  @override
  State<PgOPCreateWidget> createState() => _PgOPCreateWidgetState();
}

class _PgOPCreateWidgetState extends State<PgOPCreateWidget> {
  late PgOPCreateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOPCreateModel());

    _model.tfRequestedServicesTextController ??= TextEditingController();
    _model.tfRequestedServicesFocusNode ??= FocusNode();

    _model.tfRequesterPhoneTextController ??=
        TextEditingController(text: FFAppState().stUserCurrent.mobileMask);
    _model.tfRequesterPhoneFocusNode ??= FocusNode();

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
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => safeSetState(() {}),
            child: CpMenuWidget(),
          ),
        ),
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
                FFLocalizations.of(context).getText(
                  's4mzvhv4' /* Nova SS */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: FlutterFlowTheme.of(context).headlineMedium,
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              wrapWithModel(
                model: _model.cpConnectivityIconModel,
                updateCallback: () => safeSetState(() {}),
                child: CpConnectivityIconWidget(),
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
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: wrapWithModel(
                    model: _model.cpDBUserAvailableModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpDBUserAvailableWidget(
                      toolTip: FFAppState().stUserCurrent.nameShort,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                      maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                    ),
                    decoration: BoxDecoration(),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.cpDropdownUnitsModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpDropdownUnitsWidget(
                              cpHintText: 'Unidade ?',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpDropdownAssetsTagsModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpDropdownAssetsTagsWidget(
                              cpHintText: 'Setor ?',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.cpDropdownOrdersTypesModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpDropdownOrdersTypesWidget(
                              cpHintText: 'Tipo SS ?',
                            ),
                          ),
                          TextFormField(
                            controller:
                                _model.tfRequestedServicesTextController,
                            focusNode: _model.tfRequestedServicesFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.tfRequestedServicesTextController',
                              Duration(milliseconds: 2000),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            autofillHints: [AutofillHints.name],
                            textCapitalization: TextCapitalization.none,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '12c0w3xw' /* Qual o problema ? */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    letterSpacing: 0.0,
                                  ),
                              errorStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 0.0, 12.0),
                              suffixIcon: _model
                                      .tfRequestedServicesTextController!
                                      .text
                                      .isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.tfRequestedServicesTextController
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
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 5,
                            minLines: 2,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model
                                .tfRequestedServicesTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              if (!isAndroid && !isiOS)
                                TextInputFormatter.withFunction(
                                    (oldValue, newValue) {
                                  return TextEditingValue(
                                    selection: newValue.selection,
                                    text: newValue.text.toCapitalization(
                                        TextCapitalization.none),
                                  );
                                }),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.cpDropdownOrdersPrioritiesModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpDropdownOrdersPrioritiesWidget(
                              cpHintText: 'Prioridade ?',
                            ),
                          ),
                          TextFormField(
                            controller: _model.tfRequesterPhoneTextController,
                            focusNode: _model.tfRequesterPhoneFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.tfRequesterPhoneTextController',
                              Duration(milliseconds: 2000),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            autofillHints: [
                              AutofillHints.telephoneNumberNational
                            ],
                            textCapitalization: TextCapitalization.none,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '91hi66cn' /* Celular ? */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    letterSpacing: 0.0,
                                  ),
                              errorStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 0.0, 12.0),
                              suffixIcon: _model.tfRequesterPhoneTextController!
                                      .text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.tfRequesterPhoneTextController
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
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                            minLines: 1,
                            maxLength: 16,
                            maxLengthEnforcement: MaxLengthEnforcement.none,
                            buildCounter: (context,
                                    {required currentLength,
                                    required isFocused,
                                    maxLength}) =>
                                null,
                            keyboardType: TextInputType.number,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model
                                .tfRequesterPhoneTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.tfRequesterPhoneMask],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey.currentState != null) {
                                        _model.formKey.currentState!.validate();
                                      }
                                      if (_model.cpDropdownUnitsModel
                                              .dropdownUnitsValue ==
                                          null) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content:
                                                  Text('Informe a Unidade.'),
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
                                      }
                                      if (_model.cpDropdownAssetsTagsModel
                                              .dropdownAssetTagsValue ==
                                          null) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content: Text('Informe o Setor.'),
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
                                      }
                                      if (_model.cpDropdownOrdersTypesModel
                                              .dropdownOrdersTypesValue ==
                                          null) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content:
                                                  Text('Informe o Tipo da SS.'),
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
                                      }
                                      if (_model.cpDropdownOrdersPrioritiesModel
                                              .dropdownOrdersPrioritiesValue ==
                                          null) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Ops ...'),
                                              content:
                                                  Text('Informe a Prioridade.'),
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
                                      }
                                      _model.resOCounterReq =
                                          await ApiOrdersCounterGroup
                                              .apiOCounterRequestCall
                                              .call(
                                        apiKey:
                                            FFDevEnvironmentValues().envApiKey,
                                        accessToken: currentJwtToken,
                                        companyId: 1,
                                        year: functions
                                            .cfDateGetYear(getCurrentTimestamp),
                                        version:
                                            FFAppState().stAppVersionMode?.name,
                                      );

                                      _model.lpcvOCounter =
                                          ApiOrdersCounterGroup
                                              .apiOCounterRequestCall
                                              .counter(
                                        (_model.resOCounterReq?.jsonBody ?? ''),
                                      )!;
                                      safeSetState(() {});
                                      _model.resOfflineUnitSelected =
                                          await action_blocks
                                              .abOfflineUnitSelected(
                                        context,
                                        abId: _model.cpDropdownUnitsModel
                                            .dropdownUnitsValue,
                                      );
                                      _model.resOPCreated =
                                          await OrdersTable().insert({
                                        'company_id': FFAppState()
                                            .stUserCurrent
                                            .companyId,
                                        'department_id': FFAppState()
                                            .stUserCurrent
                                            .departmentId,
                                        'type_id': _model
                                            .cpDropdownOrdersTypesModel
                                            .dropdownOrdersTypesValue,
                                        'status_id': 1,
                                        'status_at': supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                        'unit_id': _model.cpDropdownUnitsModel
                                            .dropdownUnitsValue,
                                        'system_parent_id': _model
                                            .resOfflineUnitSelected
                                            ?.systemParentId,
                                        'system_id': _model
                                            .resOfflineUnitSelected?.systemId,
                                        'unit_type_parent_id': _model
                                            .resOfflineUnitSelected
                                            ?.unitTypeParentId,
                                        'unit_type_id': _model
                                            .resOfflineUnitSelected?.unitTypeId,
                                        'requester_name': FFAppState()
                                            .stUserCurrent
                                            .nameShort,
                                        'requester_team_id':
                                            FFAppState().stUserCurrent.teamId,
                                        'requester_phone': _model
                                            .tfRequesterPhoneTextController
                                            .text,
                                        'requested_at': supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                        'requested_services': _model
                                            .tfRequestedServicesTextController
                                            .text,
                                        'counter_parent': _model.lpcvOCounter,
                                        'counter_child': 0,
                                        'year': functions
                                            .cfDateGetYear(getCurrentTimestamp),
                                        'order_mask':
                                            '${_model.lpcvOCounter.toString()}.0.${functions.cfDateGetYear(getCurrentTimestamp).toString()}',
                                        'priority_id': _model
                                            .cpDropdownOrdersPrioritiesModel
                                            .dropdownOrdersPrioritiesValue,
                                        'unit_latitude': _model
                                            .resOfflineUnitSelected?.latitude,
                                        'unit_longitude': _model
                                            .resOfflineUnitSelected?.longitude,
                                        'asset_tag_id': _model
                                            .cpDropdownAssetsTagsModel
                                            .dropdownAssetTagsValue,
                                        'created_user_id':
                                            FFAppState().stUserCurrent.id,
                                        'created_at': supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                        'version_mode':
                                            FFAppState().stAppVersionMode?.name,
                                      });
                                      await action_blocks.abOSelected(
                                        context,
                                        abOId: _model.resOPCreated?.id,
                                        abIsParent: true,
                                        abIsNew: true,
                                      );
                                      if (Navigator.of(context).canPop()) {
                                        context.pop();
                                      }
                                      context.pushNamed(
                                        PgOPShowWidget.routeName,
                                        queryParameters: {
                                          'ppOPMenuOptions': serializeParam(
                                            true,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'pmobw9t7' /* CONFIRMAR */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      color: FlutterFlowTheme.of(context).info,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .titleSmall,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                      elevation: 5.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 6.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
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
        ),
      ),
    );
  }
}
