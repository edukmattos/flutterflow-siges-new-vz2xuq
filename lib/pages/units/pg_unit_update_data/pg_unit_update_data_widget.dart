import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_systems_by_parent/cp_dropdown_systems_by_parent_widget.dart';
import '/pages/components/cp_dropdown_systems_parent/cp_dropdown_systems_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_by_parent/cp_dropdown_units_types_by_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_parent/cp_dropdown_units_types_parent_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_dropdown_units_statuses/cp_dropdown_units_statuses_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_unit_update_data_model.dart';
export 'pg_unit_update_data_model.dart';

class PgUnitUpdateDataWidget extends StatefulWidget {
  const PgUnitUpdateDataWidget({super.key});

  static String routeName = 'pgUnitUpdateData';
  static String routePath = 'pgUnitUpdateData';

  @override
  State<PgUnitUpdateDataWidget> createState() => _PgUnitUpdateDataWidgetState();
}

class _PgUnitUpdateDataWidgetState extends State<PgUnitUpdateDataWidget> {
  late PgUnitUpdateDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitUpdateDataModel());

    _model.tfCodeTextController ??=
        TextEditingController(text: FFAppState().stUnitSelected.code);
    _model.tfCodeFocusNode ??= FocusNode();

    _model.tfDescriptionTextController ??=
        TextEditingController(text: FFAppState().stUnitSelected.description);
    _model.tfDescriptionFocusNode ??= FocusNode();

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
          title: Text(
            FFLocalizations.of(context).getText(
              'gxwc0hgt' /* Unidade */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              constraints: BoxConstraints(
                minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.cpUnitCardShowModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpUnitCardShowWidget(),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'arnkxlmt' /* Editar Dados */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .headlineMediumFamily),
                            ),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpDropdownSystemsParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownSystemsParentWidget(
                                cpHintText: 'Sistema ?',
                                cpInitialValue:
                                    FFAppState().stUnitSelected.systemParentId,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownSystemsByParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownSystemsByParentWidget(
                                cpHintText: 'Sub Sistema ?',
                                cpInitialValue:
                                    FFAppState().stUnitSelected.systemId,
                                cpParentId: _model.cpDropdownSystemsParentModel
                                    .dropdownSystemsValue,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownUnitsTypesParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownUnitsTypesParentWidget(
                                cpHintText: 'Tipo ?',
                                cpInitialValue: FFAppState()
                                    .stUnitSelected
                                    .unitTypeParentId,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownUnitsTypesByParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownUnitsTypesByParentWidget(
                                cpHintText: 'Sub Tipo ?',
                                cpInitialValue:
                                    FFAppState().stUnitSelected.unitTypeId,
                                cpParentId: _model
                                    .cpDropdownUnitsTypesParentModel
                                    .dropdownUnitsTypesParentValue,
                              ),
                            ),
                            TextFormField(
                              controller: _model.tfCodeTextController,
                              focusNode: _model.tfCodeFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.tfCodeTextController',
                                Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              autofillHints: [AutofillHints.name],
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'liyecad5' /* Código ? */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                        .tfCodeTextController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.tfCodeTextController?.clear();
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
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              minLines: 1,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.tfCodeTextControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.tfDescriptionTextController,
                              focusNode: _model.tfDescriptionFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.tfDescriptionTextController',
                                Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              autofillHints: [AutofillHints.name],
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'j13laz38' /* Descrição ? */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                suffixIcon: _model.tfDescriptionTextController!
                                        .text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.tfDescriptionTextController
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
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              minLines: 1,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model
                                  .tfDescriptionTextControllerValidator
                                  .asValidator(context),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownUnitsStatusesModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownUnitsStatusesWidget(
                                cpHintText: 'Situação ?',
                                cpInitialValue:
                                    FFAppState().stUnitSelected.statusId,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.cpDropdownSystemsParentModel
                                            .dropdownSystemsValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content:
                                                Text('Informar o Sistema.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownSystemsByParentModel
                                            .dropdownSystemsByParentValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content:
                                                Text('Informar o Sub Sistema.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownUnitsTypesParentModel
                                            .dropdownUnitsTypesParentValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Informar o Tipo da Unidade.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownUnitsTypesByParentModel
                                            .dropdownUnitsTypesByParentValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Informar o Sub Tipo da Unidade.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownUnitsStatusesModel
                                            .dropdownUnitsStatusesValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content:
                                                Text('Informar a Situação.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    await ApiUnitsGroup.apiUnitUpdateDataCall
                                        .call(
                                      apiKey:
                                          FFDevEnvironmentValues().envApiKey,
                                      accessToken: currentJwtToken,
                                      unitId: FFAppState().stUnitSelected.id,
                                      code: _model.tfCodeTextController.text,
                                      systemId: _model
                                          .cpDropdownSystemsByParentModel
                                          .dropdownSystemsByParentValue,
                                      systemParentId: _model
                                          .cpDropdownSystemsParentModel
                                          .dropdownSystemsValue,
                                      unitTypeParentId: _model
                                          .cpDropdownUnitsTypesParentModel
                                          .dropdownUnitsTypesParentValue,
                                      unitTypeId: _model
                                          .cpDropdownUnitsTypesByParentModel
                                          .dropdownUnitsTypesByParentValue,
                                      statusId: _model
                                          .cpDropdownUnitsStatusesModel
                                          .dropdownUnitsStatusesValue,
                                      description: _model
                                          .tfDescriptionTextController.text,
                                      updatedUserId:
                                          FFAppState().stUserCurrent.id,
                                      updatedAt: getCurrentTimestamp.toString(),
                                    );

                                    await action_blocks.abVersionOfflineUpdates(
                                      context,
                                      tableName: 'units',
                                      versionOffline: getCurrentTimestamp
                                          .secondsSinceEpoch
                                          .toString(),
                                    );
                                    safeSetState(() {});
                                    FFAppState().updateStUnitSelectedStruct(
                                      (e) => e
                                        ..systemParentId = _model
                                            .cpDropdownSystemsParentModel
                                            .dropdownSystemsValue
                                        ..systemParentCode = functions
                                            .cfDtSystem(
                                                _model
                                                    .cpDropdownSystemsParentModel
                                                    .dropdownSystemsValue!,
                                                FFAppState()
                                                    .stOfflineSystemsParent
                                                    .toList())
                                            .code
                                        ..systemParentDescription = functions
                                            .cfDtSystem(
                                                _model
                                                    .cpDropdownSystemsParentModel
                                                    .dropdownSystemsValue!,
                                                FFAppState()
                                                    .stOfflineSystemsParent
                                                    .toList())
                                            .description
                                        ..systemId = _model
                                            .cpDropdownSystemsByParentModel
                                            .dropdownSystemsByParentValue
                                        ..systemChildCode = functions
                                            .cfDtSystem(
                                                _model
                                                    .cpDropdownSystemsByParentModel
                                                    .dropdownSystemsByParentValue!,
                                                FFAppState()
                                                    .stOfflineSystems
                                                    .toList())
                                            .code
                                        ..systemChildDescription = functions
                                            .cfDtSystem(
                                                _model
                                                    .cpDropdownSystemsByParentModel
                                                    .dropdownSystemsByParentValue!,
                                                FFAppState()
                                                    .stOfflineSystems
                                                    .toList())
                                            .description
                                        ..unitTypeParentId = _model
                                            .cpDropdownUnitsTypesParentModel
                                            .dropdownUnitsTypesParentValue
                                        ..unitTypeParentCode = functions
                                            .cfDtUnitType(
                                                _model
                                                    .cpDropdownUnitsTypesParentModel
                                                    .dropdownUnitsTypesParentValue!,
                                                FFAppState()
                                                    .stOfflineUnitsTypesParent
                                                    .toList())
                                            .code
                                        ..unitTypeParentDescription = functions
                                            .cfDtUnitType(
                                                _model
                                                    .cpDropdownUnitsTypesParentModel
                                                    .dropdownUnitsTypesParentValue!,
                                                FFAppState()
                                                    .stOfflineUnitsTypesParent
                                                    .toList())
                                            .description
                                        ..unitTypeId = _model
                                            .cpDropdownUnitsTypesByParentModel
                                            .dropdownUnitsTypesByParentValue
                                        ..unitTypeChildCode = functions
                                            .cfDtUnitType(
                                                _model
                                                    .cpDropdownUnitsTypesByParentModel
                                                    .dropdownUnitsTypesByParentValue!,
                                                FFAppState()
                                                    .stOfflineUnitsTypes
                                                    .toList())
                                            .code
                                        ..unitTypeChildDescription = functions
                                            .cfDtUnitType(
                                                _model
                                                    .cpDropdownUnitsTypesByParentModel
                                                    .dropdownUnitsTypesByParentValue!,
                                                FFAppState()
                                                    .stOfflineUnitsTypes
                                                    .toList())
                                            .code
                                        ..code =
                                            _model.tfCodeTextController.text
                                        ..description = _model
                                            .tfDescriptionTextController.text
                                        ..descriptionFull =
                                            '${_model.tfCodeTextController.text} - ${functions.cfDtUnitType(_model.cpDropdownUnitsTypesByParentModel.dropdownUnitsTypesByParentValue!, FFAppState().stOfflineUnitsTypes.toList()).code} ${_model.tfDescriptionTextController.text}'
                                        ..statusId = _model
                                            .cpDropdownUnitsStatusesModel
                                            .dropdownUnitsStatusesValue
                                        ..statusDescription = functions
                                            .cfDtUnitStatus(
                                                _model
                                                    .cpDropdownUnitsStatusesModel
                                                    .dropdownUnitsStatusesValue!,
                                                FFAppState()
                                                    .stOfflineUnitsStatuses
                                                    .toList())
                                            .description,
                                    );
                                    safeSetState(() {});
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context
                                        .pushNamed(PgUnitShowWidget.routeName);
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'jc9cw8db' /* CONFIRMAR */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 5.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 6.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
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
