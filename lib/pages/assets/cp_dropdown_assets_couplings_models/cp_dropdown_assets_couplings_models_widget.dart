import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_assets_couplings_models_model.dart';
export 'cp_dropdown_assets_couplings_models_model.dart';

class CpDropdownAssetsCouplingsModelsWidget extends StatefulWidget {
  const CpDropdownAssetsCouplingsModelsWidget({
    super.key,
    this.cpHintText,
    this.cpInitialValue,
  });

  final String? cpHintText;
  final int? cpInitialValue;

  @override
  State<CpDropdownAssetsCouplingsModelsWidget> createState() =>
      _CpDropdownAssetsCouplingsModelsWidgetState();
}

class _CpDropdownAssetsCouplingsModelsWidgetState
    extends State<CpDropdownAssetsCouplingsModelsWidget> {
  late CpDropdownAssetsCouplingsModelsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownAssetsCouplingsModelsModel());

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
      controller: _model.dropdownAssetsCouplingsModelsValueController ??=
          FormFieldController<int>(
        _model.dropdownAssetsCouplingsModelsValue ??= widget.cpInitialValue,
      ),
      options: List<int>.from(FFAppState()
          .stOfflineAssetsCouplingsModels
          .map((e) => e.id)
          .toList()),
      optionLabels: FFAppState()
          .stOfflineAssetsCouplingsModels
          .map((e) => e.description)
          .toList(),
      onChanged: (val) =>
          safeSetState(() => _model.dropdownAssetsCouplingsModelsValue = val),
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
  }
}
