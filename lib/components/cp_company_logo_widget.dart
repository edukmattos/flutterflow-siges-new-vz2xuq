import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_company_logo_model.dart';
export 'cp_company_logo_model.dart';

class CpCompanyLogoWidget extends StatefulWidget {
  const CpCompanyLogoWidget({
    super.key,
    int? cpSize,
    required this.cpImgUrl,
  }) : this.cpSize = cpSize ?? 50;

  final int cpSize;
  final String? cpImgUrl;

  @override
  State<CpCompanyLogoWidget> createState() => _CpCompanyLogoWidgetState();
}

class _CpCompanyLogoWidgetState extends State<CpCompanyLogoWidget> {
  late CpCompanyLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCompanyLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: widget.cpSize.toDouble(),
        height: widget.cpSize.toDouble(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).info,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              widget.cpImgUrl!,
            ).image,
          ),
          borderRadius: BorderRadius.circular(16.0),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
