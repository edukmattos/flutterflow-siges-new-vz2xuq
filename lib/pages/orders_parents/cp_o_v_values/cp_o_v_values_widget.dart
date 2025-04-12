import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_o_v_values_model.dart';
export 'cp_o_v_values_model.dart';

class CpOVValuesWidget extends StatefulWidget {
  const CpOVValuesWidget({
    super.key,
    required this.cpOVDt,
  });

  final DtOrderVisitStruct? cpOVDt;

  @override
  State<CpOVValuesWidget> createState() => _CpOVValuesWidgetState();
}

class _CpOVValuesWidgetState extends State<CpOVValuesWidget> {
  late CpOVValuesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVValuesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Icon(
              Icons.threesixty_sharp,
              color: FlutterFlowTheme.of(context).alternate,
              size: 150.0,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'sez62png' /* Custos */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                    ),
                    Divider(
                      height: 32.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 16.0,
                                      borderWidth: 6.0,
                                      buttonSize: 50.0,
                                      icon: FaIcon(
                                        FontAwesomeIcons.tools,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'yvgjui0a' /* Serviços */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Text(
                                  formatNumber(
                                    widget.cpOVDt!.ovServicesValue,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: 'R\$ ',
                                  ),
                                  textAlign: TextAlign.end,
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 16.0,
                                      borderWidth: 6.0,
                                      buttonSize: 50.0,
                                      icon: FaIcon(
                                        FontAwesomeIcons.dolly,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'x53fuqel' /* Materiais */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Text(
                                  formatNumber(
                                    widget.cpOVDt!.ovMaterialsValue,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: 'R\$ ',
                                  ),
                                  textAlign: TextAlign.end,
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
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 16.0,
                                      borderWidth: 6.0,
                                      buttonSize: 50.0,
                                      icon: FaIcon(
                                        FontAwesomeIcons.shippingFast,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 26.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'vpyoxybb' /* Transporte */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Text(
                                  formatNumber(
                                    widget.cpOVDt!.ovVehiclesValue,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: 'R\$ ',
                                  ),
                                  textAlign: TextAlign.end,
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 16.0,
                              borderWidth: 6.0,
                              buttonSize: 50.0,
                              icon: FaIcon(
                                FontAwesomeIcons.moneyBillAlt,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              showLoadingIndicator: true,
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'dvf5q08i' /* Total */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Outfit'),
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Text(
                          formatNumber(
                            widget.cpOVDt!.ovTotalValue,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.commaDecimal,
                            currency: 'R\$ ',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleLargeFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
