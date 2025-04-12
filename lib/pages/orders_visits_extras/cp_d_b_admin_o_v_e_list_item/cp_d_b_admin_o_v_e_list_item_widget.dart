import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_d_b_admin_o_v_e_list_item_model.dart';
export 'cp_d_b_admin_o_v_e_list_item_model.dart';

class CpDBAdminOVEListItemWidget extends StatefulWidget {
  const CpDBAdminOVEListItemWidget({
    super.key,
    required this.cpDtOVE,
    required this.cpIsRedirect,
  });

  final DtOrderVisitExtraStruct? cpDtOVE;
  final bool? cpIsRedirect;

  @override
  State<CpDBAdminOVEListItemWidget> createState() =>
      _CpDBAdminOVEListItemWidgetState();
}

class _CpDBAdminOVEListItemWidgetState
    extends State<CpDBAdminOVEListItemWidget> {
  late CpDBAdminOVEListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDBAdminOVEListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              'brmmiu4z' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
        ],
      ),
    );
  }
}
