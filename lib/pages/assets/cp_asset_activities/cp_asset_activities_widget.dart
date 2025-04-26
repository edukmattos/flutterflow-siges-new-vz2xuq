import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_asset_activity_list_item/cp_asset_activity_list_item_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_asset_activities_model.dart';
export 'cp_asset_activities_model.dart';

class CpAssetActivitiesWidget extends StatefulWidget {
  const CpAssetActivitiesWidget({super.key});

  @override
  State<CpAssetActivitiesWidget> createState() =>
      _CpAssetActivitiesWidgetState();
}

class _CpAssetActivitiesWidgetState extends State<CpAssetActivitiesWidget> {
  late CpAssetActivitiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetActivitiesModel());

    _model.textController ??= TextEditingController();
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
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'aa0l0ped' /* Intervenções */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: FlutterFlowTheme.of(context).titleLarge,
                      letterSpacing: 0.0,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 200.0,
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textController',
                        Duration(milliseconds: 2000),
                        () => safeSetState(() {}),
                      ),
                      autofocus: true,
                      autofillHints: [AutofillHints.name],
                      textCapitalization: TextCapitalization.none,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'oq4f11lu' /* Pesquisar */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  font: FlutterFlowTheme.of(context).bodyLarge,
                                  letterSpacing: 0.0,
                                ),
                        hintStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              font: FlutterFlowTheme.of(context).labelMedium,
                              letterSpacing: 0.0,
                            ),
                        errorStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
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
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 12.0),
                        suffixIcon: _model.textController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.textController?.clear();
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
                      minLines: 1,
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                      inputFormatters: [
                        if (!isAndroid && !isiOS)
                          TextInputFormatter.withFunction((oldValue, newValue) {
                            return TextEditingValue(
                              selection: newValue.selection,
                              text: newValue.text
                                  .toCapitalization(TextCapitalization.none),
                            );
                          }),
                      ],
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 16.0,
                    borderWidth: 6.0,
                    buttonSize: 50.0,
                    icon: FaIcon(
                      FontAwesomeIcons.search,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      await action_blocks.abAssetSelectedActivities(
                        context,
                        abAssetId: FFAppState().stAssetSelected.id,
                        abSearchTerms: _model.textController.text,
                      );
                    },
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
          Builder(
            builder: (context) {
              final gcOVAssets =
                  FFAppState().stAssetSelectedOVAssets.map((e) => e).toList();

              return ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: gcOVAssets.length,
                separatorBuilder: (_, __) => SizedBox(height: 12.0),
                itemBuilder: (context, gcOVAssetsIndex) {
                  final gcOVAssetsItem = gcOVAssets[gcOVAssetsIndex];
                  return CpAssetActivityListItemWidget(
                    key: Key(
                        'Keyj2t_${gcOVAssetsIndex}_of_${gcOVAssets.length}'),
                    cpOVAssetDt: gcOVAssetsItem,
                  );
                },
              );
            },
          ),
        ].divide(SizedBox(height: 4.0)),
      ),
    );
  }
}
