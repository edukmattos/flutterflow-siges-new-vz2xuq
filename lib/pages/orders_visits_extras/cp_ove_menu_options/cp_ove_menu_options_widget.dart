import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders_visits_extras/md_ove_menu_processing/md_ove_menu_processing_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        return;
      } else {
        if (widget.cpDtOve?.processingId == 2) {
          _model.lcsvIsVisibleDraft = false;
          _model.lcsvIsVisibleReported = false;
          _model.lcsvIsVisibleRevised = false;
          _model.lcsvIsVisibleDisapproved = true;
          _model.lcsvIsVisibleApproved = true;
          _model.lcsvIsVisibleFiled = false;
          _model.lpsvIsVisibleDelete = false;
          safeSetState(() {});
          return;
        } else {
          if (widget.cpDtOve?.processingId == 3) {
            _model.lcsvIsVisibleDraft = false;
            _model.lcsvIsVisibleReported = false;
            _model.lcsvIsVisibleRevised = true;
            _model.lcsvIsVisibleDisapproved = true;
            _model.lcsvIsVisibleApproved = false;
            _model.lcsvIsVisibleFiled = false;
            _model.lpsvIsVisibleDelete = false;
            safeSetState(() {});
            return;
          } else {
            if (widget.cpDtOve?.processingId == 4) {
              _model.lcsvIsVisibleDraft = false;
              _model.lcsvIsVisibleReported = false;
              _model.lcsvIsVisibleRevised = false;
              _model.lcsvIsVisibleDisapproved = false;
              _model.lcsvIsVisibleApproved = false;
              _model.lcsvIsVisibleFiled = true;
              _model.lpsvIsVisibleDelete = false;
              _model.lpsvIsVisibleDisapprovedComments = false;
              safeSetState(() {});
              return;
            } else {
              if ((widget.cpDtOve?.processingId == 5) &&
                  (widget.cpDtOve?.isArchived == false)) {
                _model.lcsvIsVisibleDraft = false;
                _model.lcsvIsVisibleReported = false;
                _model.lcsvIsVisibleRevised = false;
                _model.lcsvIsVisibleDisapproved = true;
                _model.lcsvIsVisibleApproved = false;
                _model.lcsvIsVisibleFiled = true;
                _model.lpsvIsVisibleDelete = false;
                safeSetState(() {});
                return;
              } else {
                if ((widget.cpDtOve?.processingId == 5) &&
                    (widget.cpDtOve?.isArchived == true)) {
                  _model.lcsvIsVisibleDraft = false;
                  _model.lcsvIsVisibleReported = false;
                  _model.lcsvIsVisibleRevised = false;
                  _model.lcsvIsVisibleDisapproved = false;
                  _model.lcsvIsVisibleApproved = false;
                  _model.lcsvIsVisibleFiled = false;
                  _model.lpsvIsVisibleDelete = false;
                  safeSetState(() {});
                  return;
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

    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (!widget.cpDtOve!.isBlocked)
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (_model.lcsvIsVisibleDraft)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '3555ilpz' /* Rascunho */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: FlutterFlowIconButton(
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
                        await action_blocks.abOVESelected(
                          context,
                          abOVEId: widget.cpDtOve?.id,
                        );
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
                                  cpDtOve: FFAppState().stOVESelected,
                                  cpPageId: 28,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                if (_model.lcsvIsVisibleReported)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'rux3ecgk' /* Reportar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: Visibility(
                      visible: _model.lcsvIsVisibleReported,
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).customColor3,
                        borderRadius: 16.0,
                        borderWidth: 6.0,
                        buttonSize: widget.cpSize.toDouble(),
                        icon: Icon(
                          FFIcons.kkfileExport,
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 30.0,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          await action_blocks.abOVESelected(
                            context,
                            abOVEId: widget.cpDtOve?.id,
                          );
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
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.9,
                                  child: MdOveMenuProcessingWidget(
                                    cpProcessingId: 2,
                                    cpDtOve: FFAppState().stOVESelected,
                                    cpPageId: 28,
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                      ),
                    ),
                  ),
                if (_model.lcsvIsVisibleRevised)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'nif3ilrb' /* Revisar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).secondaryText,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: widget.cpSize.toDouble(),
                      icon: FaIcon(
                        FontAwesomeIcons.fileSignature,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        await action_blocks.abOVESelected(
                          context,
                          abOVEId: widget.cpDtOve?.id,
                        );
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
                                  cpDtOve: FFAppState().stOVESelected,
                                  cpPageId: 29,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                if (_model.lcsvIsVisibleApproved)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'twl4qvot' /* Autorizar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).success,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: widget.cpSize.toDouble(),
                      icon: FaIcon(
                        FontAwesomeIcons.thumbsUp,
                        color: FlutterFlowTheme.of(context).success,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        await action_blocks.abOVESelected(
                          context,
                          abOVEId: widget.cpDtOve?.id,
                        );
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
                                  cpDtOve: FFAppState().stOVESelected,
                                  cpPageId: 33,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                if (_model.lcsvIsVisibleFiled)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2pj6m7al' /* Arquivar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: widget.cpSize.toDouble(),
                      icon: Icon(
                        Icons.archive_sharp,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 30.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        await action_blocks.abOVESelected(
                          context,
                          abOVEId: widget.cpDtOve?.id,
                        );
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
                                  cpDtOve: FFAppState().stOVESelected,
                                  cpPageId: 30,
                                  cpIsFiled: true,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                if (_model.lcsvIsVisibleDisapproved)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ff9p60i3' /* Rejeitar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).error,
                      borderRadius: 16.0,
                      borderWidth: 6.0,
                      buttonSize: widget.cpSize.toDouble(),
                      icon: FaIcon(
                        FontAwesomeIcons.thumbsDown,
                        color: FlutterFlowTheme.of(context).error,
                        size: 30.0,
                      ),
                      showLoadingIndicator: true,
                      onPressed: () async {
                        await action_blocks.abOVESelected(
                          context,
                          abOVEId: widget.cpDtOve?.id,
                        );
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
                                  cpDtOve: FFAppState().stOVESelected,
                                  cpPageId: 29,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                if (_model.lpsvIsVisibleDelete)
                  AlignedTooltip(
                    content: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'u9ma698u' /* Excluir */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    offset: 4.0,
                    preferredDirection: AxisDirection.down,
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 4.0,
                    tailBaseWidth: 24.0,
                    tailLength: 12.0,
                    waitDuration: Duration(milliseconds: 100),
                    showDuration: Duration(milliseconds: 1500),
                    triggerMode: TooltipTriggerMode.tap,
                    child: FlutterFlowIconButton(
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
                        await action_blocks.abOVESelected(
                          context,
                          abOVEId: widget.cpDtOve?.id,
                        );
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
                                  cpDtOve: FFAppState().stOVESelected,
                                  cpPageId: 29,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
              ].divide(SizedBox(width: 8.0)),
            ),
          if (widget.cpDtOve?.isBlocked ?? true)
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    _model.isAllowUnclock = await action_blocks.abGuardian(
                      context,
                      abPgRequestedId: 35,
                    );
                    _shouldSetState = true;
                    if (_model.isAllowUnclock!) {
                      await OrdersVisitsExtrasTable().update(
                        data: {
                          'is_blocked': false,
                          'unblocked_user_id': FFAppState().stUserCurrent.id,
                          'unblocked_at':
                              supaSerialize<DateTime>(getCurrentTimestamp),
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          widget.cpDtOve?.id,
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Serviço Extraordinário DESBLOQUEADO !',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ops ... Acesso restrito.',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: FlutterFlowTheme.of(context).error,
                        ),
                      );
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }

                    if (_shouldSetState) safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'ykptlqmv' /* Desbloquear */,
                  ),
                  icon: FaIcon(
                    FontAwesomeIcons.unlockAlt,
                    color: FlutterFlowTheme.of(context).error,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x00EF3939),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: FlutterFlowTheme.of(context).titleSmall,
                          color: FlutterFlowTheme.of(context).error,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 6.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
        ],
      ),
    );
  }
}
