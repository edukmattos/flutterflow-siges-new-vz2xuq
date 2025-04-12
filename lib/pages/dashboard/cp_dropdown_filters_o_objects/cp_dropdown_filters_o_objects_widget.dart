import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_filters_o_objects_model.dart';
export 'cp_dropdown_filters_o_objects_model.dart';

class CpDropdownFiltersOObjectsWidget extends StatefulWidget {
  const CpDropdownFiltersOObjectsWidget({
    super.key,
    this.cpInitialValue,
  });

  final List<int>? cpInitialValue;

  @override
  State<CpDropdownFiltersOObjectsWidget> createState() =>
      _CpDropdownFiltersOObjectsWidgetState();
}

class _CpDropdownFiltersOObjectsWidgetState
    extends State<CpDropdownFiltersOObjectsWidget> {
  late CpDropdownFiltersOObjectsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownFiltersOObjectsModel());

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
      multiSelectController: _model.dropdownFiltersOObjectsValueController ??=
          FormListFieldController<int>(
              _model.dropdownFiltersOObjectsValue ??= List<int>.from(
        FFAppState().stFiltersServices.ordersObjects ?? [],
      )),
      options: List<int>.from(
          FFAppState().stOfflineOObjetcs.map((e) => e.id).toList()),
      optionLabels:
          FFAppState().stOfflineOObjetcs.map((e) => e.description).toList(),
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
        'k282966s' /* Finalidades */,
      ),
      searchHintText: FFLocalizations.of(context).getText(
        'j3jrmosh' /* Finalidades */,
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
      isMultiSelect: true,
      onMultiSelectChanged: (val) =>
          safeSetState(() => _model.dropdownFiltersOObjectsValue = val),
    );
  }
}
