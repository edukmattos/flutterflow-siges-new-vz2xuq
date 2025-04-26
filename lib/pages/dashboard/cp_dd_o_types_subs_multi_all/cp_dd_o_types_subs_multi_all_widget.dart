import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_dd_o_types_subs_multi_all_model.dart';
export 'cp_dd_o_types_subs_multi_all_model.dart';

class CpDdOTypesSubsMultiAllWidget extends StatefulWidget {
  const CpDdOTypesSubsMultiAllWidget({
    super.key,
    this.cpInitialValue,
  });

  final List<int>? cpInitialValue;

  @override
  State<CpDdOTypesSubsMultiAllWidget> createState() =>
      _CpDdOTypesSubsMultiAllWidgetState();
}

class _CpDdOTypesSubsMultiAllWidgetState
    extends State<CpDdOTypesSubsMultiAllWidget> {
  late CpDdOTypesSubsMultiAllModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDdOTypesSubsMultiAllModel());

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
      multiSelectController: _model.ddOTypesSubsMultiAllValueController ??=
          FormListFieldController<int>(
              _model.ddOTypesSubsMultiAllValue ??= List<int>.from(
        FFAppState().stFiltersServices.ordersTypesSubs ?? [],
      )),
      options: List<int>.from(FFAppState()
          .stOfflineOTypesSubs
          .sortedList(keyOf: (e) => e.description, desc: false)
          .map((e) => e.id)
          .toList()),
      optionLabels: FFAppState()
          .stOfflineOTypesSubs
          .sortedList(keyOf: (e) => e.description, desc: false)
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
      hintText: FFLocalizations.of(context).getText(
        'mgy5m83a' /* Sub Tipos OS's */,
      ),
      searchHintText: FFLocalizations.of(context).getText(
        'zoz9aho0' /* Sub Tipos OS's */,
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
          safeSetState(() => _model.ddOTypesSubsMultiAllValue = val),
    );
  }
}
