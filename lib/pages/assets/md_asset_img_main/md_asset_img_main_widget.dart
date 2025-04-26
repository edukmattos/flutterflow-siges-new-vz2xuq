import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'md_asset_img_main_model.dart';
export 'md_asset_img_main_model.dart';

class MdAssetImgMainWidget extends StatefulWidget {
  const MdAssetImgMainWidget({
    super.key,
    required this.cpAssetDt,
  });

  final DtAssetStruct? cpAssetDt;

  @override
  State<MdAssetImgMainWidget> createState() => _MdAssetImgMainWidgetState();
}

class _MdAssetImgMainWidgetState extends State<MdAssetImgMainWidget> {
  late MdAssetImgMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdAssetImgMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${widget.cpAssetDt?.imgFilePath}/${widget.cpAssetDt?.imgFileName}',
                        width: double.infinity,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 24.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).info,
                  borderRadius: 16.0,
                  borderWidth: 6.0,
                  buttonSize: 50.0,
                  icon: FaIcon(
                    FontAwesomeIcons.timesCircle,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  showLoadingIndicator: true,
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                child: Text(
                  '${widget.cpAssetDt?.code} - ${widget.cpAssetDt?.description}',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        color: FlutterFlowTheme.of(context).warning,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
