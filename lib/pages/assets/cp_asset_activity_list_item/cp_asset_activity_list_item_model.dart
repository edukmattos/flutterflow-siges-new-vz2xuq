import '/components/cp_company_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders_parents/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_asset_activity_list_item_widget.dart'
    show CpAssetActivityListItemWidget;
import 'package:flutter/material.dart';

class CpAssetActivityListItemModel
    extends FlutterFlowModel<CpAssetActivityListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpCompanyLogo component.
  late CpCompanyLogoModel cpCompanyLogoModel;
  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;

  @override
  void initState(BuildContext context) {
    cpCompanyLogoModel = createModel(context, () => CpCompanyLogoModel());
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
  }

  @override
  void dispose() {
    cpCompanyLogoModel.dispose();
    cpOVProcessingModel.dispose();
  }
}
