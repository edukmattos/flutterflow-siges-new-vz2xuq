import '/flutter_flow/flutter_flow_util.dart';
import '/pages/techincals_manuals/cp_t_m_list_item/cp_t_m_list_item_widget.dart';
import 'package:date_picker_fey059/app_state.dart'
    as date_picker_fey059_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_asset_t_m_list_item_model.dart';
export 'cp_asset_t_m_list_item_model.dart';

class CpAssetTMListItemWidget extends StatefulWidget {
  const CpAssetTMListItemWidget({super.key});

  @override
  State<CpAssetTMListItemWidget> createState() =>
      _CpAssetTMListItemWidgetState();
}

class _CpAssetTMListItemWidgetState extends State<CpAssetTMListItemWidget> {
  late CpAssetTMListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAssetTMListItemModel());

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'voo55grw' /* Biblioteca Técnica */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: FlutterFlowTheme.of(context).titleLarge,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          Builder(
            builder: (context) {
              final gcTMs =
                  FFAppState().stTMSearchResults.map((e) => e).toList();

              return ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: gcTMs.length,
                separatorBuilder: (_, __) => SizedBox(height: 12.0),
                itemBuilder: (context, gcTMsIndex) {
                  final gcTMsItem = gcTMs[gcTMsIndex];
                  return CpTMListItemWidget(
                    key: Key('Key5cu_${gcTMsIndex}_of_${gcTMs.length}'),
                    cpTMDt: gcTMsItem,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
