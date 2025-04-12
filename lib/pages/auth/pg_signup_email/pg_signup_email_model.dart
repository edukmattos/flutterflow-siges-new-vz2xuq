import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_companies_available/cp_dropdown_companies_available_widget.dart';
import '/pages/components/cp_dropdown_teams_company/cp_dropdown_teams_company_widget.dart';
import '/index.dart';
import 'pg_signup_email_widget.dart' show PgSignupEmailWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PgSignupEmailModel extends FlutterFlowModel<PgSignupEmailWidget> {
  ///  Local state fields for this page.

  String? lpsvMobileFull;

  String? lpsvMobileWhatsapp;

  String? lpsvMobile;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf_signup_email widget.
  FocusNode? tfSignupEmailFocusNode;
  TextEditingController? tfSignupEmailTextController;
  String? Function(BuildContext, String?)? tfSignupEmailTextControllerValidator;
  // State field(s) for tf_signup_name_full widget.
  FocusNode? tfSignupNameFullFocusNode;
  TextEditingController? tfSignupNameFullTextController;
  String? Function(BuildContext, String?)?
      tfSignupNameFullTextControllerValidator;
  // State field(s) for tf_signup_name_short widget.
  FocusNode? tfSignupNameShortFocusNode;
  TextEditingController? tfSignupNameShortTextController;
  String? Function(BuildContext, String?)?
      tfSignupNameShortTextControllerValidator;
  // State field(s) for tf_signup_password widget.
  FocusNode? tfSignupPasswordFocusNode;
  TextEditingController? tfSignupPasswordTextController;
  late bool tfSignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      tfSignupPasswordTextControllerValidator;
  // State field(s) for tf_signup_password_confirm widget.
  FocusNode? tfSignupPasswordConfirmFocusNode;
  TextEditingController? tfSignupPasswordConfirmTextController;
  late bool tfSignupPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      tfSignupPasswordConfirmTextControllerValidator;
  // Model for cpDropdownCompaniesAvailable component.
  late CpDropdownCompaniesAvailableModel cpDropdownCompaniesAvailableModel;
  // Model for cpDropdownTeamsCompany component.
  late CpDropdownTeamsCompanyModel cpDropdownTeamsCompanyModel;
  // State field(s) for tf_signup_mobile widget.
  FocusNode? tfSignupMobileFocusNode;
  TextEditingController? tfSignupMobileTextController;
  final tfSignupMobileMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      tfSignupMobileTextControllerValidator;
  // Stores action output result for [Custom Action - caMobileFormats] action in Button widget.
  List<String>? resMobileFormats;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UsersRow? resUserAdded;

  @override
  void initState(BuildContext context) {
    tfSignupPasswordVisibility = false;
    tfSignupPasswordConfirmVisibility = false;
    cpDropdownCompaniesAvailableModel =
        createModel(context, () => CpDropdownCompaniesAvailableModel());
    cpDropdownTeamsCompanyModel =
        createModel(context, () => CpDropdownTeamsCompanyModel());
  }

  @override
  void dispose() {
    tfSignupEmailFocusNode?.dispose();
    tfSignupEmailTextController?.dispose();

    tfSignupNameFullFocusNode?.dispose();
    tfSignupNameFullTextController?.dispose();

    tfSignupNameShortFocusNode?.dispose();
    tfSignupNameShortTextController?.dispose();

    tfSignupPasswordFocusNode?.dispose();
    tfSignupPasswordTextController?.dispose();

    tfSignupPasswordConfirmFocusNode?.dispose();
    tfSignupPasswordConfirmTextController?.dispose();

    cpDropdownCompaniesAvailableModel.dispose();
    cpDropdownTeamsCompanyModel.dispose();
    tfSignupMobileFocusNode?.dispose();
    tfSignupMobileTextController?.dispose();
  }
}
