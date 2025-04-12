import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_input_integer_model.dart';
export 'cp_input_integer_model.dart';

class CpInputIntegerWidget extends StatefulWidget {
  const CpInputIntegerWidget({
    super.key,
    String? cpInitialValue,
    this.cpLabelText,
    bool? cpIsReadOnly,
  })  : this.cpInitialValue = cpInitialValue ?? '',
        this.cpIsReadOnly = cpIsReadOnly ?? false;

  final String cpInitialValue;
  final String? cpLabelText;
  final bool cpIsReadOnly;

  @override
  State<CpInputIntegerWidget> createState() => _CpInputIntegerWidgetState();
}

class _CpInputIntegerWidgetState extends State<CpInputIntegerWidget> {
  late CpInputIntegerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputIntegerModel());

    _model.inputTextTextController ??=
        TextEditingController(text: widget.cpInitialValue);
    _model.inputTextFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.inputTextTextController,
      focusNode: _model.inputTextFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.inputTextTextController',
        Duration(milliseconds: 2000),
        () => safeSetState(() {}),
      ),
      autofocus: false,
      autofillHints: [AutofillHints.name],
      textCapitalization: TextCapitalization.none,
      readOnly: widget.cpIsReadOnly,
      obscureText: false,
      decoration: InputDecoration(
        labelText: widget.cpLabelText,
        labelStyle: FlutterFlowTheme.of(context).bodyLarge.override(
              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
            ),
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
            ),
        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: FlutterFlowTheme.of(context).error,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
        fillColor: FlutterFlowTheme.of(context).primaryBackground,
        contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
        suffixIcon: _model.inputTextTextController!.text.isNotEmpty
            ? InkWell(
                onTap: () async {
                  _model.inputTextTextController?.clear();
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
      style: FlutterFlowTheme.of(context).bodyLarge.override(
            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
          ),
      minLines: 1,
      keyboardType: TextInputType.number,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.inputTextTextControllerValidator.asValidator(context),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
    );
  }
}
