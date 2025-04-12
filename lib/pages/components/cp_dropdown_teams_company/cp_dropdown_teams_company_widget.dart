import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_teams_company_model.dart';
export 'cp_dropdown_teams_company_model.dart';

class CpDropdownTeamsCompanyWidget extends StatefulWidget {
  const CpDropdownTeamsCompanyWidget({
    super.key,
    required this.cpCompanyId,
  });

  final int? cpCompanyId;

  @override
  State<CpDropdownTeamsCompanyWidget> createState() =>
      _CpDropdownTeamsCompanyWidgetState();
}

class _CpDropdownTeamsCompanyWidgetState
    extends State<CpDropdownTeamsCompanyWidget> {
  late CpDropdownTeamsCompanyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownTeamsCompanyModel());

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

    return FlutterFlowDropDown<int>(
      controller: _model.dropdownTeamsCompanyValueController ??=
          FormFieldController<int>(
        _model.dropdownTeamsCompanyValue ??= 0,
      ),
      options: List<int>.from(FFAppState()
          .stOfflineTeams
          .where((e) => e.companyId == widget.cpCompanyId)
          .toList()
          .map((e) => e.id)
          .toList()),
      optionLabels: FFAppState()
          .stOfflineTeams
          .where((e) => e.companyId == widget.cpCompanyId)
          .toList()
          .map((e) => e.code)
          .toList(),
      onChanged: (val) =>
          safeSetState(() => _model.dropdownTeamsCompanyValue = val),
      width: double.infinity,
      height: 48.0,
      searchHintTextStyle: FlutterFlowTheme.of(context).bodyLarge.override(
            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
          ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
          ),
      textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
          ),
      hintText: FFLocalizations.of(context).getText(
        'bfowgoo8' /* Equipe */,
      ),
      searchHintText: FFLocalizations.of(context).getText(
        '1ybep3bg' /* Equipe */,
      ),
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).primaryBackground,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderWidth: 2.0,
      borderRadius: 12.0,
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
    );
  }
}
