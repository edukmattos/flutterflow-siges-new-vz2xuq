import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_input_currency2_decimals_model.dart';
export 'cp_input_currency2_decimals_model.dart';

class CpInputCurrency2DecimalsWidget extends StatefulWidget {
  const CpInputCurrency2DecimalsWidget({
    super.key,
    this.cpInitialValue,
    this.cpLabelText,
  });

  final String? cpInitialValue;
  final String? cpLabelText;

  @override
  State<CpInputCurrency2DecimalsWidget> createState() =>
      _CpInputCurrency2DecimalsWidgetState();
}

class _CpInputCurrency2DecimalsWidgetState
    extends State<CpInputCurrency2DecimalsWidget> {
  late CpInputCurrency2DecimalsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputCurrency2DecimalsModel());

    _model.textController ??=
        TextEditingController(text: widget.cpInitialValue);
    _model.textFieldFocusNode ??= FocusNode();

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
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.textController',
        Duration(milliseconds: 0),
        () async {
          safeSetState(() {
            _model.textController?.text =
                functions.cfConvStringToStringCurrency2Decimals(
                    _model.textController.text, 2);
          });
        },
      ),
      autofocus: false,
      autofillHints: [AutofillHints.name],
      textCapitalization: TextCapitalization.none,
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
        suffixIcon: _model.textController!.text.isNotEmpty
            ? InkWell(
                onTap: () async {
                  _model.textController?.clear();
                  safeSetState(() {
                    _model.textController?.text =
                        functions.cfConvStringToStringCurrency2Decimals(
                            _model.textController.text, 2);
                  });
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
      validator: _model.textControllerValidator.asValidator(context),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
    );
  }
}
