import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'cp_user_pic_profile_model.dart';
export 'cp_user_pic_profile_model.dart';

class CpUserPicProfileWidget extends StatefulWidget {
  const CpUserPicProfileWidget({
    super.key,
    required this.cpSize,
    this.imgUrl,
    required this.toolTip,
    bool? isAvailable,
    required this.isOrderVisitIdInProgress,
    bool? displayAvailable,
    int? cpBorderWidth,
  })  : this.isAvailable = isAvailable ?? true,
        this.displayAvailable = displayAvailable ?? false,
        this.cpBorderWidth = cpBorderWidth ?? 6;

  final int? cpSize;
  final String? imgUrl;
  final String? toolTip;
  final bool isAvailable;
  final bool? isOrderVisitIdInProgress;
  final bool displayAvailable;
  final int cpBorderWidth;

  @override
  State<CpUserPicProfileWidget> createState() => _CpUserPicProfileWidgetState();
}

class _CpUserPicProfileWidgetState extends State<CpUserPicProfileWidget> {
  late CpUserPicProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpUserPicProfileModel());

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
        width: widget.cpSize?.toDouble(),
        height: widget.cpSize?.toDouble(),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              widget.imgUrl!,
            ).image,
          ),
          borderRadius: BorderRadius.circular(16.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: () {
              if (widget.displayAvailable && widget.isAvailable) {
                return FlutterFlowTheme.of(context).tertiary;
              } else if (widget.displayAvailable &&
                  !widget.isAvailable &&
                  widget.isOrderVisitIdInProgress!) {
                return FlutterFlowTheme.of(context).success;
              } else if (widget.displayAvailable &&
                  !widget.isAvailable &&
                  !widget.isOrderVisitIdInProgress!) {
                return FlutterFlowTheme.of(context).error;
              } else {
                return Color(0x00000000);
              }
            }(),
            width: 6.0,
          ),
        ),
      ),
    );
  }
}
