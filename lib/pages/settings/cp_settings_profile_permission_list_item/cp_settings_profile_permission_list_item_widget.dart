import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_settings_profile_permission_list_item_model.dart';
export 'cp_settings_profile_permission_list_item_model.dart';

class CpSettingsProfilePermissionListItemWidget extends StatefulWidget {
  const CpSettingsProfilePermissionListItemWidget({
    super.key,
    required this.cpRowProfilePermission,
  });

  final VProfilesPermissionsRow? cpRowProfilePermission;

  @override
  State<CpSettingsProfilePermissionListItemWidget> createState() =>
      _CpSettingsProfilePermissionListItemWidgetState();
}

class _CpSettingsProfilePermissionListItemWidgetState
    extends State<CpSettingsProfilePermissionListItemWidget> {
  late CpSettingsProfilePermissionListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CpSettingsProfilePermissionListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    widget.cpRowProfilePermission!.appPageDescription!,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyLargeFamily),
                        ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).info,
                  borderRadius: 16.0,
                  borderWidth: 6.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).error,
                  icon: FaIcon(
                    FontAwesomeIcons.trashAlt,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Ops ...'),
                              content: Text(
                                  'Deseja realmente EXCUIR definitivamente ?'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: Text('Cancelar'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: Text('Confirmar'),
                                ),
                              ],
                            );
                          },
                        ) ??
                        false;
                    if (confirmDialogResponse) {
                      await CfgProfilesPermissionsTable().delete(
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          widget.cpRowProfilePermission?.id,
                        ),
                      );
                    }
                  },
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
