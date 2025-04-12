import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_d_b_admin_o_list_item_copy_model.dart';
export 'cp_d_b_admin_o_list_item_copy_model.dart';

class CpDBAdminOListItemCopyWidget extends StatefulWidget {
  const CpDBAdminOListItemCopyWidget({super.key});

  @override
  State<CpDBAdminOListItemCopyWidget> createState() =>
      _CpDBAdminOListItemCopyWidgetState();
}

class _CpDBAdminOListItemCopyWidgetState
    extends State<CpDBAdminOListItemCopyWidget> {
  late CpDBAdminOListItemCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDBAdminOListItemCopyModel());

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
      child: Container(
        width: 400.0,
        height: 250.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
    );
  }
}
