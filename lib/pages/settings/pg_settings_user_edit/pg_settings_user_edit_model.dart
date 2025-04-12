import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_departments_company/cp_dropdown_departments_company_widget.dart';
import '/pages/components/cp_dropdown_profiles_department/cp_dropdown_profiles_department_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/index.dart';
import 'pg_settings_user_edit_widget.dart' show PgSettingsUserEditWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PgSettingsUserEditModel
    extends FlutterFlowModel<PgSettingsUserEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // Model for cpDropdownDepartmentsCompany component.
  late CpDropdownDepartmentsCompanyModel cpDropdownDepartmentsCompanyModel;
  // Model for cpDropdownTeamsDepartment component.
  late CpDropdownTeamsDepartmentModel cpDropdownTeamsDepartmentModel;
  // Model for cpDropdownProfilesDepartment component.
  late CpDropdownProfilesDepartmentModel cpDropdownProfilesDepartmentModel;
  // State field(s) for tf_user_name_full widget.
  FocusNode? tfUserNameFullFocusNode;
  TextEditingController? tfUserNameFullTextController;
  String? Function(BuildContext, String?)?
      tfUserNameFullTextControllerValidator;
  // State field(s) for tf_user_name_short widget.
  FocusNode? tfUserNameShortFocusNode;
  TextEditingController? tfUserNameShortTextController;
  String? Function(BuildContext, String?)?
      tfUserNameShortTextControllerValidator;
  // State field(s) for tf_user_phone widget.
  FocusNode? tfUserPhoneFocusNode;
  TextEditingController? tfUserPhoneTextController;
  final tfUserPhoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? tfUserPhoneTextControllerValidator;
  // Stores action output result for [Custom Action - caMobileFormats] action in Button widget.
  List<String>? resMobileFormats;

  @override
  void initState(BuildContext context) {
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
    cpDropdownDepartmentsCompanyModel =
        createModel(context, () => CpDropdownDepartmentsCompanyModel());
    cpDropdownTeamsDepartmentModel =
        createModel(context, () => CpDropdownTeamsDepartmentModel());
    cpDropdownProfilesDepartmentModel =
        createModel(context, () => CpDropdownProfilesDepartmentModel());
  }

  @override
  void dispose() {
    cpUserPicProfileModel.dispose();
    cpDropdownDepartmentsCompanyModel.dispose();
    cpDropdownTeamsDepartmentModel.dispose();
    cpDropdownProfilesDepartmentModel.dispose();
    tfUserNameFullFocusNode?.dispose();
    tfUserNameFullTextController?.dispose();

    tfUserNameShortFocusNode?.dispose();
    tfUserNameShortTextController?.dispose();

    tfUserPhoneFocusNode?.dispose();
    tfUserPhoneTextController?.dispose();
  }
}
