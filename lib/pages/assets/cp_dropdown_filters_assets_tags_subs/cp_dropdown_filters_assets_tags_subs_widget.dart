import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_filters_assets_tags_subs_model.dart';
export 'cp_dropdown_filters_assets_tags_subs_model.dart';

class CpDropdownFiltersAssetsTagsSubsWidget extends StatefulWidget {
  const CpDropdownFiltersAssetsTagsSubsWidget({
    super.key,
    this.cpInitialValue,
    required this.cpHintText,
  });

  final List<int>? cpInitialValue;
  final String? cpHintText;

  @override
  State<CpDropdownFiltersAssetsTagsSubsWidget> createState() =>
      _CpDropdownFiltersAssetsTagsSubsWidgetState();
}

class _CpDropdownFiltersAssetsTagsSubsWidgetState
    extends State<CpDropdownFiltersAssetsTagsSubsWidget> {
  late CpDropdownFiltersAssetsTagsSubsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownFiltersAssetsTagsSubsModel());

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
      multiSelectController:
          _model.dropdownFiltersAssetsTagsSubsValueController ??=
              FormListFieldController<int>(
                  _model.dropdownFiltersAssetsTagsSubsValue ??= List<int>.from(
        widget.cpInitialValue ?? [],
      )),
      options: List<int>.from(
          FFAppState().stOfflineAssetsTagsSubs.map((e) => e.id).toList()),
      optionLabels: FFAppState()
          .stOfflineAssetsTagsSubs
          .map((e) => e.description)
          .toList(),
      width: double.infinity,
      height: 48.0,
      searchHintTextStyle: FlutterFlowTheme.of(context).bodyLarge.override(
            font: FlutterFlowTheme.of(context).bodyLarge,
            letterSpacing: 0.0,
          ),
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            font: FlutterFlowTheme.of(context).bodyMedium,
            letterSpacing: 0.0,
          ),
      textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
            font: FlutterFlowTheme.of(context).bodyLarge,
            letterSpacing: 0.0,
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
      isMultiSelect: true,
      onMultiSelectChanged: (val) =>
          safeSetState(() => _model.dropdownFiltersAssetsTagsSubsValue = val),
    );
  }
}
