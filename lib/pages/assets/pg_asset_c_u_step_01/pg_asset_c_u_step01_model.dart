import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_assets_types/cp_dropdown_assets_types_widget.dart';
import '/pages/cp_asset_create_card/cp_asset_create_card_widget.dart';
import '/pages/users/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/index.dart';
import 'pg_asset_c_u_step01_widget.dart' show PgAssetCUStep01Widget;
import 'package:flutter/material.dart';

class PgAssetCUStep01Model extends FlutterFlowModel<PgAssetCUStep01Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpAssetCreateCard component.
  late CpAssetCreateCardModel cpAssetCreateCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e6ac9ljv' /* Obrigatório. */,
      );
    }

    return null;
  }

  // Model for cpDropdownAssetsTypes component.
  late CpDropdownAssetsTypesModel cpDropdownAssetsTypesModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VAssetsRow>? resAssetCreate;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VAssetsRow>? resAssetUpdate;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CfgAssetsTypesRow>? resAssetType;

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpAssetCreateCardModel =
        createModel(context, () => CpAssetCreateCardModel());
    textControllerValidator = _textControllerValidator;
    cpDropdownAssetsTypesModel =
        createModel(context, () => CpDropdownAssetsTypesModel());
  }

  @override
  void dispose() {
    cpDBUserAvailableModel.dispose();
    cpAssetCreateCardModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cpDropdownAssetsTypesModel.dispose();
  }
}
