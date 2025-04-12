import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'package:flutter/material.dart';
import 'cp_menu_o_v_processing_model.dart';
export 'cp_menu_o_v_processing_model.dart';

class CpMenuOVProcessingWidget extends StatefulWidget {
  const CpMenuOVProcessingWidget({
    super.key,
    int? cpProcessingId,
  }) : this.cpProcessingId = cpProcessingId ?? 1;

  final int cpProcessingId;

  @override
  State<CpMenuOVProcessingWidget> createState() =>
      _CpMenuOVProcessingWidgetState();
}

class _CpMenuOVProcessingWidgetState extends State<CpMenuOVProcessingWidget> {
  late CpMenuOVProcessingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpMenuOVProcessingModel());

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
        Stack(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {},
              child: wrapWithModel(
                model: _model.cpOVProcessingModel1,
                updateCallback: () => safeSetState(() {}),
                child: CpOVProcessingWidget(
                  cpProcessingId: widget.cpProcessingId,
                  cpBorderWidth: widget.cpProcessingId == 5 ? 0 : 6,
                  cpSize: 50,
                  cpShowLoadingIndicator: widget.cpProcessingId != 5,
                  cpDisabled: widget.cpProcessingId == 5,
                ),
              ),
            ),
          ],
        ),
        if (_model.lcsvMnuIsOpen)
          Builder(
            builder: (context) {
              if (widget.cpProcessingId == 1) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.cpOVProcessingModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: CpOVProcessingWidget(
                        cpProcessingId: 2,
                        cpBorderWidth: widget.cpProcessingId == 5 ? 6 : 0,
                        cpSize: 50,
                        cpShowLoadingIndicator: widget.cpProcessingId != 5,
                        cpDisabled: widget.cpProcessingId == 5,
                      ),
                    ),
                  ],
                );
              } else if (widget.cpProcessingId == 2) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.cpOVProcessingModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: CpOVProcessingWidget(
                        cpProcessingId: 3,
                        cpBorderWidth: widget.cpProcessingId == 5 ? 6 : 0,
                        cpSize: 50,
                        cpShowLoadingIndicator: widget.cpProcessingId != 5,
                        cpDisabled: widget.cpProcessingId == 5,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOVProcessingModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: CpOVProcessingWidget(
                        cpProcessingId: 4,
                        cpBorderWidth: widget.cpProcessingId == 5 ? 6 : 0,
                        cpSize: 50,
                        cpShowLoadingIndicator: widget.cpProcessingId != 5,
                        cpDisabled: widget.cpProcessingId == 5,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOVProcessingModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: CpOVProcessingWidget(
                        cpProcessingId: 5,
                        cpBorderWidth: widget.cpProcessingId == 5 ? 6 : 0,
                        cpSize: 50,
                        cpShowLoadingIndicator: widget.cpProcessingId != 5,
                        cpDisabled: widget.cpProcessingId == 5,
                      ),
                    ),
                  ],
                );
              } else {
                return Container(
                  width: 0.0,
                  height: 0.0,
                  decoration: BoxDecoration(),
                );
              }
            },
          ),
      ],
    );
  }
}
