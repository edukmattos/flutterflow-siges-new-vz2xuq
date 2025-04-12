import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_ove_follow/cp_ove_follow_widget.dart';
import '/pages/orders_visits_extras/md_o_v_e_create/md_o_v_e_create_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_ove_menu_extras_model.dart';
export 'cp_ove_menu_extras_model.dart';

class CpOveMenuExtrasWidget extends StatefulWidget {
  const CpOveMenuExtrasWidget({
    super.key,
    required this.cpDtOve,
    int? cpSize,
  }) : this.cpSize = cpSize ?? 60;

  final DtOrderVisitExtraStruct? cpDtOve;
  final int cpSize;

  @override
  State<CpOveMenuExtrasWidget> createState() => _CpOveMenuExtrasWidgetState();
}

class _CpOveMenuExtrasWidgetState extends State<CpOveMenuExtrasWidget> {
  late CpOveMenuExtrasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOveMenuExtrasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FlutterFlowIconButton(
          borderColor: FlutterFlowTheme.of(context).customColor1,
          borderRadius: 16.0,
          borderWidth: 6.0,
          buttonSize: widget.cpSize.toDouble(),
          icon: Icon(
            Icons.copy_all,
            color: FlutterFlowTheme.of(context).customColor1,
            size: 30.0,
          ),
          showLoadingIndicator: true,
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: MdOVECreateWidget(
                    cpOperation: 'duplicate',
                    cpDtOve: widget.cpDtOve,
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
        ),
        wrapWithModel(
          model: _model.cpOveFollowModel,
          updateCallback: () => safeSetState(() {}),
          child: CpOveFollowWidget(
            cpOveId: widget.cpDtOve?.id,
            cpSize: 60,
          ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
