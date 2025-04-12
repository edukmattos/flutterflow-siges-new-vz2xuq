import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_visits_extras/cp_o_v_e_list_item/cp_o_v_e_list_item_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'pg_o_v_e_test_model.dart';
export 'pg_o_v_e_test_model.dart';

class PgOVETestWidget extends StatefulWidget {
  const PgOVETestWidget({
    super.key,
    required this.cpDtOVE,
  });

  final DtOrderVisitExtraStruct? cpDtOVE;

  static String routeName = 'pgOVETest';
  static String routePath = 'pgOVETest';

  @override
  State<PgOVETestWidget> createState() => _PgOVETestWidgetState();
}

class _PgOVETestWidgetState extends State<PgOVETestWidget> {
  late PgOVETestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVETestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 25.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.cpOVEListItemModel,
              updateCallback: () => safeSetState(() {}),
              child: CpOVEListItemWidget(
                cpDtOVE: widget.cpDtOVE!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
