import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_walktrought_msg_model.dart';
export 'cp_walktrought_msg_model.dart';

class CpWalktroughtMsgWidget extends StatefulWidget {
  const CpWalktroughtMsgWidget({
    super.key,
    required this.cpTitle,
    required this.cpBody,
  });

  final String? cpTitle;
  final String? cpBody;

  @override
  State<CpWalktroughtMsgWidget> createState() => _CpWalktroughtMsgWidgetState();
}

class _CpWalktroughtMsgWidgetState extends State<CpWalktroughtMsgWidget> {
  late CpWalktroughtMsgModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpWalktroughtMsgModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.cpTitle,
                            'title',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font:
                                    FlutterFlowTheme.of(context).headlineMedium,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.cpBody,
                            'body',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: FlutterFlowTheme.of(context).labelLarge,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
