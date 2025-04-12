import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_input_password_model.dart';
export 'cp_input_password_model.dart';

class CpInputPasswordWidget extends StatefulWidget {
  const CpInputPasswordWidget({
    super.key,
    this.cpLabelText,
  });

  final String? cpLabelText;

  @override
  State<CpInputPasswordWidget> createState() => _CpInputPasswordWidgetState();
}

class _CpInputPasswordWidgetState extends State<CpInputPasswordWidget> {
  late CpInputPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputPasswordModel());

    _model.inputPasswordTextController ??= TextEditingController();
    _model.inputPasswordFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextFormField(
        controller: _model.inputPasswordTextController,
        focusNode: _model.inputPasswordFocusNode,
        autofocus: true,
        autofillHints: [AutofillHints.password],
        obscureText: !_model.inputPasswordVisibility,
        decoration: InputDecoration(
          labelText: widget.cpLabelText,
          labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
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
          suffixIcon: InkWell(
            onTap: () => safeSetState(
              () => _model.inputPasswordVisibility =
                  !_model.inputPasswordVisibility,
            ),
            focusNode: FocusNode(skipTraversal: true),
            child: Icon(
              _model.inputPasswordVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyLarge.override(
              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
            ),
        cursorColor: FlutterFlowTheme.of(context).primary,
        validator:
            _model.inputPasswordTextControllerValidator.asValidator(context),
      ),
    );
  }
}
