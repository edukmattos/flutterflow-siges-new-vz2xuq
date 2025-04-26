import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cp_input_text_model.dart';
export 'cp_input_text_model.dart';

class CpInputTextWidget extends StatefulWidget {
  const CpInputTextWidget({
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
  State<CpInputTextWidget> createState() => _CpInputTextWidgetState();
}

class _CpInputTextWidgetState extends State<CpInputTextWidget> {
  late CpInputTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputTextModel());

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
              font: FlutterFlowTheme.of(context).bodyLarge,
              letterSpacing: 0.0,
            ),
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              font: FlutterFlowTheme.of(context).labelMedium,
              letterSpacing: 0.0,
            ),
        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              font: FlutterFlowTheme.of(context).bodyMedium,
              color: FlutterFlowTheme.of(context).error,
              letterSpacing: 0.0,
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
            font: FlutterFlowTheme.of(context).bodyLarge,
            letterSpacing: 0.0,
          ),
      maxLines: 10,
      minLines: 1,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.inputTextTextControllerValidator.asValidator(context),
      inputFormatters: [
        if (!isAndroid && !isiOS)
          TextInputFormatter.withFunction((oldValue, newValue) {
            return TextEditingValue(
              selection: newValue.selection,
              text: newValue.text.toCapitalization(TextCapitalization.none),
            );
          }),
      ],
    );
  }
}
