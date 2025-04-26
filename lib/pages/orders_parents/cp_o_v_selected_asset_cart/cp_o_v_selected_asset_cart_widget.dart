import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/materials/cp_o_v_selected_asset_cart_list_item/cp_o_v_selected_asset_cart_list_item_widget.dart';
import '/pages/materials/cp_o_v_selected_asset_cart_shop_list_item/cp_o_v_selected_asset_cart_shop_list_item_widget.dart';
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_selected_asset_cart_model.dart';
export 'cp_o_v_selected_asset_cart_model.dart';

class CpOVSelectedAssetCartWidget extends StatefulWidget {
  const CpOVSelectedAssetCartWidget({super.key});

  @override
  State<CpOVSelectedAssetCartWidget> createState() =>
      _CpOVSelectedAssetCartWidgetState();
}

class _CpOVSelectedAssetCartWidgetState
    extends State<CpOVSelectedAssetCartWidget> with TickerProviderStateMixin {
  late CpOVSelectedAssetCartModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVSelectedAssetCartModel());

    _model.tfSearchTermsTextController ??= TextEditingController();
    _model.tfSearchTermsFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'bwg6w403' /* Carrinho */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    font: FlutterFlowTheme.of(context).titleLarge,
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: TextFormField(
                  controller: _model.tfSearchTermsTextController,
                  focusNode: _model.tfSearchTermsFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.tfSearchTermsTextController',
                    Duration(milliseconds: 1000),
                    () => safeSetState(() {}),
                  ),
                  autofocus: true,
                  autofillHints: [AutofillHints.name],
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'r2jgyfh8' /* Inclusão Material */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: FlutterFlowTheme.of(context).bodyLarge,
                          letterSpacing: 0.0,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      '8niov5bx' /* Código e/ou descrição */,
                    ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
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
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                    suffixIcon:
                        _model.tfSearchTermsTextController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.tfSearchTermsTextController?.clear();
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
                  validator: _model.tfSearchTermsTextControllerValidator
                      .asValidator(context),
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
              Opacity(
                opacity: _model.tfSearchTermsTextController.text == ''
                    ? 0.5
                    : 1.0,
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 16.0,
                  borderWidth: 6.0,
                  buttonSize: 50.0,
                  icon: FaIcon(
                    FontAwesomeIcons.search,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  showLoadingIndicator: true,
                  onPressed: (_model.tfSearchTermsTextController.text == '')
                      ? null
                      : () async {
                          var _shouldSetState = false;
                          _model.resMaterials = await ApiMaterialsGroup
                              .apiMaterialsSearchableCall
                              .call(
                            apiKey: FFDevEnvironmentValues().envApiKey,
                            accessToken: currentJwtToken,
                            searchTerms:
                                _model.tfSearchTermsTextController.text,
                            versionMode: FFAppState().stAppVersionMode?.name,
                          );

                          _shouldSetState = true;
                          if ((_model.resMaterials?.succeeded ?? true)) {
                            FFAppState().stMaterialsSearchResults =
                                ((_model.resMaterials?.jsonBody ?? '')
                                            .toList()
                                            .map<DtMaterialStruct?>(
                                                DtMaterialStruct.maybeFromMap)
                                            .toList()
                                        as Iterable<DtMaterialStruct?>)
                                    .withoutNulls
                                    .toList()
                                    .cast<DtMaterialStruct>();
                            safeSetState(() {});
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Ops ... Houve um erro em localizar Material.',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (_shouldSetState) safeSetState(() {});
                        },
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: badges.Badge(
                  badgeContent: Text(
                    FFAppState().XstCartMaterialsAmount.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: FFAppState().XstCartMaterialsAmount > 0,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).tertiary,
                  elevation: 4.0,
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: Visibility(
                    visible: FFAppState().XstCartMaterialsAmount > 0,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.shoppingCart,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        context.pushNamed(PgCartShowWidget.routeName);
                      },
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
        Builder(
          builder: (context) {
            final gcMaterials =
                FFAppState().stMaterialsSearchResults.map((e) => e).toList();

            return ListView.separated(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: gcMaterials.length,
              separatorBuilder: (_, __) => SizedBox(height: 12.0),
              itemBuilder: (context, gcMaterialsIndex) {
                final gcMaterialsItem = gcMaterials[gcMaterialsIndex];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: FFAppState()
                              .stRowsSelected
                              .contains(gcMaterialsItem.id)
                          ? FlutterFlowTheme.of(context).primary
                          : Color(0x00000000),
                      width: FFAppState()
                              .stRowsSelected
                              .contains(gcMaterialsItem.id)
                          ? 6.0
                          : 6.0,
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().stRowsSelected = [];
                      safeSetState(() {});
                      FFAppState().addToStRowsSelected(gcMaterialsItem.id);
                      safeSetState(() {});
                    },
                    child: CpOVSelectedAssetCartShopListItemWidget(
                      key: Key(
                          'Keyv6n_${gcMaterialsIndex}_of_${gcMaterials.length}'),
                      cpMaterialDt: gcMaterialsItem,
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation1']!);
              },
            );
          },
        ),
        Builder(
          builder: (context) {
            final gcCartMaterials =
                FFAppState().stCartMaterials.map((e) => e).toList();

            return ListView.separated(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: gcCartMaterials.length,
              separatorBuilder: (_, __) => SizedBox(height: 12.0),
              itemBuilder: (context, gcCartMaterialsIndex) {
                final gcCartMaterialsItem =
                    gcCartMaterials[gcCartMaterialsIndex];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: FFAppState()
                              .stRowsSelected
                              .contains(gcCartMaterialsItem.id)
                          ? FlutterFlowTheme.of(context).primary
                          : Color(0x00000000),
                      width: FFAppState()
                              .stRowsSelected
                              .contains(gcCartMaterialsItem.id)
                          ? 6.0
                          : 6.0,
                    ),
                  ),
                  child: CpOVSelectedAssetCartListItemWidget(
                    key: Key(
                        'Keyrnq_${gcCartMaterialsIndex}_of_${gcCartMaterials.length}'),
                    cpCartMaterialDt: gcCartMaterialsItem,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!);
              },
            );
          },
        ),
      ].divide(SizedBox(height: 10.0)),
    );
  }
}
