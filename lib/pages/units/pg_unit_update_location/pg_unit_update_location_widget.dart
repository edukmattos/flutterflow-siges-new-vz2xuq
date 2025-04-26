import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'pg_unit_update_location_model.dart';
export 'pg_unit_update_location_model.dart';

class PgUnitUpdateLocationWidget extends StatefulWidget {
  const PgUnitUpdateLocationWidget({super.key});

  static String routeName = 'pgUnitUpdateLocation';
  static String routePath = 'pgUnitUpdateLocation';

  @override
  State<PgUnitUpdateLocationWidget> createState() =>
      _PgUnitUpdateLocationWidgetState();
}

class _PgUnitUpdateLocationWidgetState
    extends State<PgUnitUpdateLocationWidget> {
  late PgUnitUpdateLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitUpdateLocationModel());

    _model.tfStreetComplementTextController ??= TextEditingController();
    _model.tfStreetComplementFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<date_picker_fey059_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => safeSetState(() {}),
            child: CpMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'fl7394ag' /* Unidade */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: FlutterFlowTheme.of(context).headlineMedium,
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SafeArea(
              child: Container(
                constraints: BoxConstraints(
                  minWidth: FFAppConstants.cfgPgWidthMin.toDouble(),
                  maxWidth: FFAppConstants.cfgPgWidthMax.toDouble(),
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.cpUnitCardShowModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpUnitCardShowWidget(),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'rnxd958u' /* Editar Endereço */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .headlineMedium,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: FlutterFlowPlacePicker(
                                        iOSGoogleMapsApiKey:
                                            'AIzaSyCZrBD_WSetbFmAv2tfcZkipnq-MCYJmrk',
                                        androidGoogleMapsApiKey:
                                            'AIzaSyCbsZ2PcNw5kjYVDCiIm_qV5ExRdVKdZ0M',
                                        webGoogleMapsApiKey:
                                            'AIzaSyBzR7-sVE8N-9oL3sdRQa9v0i-Z1XbR1gk',
                                        onSelect: (place) async {
                                          safeSetState(() =>
                                              _model.placePickerValue = place);
                                          (await _model
                                                  .googleMapsController.future)
                                              .animateCamera(
                                                  CameraUpdate.newLatLng(place
                                                      .latLng
                                                      .toGoogleMaps()));
                                        },
                                        defaultText:
                                            FFLocalizations.of(context).getText(
                                          'o5bdmmk8' /* Informe o novo endereço */,
                                        ),
                                        icon: Icon(
                                          Icons.place,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 16.0,
                                        ),
                                        buttonOptions: FFButtonOptions(
                                          width: 200.0,
                                          height: 50.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.placePickerValue.address,
                                            '.',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (isAndroid)
                                      Expanded(
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            currentUserLocationValue =
                                                await getCurrentUserLocation(
                                                    defaultLocation:
                                                        LatLng(0.0, 0.0));
                                            await _model
                                                .googleMapsController.future
                                                .then(
                                              (c) => c.animateCamera(
                                                CameraUpdate.newLatLng(
                                                    currentUserLocationValue!
                                                        .toGoogleMaps()),
                                              ),
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '7qimdl37' /* Minha Localização */,
                                          ),
                                          icon: Icon(
                                            Icons.center_focus_weak,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 22.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 200.0,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall,
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                TextFormField(
                                  controller:
                                      _model.tfStreetComplementTextController,
                                  focusNode: _model.tfStreetComplementFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.tfStreetComplementTextController',
                                    Duration(milliseconds: 2000),
                                    () => safeSetState(() {}),
                                  ),
                                  autofocus: false,
                                  autofillHints: [AutofillHints.name],
                                  textCapitalization: TextCapitalization.none,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '3yr73nlj' /* Complemento */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                          letterSpacing: 0.0,
                                        ),
                                    errorStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 0.0, 12.0),
                                    suffixIcon: _model
                                            .tfStreetComplementTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model
                                                  .tfStreetComplementTextController
                                                  ?.clear();
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
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                        letterSpacing: 0.0,
                                      ),
                                  minLines: 1,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .tfStreetComplementTextControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    if (!isAndroid && !isiOS)
                                      TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                        return TextEditingValue(
                                          selection: newValue.selection,
                                          text: newValue.text.toCapitalization(
                                              TextCapitalization.none),
                                        );
                                      }),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 362.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
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
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            FlutterFlowGoogleMap(
                                              controller:
                                                  _model.googleMapsController,
                                              onCameraIdle: (latLng) => _model
                                                  .googleMapsCenter = latLng,
                                              initialLocation:
                                                  _model.googleMapsCenter ??=
                                                      _model.placePickerValue
                                                          .latLng,
                                              markerColor:
                                                  GoogleMarkerColor.violet,
                                              mapType: MapType.normal,
                                              style: GoogleMapStyle.standard,
                                              initialZoom: 18.0,
                                              allowInteraction: true,
                                              allowZoom: true,
                                              showZoomControls: true,
                                              showLocation: false,
                                              showCompass: true,
                                              showMapToolbar: true,
                                              showTraffic: false,
                                              centerMapOnMarkerTap: false,
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: PointerInterceptor(
                                                intercepting: isWeb,
                                                child: FaIcon(
                                                  FontAwesomeIcons.mapMarkerAlt,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        if (_model.placePickerValue ==
                                            FFPlace()) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Ops ...'),
                                                content:
                                                    Text('Informe um Enderço.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          return;
                                        }
                                        await ApiUnitsGroup
                                            .apiUnitUpdateLocationCall
                                            .call(
                                          apiKey: FFDevEnvironmentValues()
                                              .envApiKey,
                                          accessToken: currentJwtToken,
                                          unitId:
                                              FFAppState().stUnitSelected.id,
                                          addressFull:
                                              '${_model.placePickerValue.address} - ${_model.tfStreetComplementTextController.text}',
                                          latitude:
                                              functions.cfGetLatFromLatLng(
                                                  _model.googleMapsCenter!),
                                          longitude:
                                              functions.cfGetLngFromLatLng(
                                                  _model.googleMapsCenter!),
                                          streetComplement: int.tryParse(_model
                                              .tfStreetComplementTextController
                                              .text),
                                          updatedUserId:
                                              FFAppState().stUserCurrent.id,
                                          updatedAt:
                                              getCurrentTimestamp.toString(),
                                        );

                                        await action_blocks
                                            .abVersionOfflineUpdates(
                                          context,
                                          tableName: 'units',
                                          versionOffline: getCurrentTimestamp
                                              .secondsSinceEpoch
                                              .toString(),
                                        );
                                        safeSetState(() {});
                                        FFAppState().updateStUnitSelectedStruct(
                                          (e) => e
                                            ..addressFull =
                                                '${_model.placePickerValue.address} - ${_model.tfStreetComplementTextController.text}'
                                            ..latitude =
                                                functions.cfGetLatFromLatLng(
                                                    _model.googleMapsCenter!)
                                            ..longitude =
                                                functions.cfGetLngFromLatLng(
                                                    _model.googleMapsCenter!),
                                        );
                                        safeSetState(() {});
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                            PgUnitShowWidget.routeName);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'b2y6gn8y' /* CONFIRMAR */,
                                      ),
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                24.0, 0.0, 24.0, 0.0),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .titleSmall,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                        elevation: 5.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 6.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
