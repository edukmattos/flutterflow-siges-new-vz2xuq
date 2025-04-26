import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_dropdown_o_close_statuses_model.dart';
export 'cp_dropdown_o_close_statuses_model.dart';

class CpDropdownOCloseStatusesWidget extends StatefulWidget {
  const CpDropdownOCloseStatusesWidget({
    super.key,
    this.cpHintText,
    this.cpInitialValue,
  });

  final String? cpHintText;
  final int? cpInitialValue;

  @override
  State<CpDropdownOCloseStatusesWidget> createState() =>
      _CpDropdownOCloseStatusesWidgetState();
}

class _CpDropdownOCloseStatusesWidgetState
    extends State<CpDropdownOCloseStatusesWidget> {
  late CpDropdownOCloseStatusesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownOCloseStatusesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<int>(
      controller: _model.dropdownOCloseStatusesValueController ??=
          FormFieldController<int>(
        _model.dropdownOCloseStatusesValue ??= 6,
      ),
      options: List<int>.from([6, 8]),
      optionLabels: [
        FFLocalizations.of(context).getText(
          'licllezq' /* Suspensa */,
        ),
        FFLocalizations.of(context).getText(
          'ht92b985' /* Concluída */,
        )
      ],
      onChanged: (val) =>
          safeSetState(() => _model.dropdownOCloseStatusesValue = val),
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
      isMultiSelect: false,
    );
  }
}
