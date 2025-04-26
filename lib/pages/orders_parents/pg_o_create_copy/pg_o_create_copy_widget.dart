import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assets/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/assets/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/dashboard/cp_dd_o_types_subs_available_mono/cp_dd_o_types_subs_available_mono_widget.dart';
import '/pages/orders_parents/cp_dropdown_contracts/cp_dropdown_contracts_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_objects/cp_dropdown_orders_objects_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_priorities/cp_dropdown_orders_priorities_widget.dart';
import '/pages/orders_parents/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/orders_parents/cp_o_p_show/cp_o_p_show_widget.dart';
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
import 'pg_o_create_copy_model.dart';
export 'pg_o_create_copy_model.dart';

class PgOCreateCopyWidget extends StatefulWidget {
  const PgOCreateCopyWidget({
    super.key,
    required this.ppOPMenuOptions,
  });

  final bool? ppOPMenuOptions;

  static String routeName = 'pgOCreateCopy';
  static String routePath = 'pgOVECreat';

  @override
  State<PgOCreateCopyWidget> createState() => _PgOCreateCopyWidgetState();
}

class _PgOCreateCopyWidgetState extends State<PgOCreateCopyWidget> {
  late PgOCreateCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOCreateCopyModel());

    _model.tfRequestedServicesTextController ??= TextEditingController(
        text: FFAppState().stOPSelected.requestedServices);
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
          title: Text(
            FFLocalizations.of(context).getText(
              'zbvg1u2m' /* Nova OS */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: 500.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpOPShowModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpOPShowWidget(
                                cpOPMenuOptions: widget.ppOPMenuOptions!,
                              ),
                            ),
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.cpDropdownUnitsModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownUnitsWidget(
                                      cpHintText: 'Qual Unidade ?',
                                      cpInitialValue:
                                          FFAppState().stOPSelected.unitId,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.cpDropdownAssetsTagsModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownAssetsTagsWidget(
                                      cpHintText: 'Qual Setor ?',
                                      cpInitialValue:
                                          FFAppState().stOPSelected.assetTagId,
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _model
                                        .tfRequestedServicesTextController,
                                    focusNode:
                                        _model.tfRequestedServicesFocusNode,
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
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '0vso2v7u' /* Qual o problema ? */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
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
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 12.0, 0.0, 12.0),
                                      suffixIcon: _model
                                              .tfRequestedServicesTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model
                                                    .tfRequestedServicesTextController
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
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                    maxLines: 5,
                                    minLines: 2,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .tfRequestedServicesTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.none),
                                          );
                                        }),
                                    ],
                                  ),
                                  wrapWithModel(
                                    model: _model.cpDropdownOrdersTypesModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownOrdersTypesWidget(
                                      cpHintText: 'Qual Tipo SS',
                                      cpInitialValue:
                                          FFAppState().stOPSelected.typeId,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model:
                                        _model.cpDdOTypesSubsAvailableMonoModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDdOTypesSubsAvailableMonoWidget(
                                      cpHintText: 'Qual Sub Tipo OS ?',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model:
                                        _model.cpDropdownOrdersPrioritiesModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownOrdersPrioritiesWidget(
                                      cpHintText: 'Qual Prioridade ?',
                                      cpInitialValue:
                                          FFAppState().stOPSelected.priorityId,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.cpDropdownOrdersObjectsModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownOrdersObjectsWidget(
                                      cpHintText: 'Qual Finalidade ?',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.cpDropdownContractsModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpDropdownContractsWidget(
                                      cpHintText: 'Qual Contrato ?',
                                    ),
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.tfRequesterPhoneTextController,
                                    focusNode: _model.tfRequesterPhoneFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.tfRequesterPhoneTextController',
                                      Duration(milliseconds: 2000),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    autofillHints: [AutofillHints.name],
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'dd139hsk' /* Telefone ? */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyLarge,
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
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 12.0, 0.0, 12.0),
                                      suffixIcon: _model
                                              .tfRequesterPhoneTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model
                                                    .tfRequesterPhoneTextController
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
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    keyboardType: TextInputType.number,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .tfRequesterPhoneTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      _model.tfRequesterPhoneMask
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.cpDropdownUnitsModel
                                                      .dropdownUnitsValue ==
                                                  null) {
                                                return;
                                              }
                                              if (_model
                                                      .cpDropdownAssetsTagsModel
                                                      .dropdownAssetTagsValue ==
                                                  null) {
                                                return;
                                              }
                                              if (_model
                                                      .cpDropdownOrdersTypesModel
                                                      .dropdownOrdersTypesValue ==
                                                  null) {
                                                return;
                                              }
                                              if (_model
                                                      .cpDdOTypesSubsAvailableMonoModel
                                                      .ddOTypesSubsAvailableMonoValue ==
                                                  null) {
                                                return;
                                              }
                                              if (_model
                                                      .cpDropdownOrdersPrioritiesModel
                                                      .dropdownOrdersPrioritiesValue ==
                                                  null) {
                                                return;
                                              }
                                              if (_model
                                                      .cpDropdownOrdersObjectsModel
                                                      .dropdownOrdersObjectsValue ==
                                                  null) {
                                                return;
                                              }
                                              if (_model
                                                      .cpDropdownContractsModel
                                                      .dropdownContractsValue ==
                                                  null) {
                                                return;
                                              }
                                              await action_blocks
                                                  .abIsConnected(context);
                                              if (FFAppState().stIsConnected) {
                                                _model.lpsvOChildCounter =
                                                    FFAppState()
                                                            .stOPSelected
                                                            .counterChild +
                                                        1;
                                                safeSetState(() {});
                                                await Future.wait([
                                                  Future(() async {
                                                    await OrdersTable().update(
                                                      data: {
                                                        'counter_child': _model
                                                            .lpsvOChildCounter,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        FFAppState()
                                                            .stOPSelected
                                                            .id,
                                                      ),
                                                    );
                                                  }),
                                                  Future(() async {}),
                                                ]);
                                                await action_blocks
                                                    .abContractSelected(
                                                  context,
                                                  abContractId: _model
                                                      .cpDropdownContractsModel
                                                      .dropdownContractsValue,
                                                );
                                                await action_blocks
                                                    .abUnitSelected(
                                                  context,
                                                  abUnitId: _model
                                                      .cpDropdownUnitsModel
                                                      .dropdownUnitsValue,
                                                );
                                                await Future.wait([
                                                  Future(() async {
                                                    _model.resOrderAdded =
                                                        await OrdersTable()
                                                            .insert({
                                                      'object_id': _model
                                                          .cpDropdownOrdersObjectsModel
                                                          .dropdownOrdersObjectsValue,
                                                      'company_id': FFAppState()
                                                          .stUserCurrent
                                                          .companyId,
                                                      'department_id':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .departmentId,
                                                      'parent_id': FFAppState()
                                                          .stOPSelected
                                                          .id,
                                                      'type_id': _model
                                                          .cpDropdownOrdersTypesModel
                                                          .dropdownOrdersTypesValue,
                                                      'type_sub_id': _model
                                                          .cpDdOTypesSubsAvailableMonoModel
                                                          .ddOTypesSubsAvailableMonoValue,
                                                      'status_id': 2,
                                                      'status_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'unit_id': _model
                                                          .cpDropdownUnitsModel
                                                          .dropdownUnitsValue,
                                                      'system_parent_id':
                                                          FFAppState()
                                                              .stUnitSelected
                                                              .systemParentId,
                                                      'system_id': FFAppState()
                                                          .stUnitSelected
                                                          .systemId,
                                                      'unit_type_parent_id':
                                                          FFAppState()
                                                              .stUnitSelected
                                                              .unitTypeParentId,
                                                      'unit_type_id':
                                                          FFAppState()
                                                              .stUnitSelected
                                                              .unitTypeId,
                                                      'requester_name':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .nameShort,
                                                      'requester_team_id':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .teamId,
                                                      'requester_phone': _model
                                                          .tfRequesterPhoneTextController
                                                          .text,
                                                      'requested_at':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              getCurrentTimestamp),
                                                      'requested_services': _model
                                                          .tfRequestedServicesTextController
                                                          .text,
                                                      'counter_parent':
                                                          FFAppState()
                                                              .stOPSelected
                                                              .counterParent,
                                                      'counter_child': _model
                                                          .lpsvOChildCounter,
                                                      'year': functions
                                                          .cfDateGetYear(
                                                              getCurrentTimestamp),
                                                      'order_mask':
                                                          '${FFAppState().stOPSelected.counterParent.toString()}.${_model.lpsvOChildCounter?.toString()}.${FFAppState().stOPSelected.year.toString()}',
                                                      'priority_id': _model
                                                          .cpDropdownOrdersPrioritiesModel
                                                          .dropdownOrdersPrioritiesValue,
                                                      'unit_latitude':
                                                          FFAppState()
                                                              .stUnitSelected
                                                              .latitude,
                                                      'unit_longitude':
                                                          FFAppState()
                                                              .stUnitSelected
                                                              .longitude,
                                                      'contract_id': _model
                                                          .cpDropdownContractsModel
                                                          .dropdownContractsValue,
                                                      'provider_company_id':
                                                          FFAppState()
                                                              .stContractSelected
                                                              .providerCompanyId,
                                                      'asset_tag_id': _model
                                                          .cpDropdownAssetsTagsModel
                                                          .dropdownAssetTagsValue,
                                                      'created_at': supaSerialize<
                                                              DateTime>(
                                                          getCurrentTimestamp),
                                                      'created_user_id':
                                                          FFAppState()
                                                              .stUserCurrent
                                                              .id,
                                                      'provider_department_id':
                                                          FFAppState()
                                                              .stContractSelected
                                                              .providerDepartmentId,
                                                      'version_mode':
                                                          FFAppState()
                                                              .stAppVersionMode
                                                              ?.name,
                                                    });
                                                    _shouldSetState = true;
                                                    await action_blocks
                                                        .abOSelected(
                                                      context,
                                                      abOId: _model
                                                          .resOrderAdded?.id,
                                                      abIsParent: false,
                                                      abIsNew: true,
                                                    );
                                                    if (FFAppState()
                                                            .stOPSelected
                                                            .statusId ==
                                                        1) {
                                                      await OrdersTable()
                                                          .update(
                                                        data: {
                                                          'status_id': 2,
                                                          'status_at':
                                                              supaSerialize<
                                                                      DateTime>(
                                                                  getCurrentTimestamp),
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
                                                          FFAppState()
                                                              .stOPSelected
                                                              .id,
                                                        ),
                                                      );
                                                      await action_blocks
                                                          .abOSelected(
                                                        context,
                                                        abOId: FFAppState()
                                                            .stOPSelected
                                                            .id,
                                                        abIsParent: true,
                                                        abIsNew: true,
                                                      );
                                                    }
                                                    await action_blocks
                                                        .abOPEvents(
                                                      context,
                                                      abOPId: FFAppState()
                                                          .stOPSelected
                                                          .id,
                                                      abTitle:
                                                          'OS ${FFAppState().stOSelected.orderMask}: Em avaliação.',
                                                      abBody:
                                                          '${FFAppState().stOSelected.unitDescription}\\n${FFAppState().stOSelected.requestedServices}',
                                                      abOId: FFAppState()
                                                          .stOSelected
                                                          .id,
                                                    );
                                                    await action_blocks
                                                        .abOSelected(
                                                      context,
                                                      abOId: FFAppState()
                                                          .stOPSelected
                                                          .id,
                                                      abIsParent: true,
                                                      abIsNew: false,
                                                    );
                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamed(
                                                      PgOPShowWidget.routeName,
                                                      queryParameters: {
                                                        'ppOPMenuOptions':
                                                            serializeParam(
                                                          true,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }),
                                                  Future(() async {
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }),
                                                ]);
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('22'),
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
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'dkunthip' /* CONFIRMAR */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                              elevation: 5.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 6.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
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
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
