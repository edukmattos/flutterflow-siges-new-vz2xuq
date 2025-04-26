import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_departments_company/cp_dropdown_departments_company_widget.dart';
import '/pages/components/cp_dropdown_profiles_department/cp_dropdown_profiles_department_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'pg_settings_user_edit_model.dart';
export 'pg_settings_user_edit_model.dart';

class PgSettingsUserEditWidget extends StatefulWidget {
  const PgSettingsUserEditWidget({super.key});

  static String routeName = 'pgSettingsUserEdit';
  static String routePath = 'pgSettingsUserEdit';

  @override
  State<PgSettingsUserEditWidget> createState() =>
      _PgSettingsUserEditWidgetState();
}

class _PgSettingsUserEditWidgetState extends State<PgSettingsUserEditWidget> {
  late PgSettingsUserEditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgSettingsUserEditModel());

    _model.tfUserNameFullTextController ??=
        TextEditingController(text: FFAppState().stUserSelected.nameFull);
    _model.tfUserNameFullFocusNode ??= FocusNode();

    _model.tfUserNameShortTextController ??=
        TextEditingController(text: FFAppState().stUserSelected.nameShort);
    _model.tfUserNameShortFocusNode ??= FocusNode();

    _model.tfUserPhoneTextController ??=
        TextEditingController(text: FFAppState().stUserSelected.mobileMask);
    _model.tfUserPhoneFocusNode ??= FocusNode();

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
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '8ai0xyfa' /* Usuário */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
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
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                constraints: BoxConstraints(
                  minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                  maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                ),
                decoration: BoxDecoration(),
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {},
                                child: wrapWithModel(
                                  model: _model.cpUserPicProfileModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpUserPicProfileWidget(
                                    cpSize: 90,
                                    imgUrl:
                                        '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stUserSelected.imgFilePath}/${FFAppState().stUserSelected.imgFileName}',
                                    toolTip:
                                        FFAppState().stUserSelected.nameShort,
                                    isAvailable: false,
                                    isOrderVisitIdInProgress: false,
                                    displayAvailable: false,
                                    cpBorderWidth: 0,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFAppState().stUserSelected.nameFull,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .titleLarge,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          FFAppState().stUserSelected.email,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cpDropdownDepartmentsCompanyModel,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: CpDropdownDepartmentsCompanyWidget(
                            cpCompanyId: FFAppState().stUserSelected.companyId,
                            cpInitialValue:
                                FFAppState().stUserSelected.departmentId,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cpDropdownTeamsDepartmentModel,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: CpDropdownTeamsDepartmentWidget(
                            cpDepartmentId: _model
                                .cpDropdownDepartmentsCompanyModel
                                .dropdownDepartmentsCompanyValue!,
                            cpHintText: 'Equipe',
                            cpInitialValue: FFAppState().stUserSelected.teamId,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cpDropdownProfilesDepartmentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpDropdownProfilesDepartmentWidget(
                            cpDepartmentId: _model
                                .cpDropdownDepartmentsCompanyModel
                                .dropdownDepartmentsCompanyValue!,
                            cpHintText: 'Perfil',
                            cpInitialValue:
                                FFAppState().stUserSelected.profileId,
                          ),
                        ),
                        TextFormField(
                          controller: _model.tfUserNameFullTextController,
                          focusNode: _model.tfUserNameFullFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.tfUserNameFullTextController',
                            Duration(milliseconds: 2000),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          autofillHints: [AutofillHints.name],
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'sntxryfe' /* Nome completo */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  letterSpacing: 0.0,
                                ),
                            errorStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 12.0),
                            suffixIcon: _model.tfUserNameFullTextController!
                                    .text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.tfUserNameFullTextController
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
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model
                              .tfUserNameFullTextControllerValidator
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
                        TextFormField(
                          controller: _model.tfUserNameShortTextController,
                          focusNode: _model.tfUserNameShortFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.tfUserNameShortTextController',
                            Duration(milliseconds: 2000),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          autofillHints: [AutofillHints.name],
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'rfn5r18q' /* Apelido */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  letterSpacing: 0.0,
                                ),
                            errorStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 12.0),
                            suffixIcon: _model.tfUserNameShortTextController!
                                    .text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.tfUserNameShortTextController
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
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model
                              .tfUserNameShortTextControllerValidator
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
                        TextFormField(
                          controller: _model.tfUserPhoneTextController,
                          focusNode: _model.tfUserPhoneFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.tfUserPhoneTextController',
                            Duration(milliseconds: 2000),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          autofillHints: [AutofillHints.name],
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '80lk2nnx' /* Celular */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  letterSpacing: 0.0,
                                ),
                            errorStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 12.0),
                            suffixIcon: _model
                                    .tfUserPhoneTextController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.tfUserPhoneTextController?.clear();
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
                          keyboardType: TextInputType.number,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.tfUserPhoneTextControllerValidator
                              .asValidator(context),
                          inputFormatters: [_model.tfUserPhoneMask],
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (functions.cfIsMobile(
                                      _model.tfUserPhoneTextController.text)) {
                                    _model.resMobileFormats =
                                        await actions.caMobileFormats(
                                      _model.tfUserPhoneTextController.text,
                                    );
                                    await UsersTable().update(
                                      data: {
                                        'team_id': _model
                                            .cpDropdownTeamsDepartmentModel
                                            .dropdownTeamsDepartmentValue,
                                        'profile_id': _model
                                            .cpDropdownProfilesDepartmentModel
                                            .dropdownProfilesDepartmentValue,
                                        'name_full': _model
                                            .tfUserNameFullTextController.text,
                                        'name_short': _model
                                            .tfUserNameShortTextController.text,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        FFAppState().stUserSelected.id,
                                      ),
                                    );
                                    await UsersTable().update(
                                      data: {
                                        'mobile_mask': _model
                                            .tfUserPhoneTextController.text,
                                        'mobile_full': _model.resMobileFormats
                                            ?.elementAtOrNull(0),
                                        'mobile': _model.resMobileFormats
                                            ?.elementAtOrNull(2),
                                        'mobile_whatsapp': _model
                                            .resMobileFormats
                                            ?.elementAtOrNull(1),
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        FFAppState().stUserSelected.id,
                                      ),
                                    );
                                  } else {
                                    await UsersTable().update(
                                      data: {
                                        'team_id': _model
                                            .cpDropdownTeamsDepartmentModel
                                            .dropdownTeamsDepartmentValue,
                                        'profile_id': _model
                                            .cpDropdownProfilesDepartmentModel
                                            .dropdownProfilesDepartmentValue,
                                        'name_full': _model
                                            .tfUserNameFullTextController.text,
                                        'name_short': _model
                                            .tfUserNameShortTextController.text,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        FFAppState().stUserSelected.id,
                                      ),
                                    );
                                  }

                                  await action_blocks.abUserSelected(
                                    context,
                                    abUserId: FFAppState().stUserSelected.id,
                                  );
                                  if (Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                  context.pushNamed(
                                      PgSettingsCompanyContractAccessesWidget
                                          .routeName);

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'bbye92kz' /* ALTERAR */,
                                ),
                                options: FFButtonOptions(
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 6.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
