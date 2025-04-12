import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_users_department_model.dart';
export 'cp_dropdown_users_department_model.dart';

class CpDropdownUsersDepartmentWidget extends StatefulWidget {
  const CpDropdownUsersDepartmentWidget({
    super.key,
    required this.cpDepartmentId,
    required this.cpHintText,
  });

  final int? cpDepartmentId;
  final String? cpHintText;

  @override
  State<CpDropdownUsersDepartmentWidget> createState() =>
      _CpDropdownUsersDepartmentWidgetState();
}

class _CpDropdownUsersDepartmentWidgetState
    extends State<CpDropdownUsersDepartmentWidget> {
  late CpDropdownUsersDepartmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownUsersDepartmentModel());

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

    return FutureBuilder<List<VUsersRow>>(
      future: VUsersTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'department_id',
              FFAppState().stUserCurrent.departmentId,
            )
            .neqOrNull(
              'id',
              FFAppState().stUserCurrent.id,
            )
            .eqOrNull(
              'status_id',
              2,
            )
            .order('name_short', ascending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<VUsersRow> dropdownUsersDepartmentVUsersRowList = snapshot.data!;

        return FlutterFlowDropDown<int>(
          controller: _model.dropdownUsersDepartmentValueController ??=
              FormFieldController<int>(null),
          options: List<int>.from(dropdownUsersDepartmentVUsersRowList
              .map((e) => e.id)
              .withoutNulls
              .toList()),
          optionLabels: dropdownUsersDepartmentVUsersRowList
              .map((e) => e.nameShort)
              .withoutNulls
              .toList(),
          onChanged: (val) =>
              safeSetState(() => _model.dropdownUsersDepartmentValue = val),
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
          hintText: widget.cpHintText,
          searchHintText: widget.cpHintText,
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
      },
    );
  }
}
