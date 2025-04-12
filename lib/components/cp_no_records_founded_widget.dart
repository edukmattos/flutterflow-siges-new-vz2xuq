import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_no_records_founded_model.dart';
export 'cp_no_records_founded_model.dart';

class CpNoRecordsFoundedWidget extends StatefulWidget {
  const CpNoRecordsFoundedWidget({
    super.key,
    String? cpTitle,
    String? cpBody,
  })  : this.cpTitle = cpTitle ?? 'Ops ...',
        this.cpBody =
            cpBody ?? 'Não foram localizados registros para a sua pesquisa.';

  final String cpTitle;
  final String cpBody;

  @override
  State<CpNoRecordsFoundedWidget> createState() =>
      _CpNoRecordsFoundedWidgetState();
}

class _CpNoRecordsFoundedWidgetState extends State<CpNoRecordsFoundedWidget> {
  late CpNoRecordsFoundedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpNoRecordsFoundedModel());

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
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.cpTitle,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineMediumFamily),
                  ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: FaIcon(
                      FontAwesomeIcons.stickyNote,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 40.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      widget.cpBody,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ),
    );
  }
}
