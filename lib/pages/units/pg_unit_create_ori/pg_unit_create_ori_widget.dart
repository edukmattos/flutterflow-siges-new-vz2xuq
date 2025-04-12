import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/cp_dropdown_systems_by_parent/cp_dropdown_systems_by_parent_widget.dart';
import '/pages/components/cp_dropdown_systems_parent/cp_dropdown_systems_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_by_parent/cp_dropdown_units_types_by_parent_widget.dart';
import '/pages/components/cp_dropdown_units_types_parent/cp_dropdown_units_types_parent_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_dropdown_units_statuses/cp_dropdown_units_statuses_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'pg_unit_create_ori_model.dart';
export 'pg_unit_create_ori_model.dart';

class PgUnitCreateOriWidget extends StatefulWidget {
  const PgUnitCreateOriWidget({super.key});

  static String routeName = 'pgUnitCreateOri';
  static String routePath = 'pgUnitCreateOri';

  @override
  State<PgUnitCreateOriWidget> createState() => _PgUnitCreateOriWidgetState();
}

class _PgUnitCreateOriWidgetState extends State<PgUnitCreateOriWidget> {
  late PgUnitCreateOriModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgUnitCreateOriModel());

    _model.tfCodeTextController ??= TextEditingController();
    _model.tfCodeFocusNode ??= FocusNode();

    _model.tfDescriptionTextController ??= TextEditingController();
    _model.tfDescriptionFocusNode ??= FocusNode();

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
              '8jhvei72' /* Nova Unidade */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpDropdownSystemsParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownSystemsParentWidget(
                                cpHintText: 'Sistema ?',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownSystemsByParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownSystemsByParentWidget(
                                cpHintText: 'Sub Sistema ?',
                                cpInitialValue: _model
                                    .cpDropdownSystemsParentModel
                                    .dropdownSystemsValue,
                                cpParentId: _model.cpDropdownSystemsParentModel
                                    .dropdownSystemsValue,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownUnitsTypesParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownUnitsTypesParentWidget(
                                cpHintText: 'Tipo ?',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownUnitsTypesByParentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownUnitsTypesByParentWidget(
                                cpHintText: 'Sub Tipo ?',
                                cpInitialValue: _model
                                    .cpDropdownUnitsTypesParentModel
                                    .dropdownUnitsTypesParentValue,
                                cpParentId: _model
                                    .cpDropdownUnitsTypesParentModel
                                    .dropdownUnitsTypesParentValue,
                              ),
                            ),
                            TextFormField(
                              controller: _model.tfCodeTextController,
                              focusNode: _model.tfCodeFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.tfCodeTextController',
                                Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              autofillHints: [AutofillHints.name],
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'ec2dk0b6' /* Código ? */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 0.0, 12.0),
                                suffixIcon: _model
                                        .tfCodeTextController!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.tfCodeTextController?.clear();
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
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              minLines: 1,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.tfCodeTextControllerValidator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.tfDescriptionTextController,
                              focusNode: _model.tfDescriptionFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.tfDescriptionTextController',
                                Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              autofillHints: [AutofillHints.name],
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '1v3u5zo6' /* Descrição ? */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 0.0, 12.0),
                                suffixIcon: _model.tfDescriptionTextController!
                                        .text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.tfDescriptionTextController
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
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              minLines: 1,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model
                                  .tfDescriptionTextControllerValidator
                                  .asValidator(context),
                            ),
                            wrapWithModel(
                              model: _model.cpDropdownUnitsStatusesModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpDropdownUnitsStatusesWidget(
                                cpHintText: 'Situação ?',
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
                                      (await _model.googleMapsController.future)
                                          .animateCamera(CameraUpdate.newLatLng(
                                              place.latLng.toGoogleMaps()));
                                    },
                                    defaultText:
                                        FFLocalizations.of(context).getText(
                                      'n1bymlon' /* Informe um endereço */,
                                    ),
                                    icon: Icon(
                                      Icons.place,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 16.0,
                                    ),
                                    buttonOptions: FFButtonOptions(
                                      width: 200.0,
                                      height: 50.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.placePickerValue.address,
                                        '.',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
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
                                labelText: FFLocalizations.of(context).getText(
                                  'jkeoa7cv' /* Complemento ? */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
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
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              minLines: 1,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model
                                  .tfStreetComplementTextControllerValidator
                                  .asValidator(context),
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
                                        await _model.googleMapsController.future
                                            .then(
                                          (c) => c.animateCamera(
                                            CameraUpdate.newLatLng(
                                                currentUserLocationValue!
                                                    .toGoogleMaps()),
                                          ),
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'xpvwacsd' /* Minha Localização */,
                                      ),
                                      icon: Icon(
                                        Icons.center_focus_weak,
                                        size: 22.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 200.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
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
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Stack(
                                      children: [
                                        FlutterFlowGoogleMap(
                                          controller:
                                              _model.googleMapsController,
                                          onCameraIdle: (latLng) =>
                                              _model.googleMapsCenter = latLng,
                                          initialLocation: _model
                                                  .googleMapsCenter ??=
                                              _model.placePickerValue.latLng,
                                          markerColor: GoogleMarkerColor.violet,
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
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: PointerInterceptor(
                                            intercepting: isWeb,
                                            child: FaIcon(
                                              FontAwesomeIcons.mapMarkerAlt,
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.cpDropdownSystemsParentModel
                                            .dropdownSystemsValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content:
                                                Text('Informar o Sistema.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownSystemsByParentModel
                                            .dropdownSystemsByParentValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content:
                                                Text('Informar o Sub Sistema.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownUnitsTypesParentModel
                                            .dropdownUnitsTypesParentValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Informar o Tipo da Unidade.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.cpDropdownUnitsTypesByParentModel
                                            .dropdownUnitsTypesByParentValue ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content: Text(
                                                'Informar o Sub Tipo da Unidade.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    if (_model.placePickerValue == FFPlace()) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Ops ...'),
                                            content:
                                                Text('Informe um Enderço.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    _model.resUnitCreated =
                                        await UnitsTable().insert({
                                      'company_id': 1,
                                      'unit_type_id': _model
                                          .cpDropdownUnitsTypesByParentModel
                                          .dropdownUnitsTypesByParentValue,
                                      'code': _model.tfCodeTextController.text,
                                      'description': _model
                                          .tfDescriptionTextController.text,
                                      'latitude': functions.cfGetLatFromLatLng(
                                          _model.googleMapsCenter!),
                                      'longitude': functions.cfGetLngFromLatLng(
                                          _model.googleMapsCenter!),
                                      'created_user_id':
                                          FFAppState().stUserCurrent.id,
                                      'created_at': supaSerialize<DateTime>(
                                          getCurrentTimestamp),
                                      'description_full':
                                          '${_model.tfCodeTextController.text} - ${_model.tfDescriptionTextController.text}',
                                      'unit_type_parent_id': _model
                                          .cpDropdownUnitsTypesParentModel
                                          .dropdownUnitsTypesParentValue,
                                      'system_parent_id': _model
                                          .cpDropdownSystemsParentModel
                                          .dropdownSystemsValue,
                                      'system_id': _model
                                          .cpDropdownSystemsByParentModel
                                          .dropdownSystemsByParentValue,
                                      'address_full':
                                          '${_model.placePickerValue.address} - ${_model.tfStreetComplementTextController.text}',
                                      'provider_company_id':
                                          FFAppState().stUserCurrent.companyId,
                                      'status_id': _model
                                          .cpDropdownUnitsStatusesModel
                                          .dropdownUnitsStatusesValue,
                                      'version_mode':
                                          FFAppState().stAppVersionMode?.name,
                                    });
                                    await action_blocks.abUnitSelected(
                                      context,
                                      abUnitId: _model.resUnitCreated?.id,
                                    );
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context
                                        .pushNamed(PgUnitShowWidget.routeName);

                                    safeSetState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'msz0endq' /* CONFIRMAR */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 5.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).info,
                                      width: 6.0,
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
