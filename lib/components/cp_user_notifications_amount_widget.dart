import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:badges/badges.dart' as badges;
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_user_notifications_amount_model.dart';
export 'cp_user_notifications_amount_model.dart';

class CpUserNotificationsAmountWidget extends StatefulWidget {
  const CpUserNotificationsAmountWidget({
    super.key,
    int? cpNotificationsAmount,
  }) : this.cpNotificationsAmount = cpNotificationsAmount ?? 0;

  final int cpNotificationsAmount;

  @override
  State<CpUserNotificationsAmountWidget> createState() =>
      _CpUserNotificationsAmountWidgetState();
}

class _CpUserNotificationsAmountWidgetState
    extends State<CpUserNotificationsAmountWidget> {
  late CpUserNotificationsAmountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpUserNotificationsAmountModel());

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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await action_blocks.abUserNotifications(
          context,
          abUserId: FFAppState().stUserCurrent.id,
        );
      },
      child: badges.Badge(
        badgeContent: Text(
          widget.cpNotificationsAmount.toString(),
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                color: Colors.white,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
              ),
        ),
        showBadge: widget.cpNotificationsAmount > 0,
        shape: badges.BadgeShape.circle,
        badgeColor: FlutterFlowTheme.of(context).error,
        elevation: 4.0,
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        position: badges.BadgePosition.topEnd(),
        animationType: badges.BadgeAnimationType.scale,
        toAnimate: true,
        child: FaIcon(
          FontAwesomeIcons.solidBell,
          color: FlutterFlowTheme.of(context).info,
          size: 34.0,
        ),
      ),
    );
  }
}
