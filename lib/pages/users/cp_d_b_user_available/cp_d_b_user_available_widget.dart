import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_company_logo_widget.dart';
import '/components/cp_user_notifications_amount_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/notifications/cp_user_notifications_list_item/cp_user_notifications_list_item_widget.dart';
import '/pages/users/md_user_available_menu_options/md_user_available_menu_options_widget.dart';
import '/pages/users/md_user_notification/md_user_notification_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'cp_d_b_user_available_model.dart';
export 'cp_d_b_user_available_model.dart';

class CpDBUserAvailableWidget extends StatefulWidget {
  const CpDBUserAvailableWidget({
    super.key,
    required this.toolTip,
  });

  final String? toolTip;

  @override
  State<CpDBUserAvailableWidget> createState() =>
      _CpDBUserAvailableWidgetState();
}

class _CpDBUserAvailableWidgetState extends State<CpDBUserAvailableWidget> {
  late CpDBUserAvailableModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDBUserAvailableModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      await Future.wait([
        Future(() async {
          await actions.caSupabaseDisconnect(
            'users',
          );
          await Future.delayed(const Duration(milliseconds: 2000));
          await actions.caSupabaseConnect(
            'users',
            () async {
              await action_blocks.abUserNotifications(
                context,
                abUserId: FFAppState().stUserCurrent.id,
              );
            },
          );
        }),
        Future(() async {}),
      ]);
      if (!isWeb) {
        if (FFAppState().stUserCurrent.isAvailable) {
          await requestPermission(locationPermission);
          if (await getPermissionStatus(locationPermission)) {
            _model.instantTimerGPS = InstantTimer.periodic(
              duration: Duration(milliseconds: 180000),
              callback: (timer) async {
                currentUserLocationValue = await getCurrentUserLocation(
                    defaultLocation: LatLng(0.0, 0.0));
                await UsersTable().update(
                  data: {
                    'latitude':
                        functions.cfGetLatFromLatLng(currentUserLocationValue!),
                    'longitude':
                        functions.cfGetLngFromLatLng(currentUserLocationValue!),
                    'tracker_at': supaSerialize<DateTime>(getCurrentTimestamp),
                  },
                  matchingRows: (rows) => rows.eqOrNull(
                    'id',
                    FFAppState().stUserCurrent.id,
                  ),
                );
              },
              startImmediately: true,
            );
          } else {
            await requestPermission(locationPermission);
            return;
          }
        } else {
          _model.instantTimerGPS?.cancel();
        }
      }
    });

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 72.0,
            decoration: BoxDecoration(
              color: FFAppState().stAppVersionMode == EnumVersionsMode.live
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).error,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.cpCompanyLogoModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpCompanyLogoWidget(
                                  cpSize: 50,
                                  cpImgUrl:
                                      '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stUserCurrent.companyImgFilePath}/${FFAppState().stUserCurrent.companyImgFileName}',
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(),
                              child: AlignedTooltip(
                                content: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    FFAppState().stUserCurrent.nameShort,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                offset: 4.0,
                                preferredDirection: AxisDirection.down,
                                borderRadius: BorderRadius.circular(8.0),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                tailBaseWidth: 24.0,
                                tailLength: 12.0,
                                waitDuration: Duration(milliseconds: 100),
                                showDuration: Duration(milliseconds: 1500),
                                triggerMode: TooltipTriggerMode.tap,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState()
                                            .stUserCurrent
                                            .ovIdInProgress >
                                        0) {
                                      await action_blocks.abOVSelected(
                                        context,
                                        abOVId: FFAppState()
                                            .stUserCurrent
                                            .ovIdInProgress,
                                      );

                                      context
                                          .pushNamed(PgOVShowWidget.routeName);
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                MdUserAvailableMenuOptionsWidget(),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }
                                  },
                                  child: wrapWithModel(
                                    model: _model.cpUserPicProfileModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CpUserPicProfileWidget(
                                      cpSize: 50,
                                      imgUrl:
                                          '${FFDevEnvironmentValues().envStorageUrl}/${FFDevEnvironmentValues().envStorageBucket}/${FFAppState().stUserCurrent.imgFilePath}/${FFAppState().stUserCurrent.imgFileName}',
                                      toolTip:
                                          FFAppState().stUserCurrent.nameShort,
                                      isAvailable: FFAppState()
                                          .stUserCurrent
                                          .isAvailable,
                                      isOrderVisitIdInProgress: FFAppState()
                                          .stUserCurrent
                                          .isOvInProgress,
                                      displayAvailable: true,
                                      cpBorderWidth: 6,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (FFAppState().stUserNotifications.length > 0)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {},
                          child: Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.cpUserNotificationsAmountModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CpUserNotificationsAmountWidget(
                                cpNotificationsAmount:
                                    FFAppState().stUserNotifications.length,
                              ),
                            ),
                          ),
                        ),
                      Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/siges_logo_ai_07-removebg-preview.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            constraints: BoxConstraints(
              minHeight: 0.0,
              maxHeight: 100.0,
            ),
            decoration: BoxDecoration(),
            child: Visibility(
              visible: FFAppState().stUserNotifications.length > 0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final gcUserNotifications =
                        FFAppState().stUserNotifications.toList();

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: gcUserNotifications.length,
                      separatorBuilder: (_, __) => SizedBox(width: 8.0),
                      itemBuilder: (context, gcUserNotificationsIndex) {
                        final gcUserNotificationsItem =
                            gcUserNotifications[gcUserNotificationsIndex];
                        return Container(
                          width: 380.0,
                          decoration: BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MdUserNotificationWidget(
                                      cpUserNotification:
                                          gcUserNotificationsItem,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: CpUserNotificationsListItemWidget(
                              key: Key(
                                  'Keybhj_${gcUserNotificationsIndex}_of_${gcUserNotifications.length}'),
                              cpUserNotificationDt: gcUserNotificationsItem,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
