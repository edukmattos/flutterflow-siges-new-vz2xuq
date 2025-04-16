import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_visits_extras/md_ove_menu_processing/md_ove_menu_processing_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_ove_menu_options_model.dart';
export 'cp_ove_menu_options_model.dart';

class CpOveMenuOptionsWidget extends StatefulWidget {
  const CpOveMenuOptionsWidget({
    super.key,
    required this.cpDtOve,
    int? cpSize,
  }) : this.cpSize = cpSize ?? 50;

  final DtOrderVisitExtraStruct? cpDtOve;
  final int cpSize;

  @override
  State<CpOveMenuOptionsWidget> createState() => _CpOveMenuOptionsWidgetState();
}

class _CpOveMenuOptionsWidgetState extends State<CpOveMenuOptionsWidget> {
  late CpOveMenuOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOveMenuOptionsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.cpDtOve?.processingId == 1) {
        _model.lcsvIsVisibleDraft = true;
        _model.lcsvIsVisibleReported = true;
        _model.lcsvIsVisibleRevised = false;
        _model.lcsvIsVisibleDisapproved = false;
        _model.lcsvIsVisibleApproved = false;
        _model.lcsvIsVisibleFiled = false;
        _model.lpsvIsVisibleDelete = false;
        safeSetState(() {});
      } else {
        if (widget.cpDtOve?.processingId == 2) {
          _model.lcsvIsVisibleDraft = false;
          _model.lcsvIsVisibleReported = false;
          _model.lcsvIsVisibleRevised = true;
          _model.lcsvIsVisibleDisapproved = true;
          _model.lcsvIsVisibleApproved = false;
          _model.lcsvIsVisibleFiled = false;
          _model.lpsvIsVisibleDelete = true;
          safeSetState(() {});
        } else {
          if (widget.cpDtOve?.processingId == 3) {
            _model.lcsvIsVisibleDraft = false;
            _model.lcsvIsVisibleReported = false;
            _model.lcsvIsVisibleRevised = false;
            _model.lcsvIsVisibleDisapproved = true;
            _model.lcsvIsVisibleApproved = true;
            _model.lcsvIsVisibleFiled = false;
            _model.lpsvIsVisibleDelete = false;
            safeSetState(() {});
          } else {
            if (widget.cpDtOve?.processingId == 4) {
              _model.lcsvIsVisibleDraft = true;
              _model.lcsvIsVisibleReported = false;
              _model.lcsvIsVisibleRevised = false;
              _model.lcsvIsVisibleDisapproved = false;
              _model.lcsvIsVisibleApproved = false;
              _model.lcsvIsVisibleFiled = false;
              _model.lpsvIsVisibleDelete = false;
              _model.lpsvIsVisibleDisapprovedComments = true;
              safeSetState(() {});
            } else {
              if ((widget.cpDtOve?.processingId == 5) &&
                  (widget.cpDtOve?.isFiled == false)) {
                _model.lcsvIsVisibleDraft = false;
                _model.lcsvIsVisibleReported = false;
                _model.lcsvIsVisibleRevised = false;
                _model.lcsvIsVisibleDisapproved = true;
                _model.lcsvIsVisibleApproved = false;
                _model.lcsvIsVisibleFiled = true;
                _model.lpsvIsVisibleDelete = false;
                safeSetState(() {});
              } else {
                if ((widget.cpDtOve?.processingId == 5) &&
                    (widget.cpDtOve?.isFiled == true)) {
                  _model.lcsvIsVisibleDraft = false;
                  _model.lcsvIsVisibleReported = false;
                  _model.lcsvIsVisibleRevised = false;
                  _model.lcsvIsVisibleDisapproved = true;
                  _model.lcsvIsVisibleApproved = false;
                  _model.lcsvIsVisibleFiled = true;
                  _model.lpsvIsVisibleDelete = true;
                  safeSetState(() {});
                }
              }
            }
          }
        }
      }
    });

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

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (_model.lcsvIsVisibleDraft)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primary,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: widget.cpSize.toDouble(),
            icon: Icon(
              Icons.draw,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 1,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 28,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
        if (_model.lcsvIsVisibleReported)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).tertiary,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: widget.cpSize.toDouble(),
            icon: Icon(
              Icons.report_problem_outlined,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 2,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 28,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
        if (_model.lcsvIsVisibleRevised)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).secondaryText,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: widget.cpSize.toDouble(),
            icon: Icon(
              Icons.remove_red_eye_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 3,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 29,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
        if (_model.lcsvIsVisibleApproved)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).success,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: widget.cpSize.toDouble(),
            icon: FaIcon(
              FontAwesomeIcons.thumbsUp,
              color: FlutterFlowTheme.of(context).success,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 5,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 33,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
        if (_model.lcsvIsVisibleFiled && !widget.cpDtOve!.isFiled)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).secondaryText,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: widget.cpSize.toDouble(),
            icon: Icon(
              Icons.archive_sharp,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 5,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 30,
                        cpIsFiled: true,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
        if (_model.lcsvIsVisibleDisapproved)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).error,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: 50.0,
            icon: FaIcon(
              FontAwesomeIcons.thumbsDown,
              color: FlutterFlowTheme.of(context).error,
              size: 30.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 4,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 29,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
        if (_model.lpsvIsVisibleDisapprovedComments)
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderRadius: 16.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).error,
                icon: FaIcon(
                  FontAwesomeIcons.thumbsDown,
                  color: FlutterFlowTheme.of(context).info,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              if (widget.cpDtOve?.processingId == 4)
                Text(
                  valueOrDefault<String>(
                    widget.cpDtOve?.disapprovedComments,
                    'Motivos rejeição.',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
            ].divide(SizedBox(width: 8.0)),
          ),
        if (_model.lpsvIsVisibleDelete)
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).error,
            borderRadius: 16.0,
            borderWidth: 6.0,
            buttonSize: widget.cpSize.toDouble(),
            icon: FaIcon(
              FontAwesomeIcons.solidTrashAlt,
              color: FlutterFlowTheme.of(context).error,
              size: 24.0,
            ),
            showLoadingIndicator: true,
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      child: MdOveMenuProcessingWidget(
                        cpProcessingId: 99,
                        cpDtOve: widget.cpDtOve!,
                        cpPageId: 29,
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
