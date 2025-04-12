import '../database.dart';

class VUsersTable extends SupabaseTable<VUsersRow> {
  @override
  String get tableName => 'v_users';

  @override
  VUsersRow createRow(Map<String, dynamic> data) => VUsersRow(data);
}

class VUsersRow extends SupabaseDataRow {
  VUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VUsersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get companyCode => getField<String>('company_code');
  set companyCode(String? value) => setField<String>('company_code', value);

  String? get companyDescription => getField<String>('company_description');
  set companyDescription(String? value) =>
      setField<String>('company_description', value);

  String? get companyImgFilePath => getField<String>('company_img_file_path');
  set companyImgFilePath(String? value) =>
      setField<String>('company_img_file_path', value);

  String? get companyImgFileName => getField<String>('company_img_file_name');
  set companyImgFileName(String? value) =>
      setField<String>('company_img_file_name', value);

  String? get companyEmailSufix => getField<String>('company_email_sufix');
  set companyEmailSufix(String? value) =>
      setField<String>('company_email_sufix', value);

  bool? get companyIsAvailable => getField<bool>('company_is_available');
  set companyIsAvailable(bool? value) =>
      setField<bool>('company_is_available', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get departmentCode => getField<String>('department_code');
  set departmentCode(String? value) =>
      setField<String>('department_code', value);

  String? get departmentDescription =>
      getField<String>('department_description');
  set departmentDescription(String? value) =>
      setField<String>('department_description', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nameShort => getField<String>('name_short');
  set nameShort(String? value) => setField<String>('name_short', value);

  String? get nameFull => getField<String>('name_full');
  set nameFull(String? value) => setField<String>('name_full', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get teamCode => getField<String>('team_code');
  set teamCode(String? value) => setField<String>('team_code', value);

  String? get teamDescription => getField<String>('team_description');
  set teamDescription(String? value) =>
      setField<String>('team_description', value);

  int? get teamAmount => getField<int>('team_amount');
  set teamAmount(int? value) => setField<int>('team_amount', value);

  int? get teamIdPrevious => getField<int>('team_id_previous');
  set teamIdPrevious(int? value) => setField<int>('team_id_previous', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  String? get statusCode => getField<String>('status_code');
  set statusCode(String? value) => setField<String>('status_code', value);

  String? get statusDescription => getField<String>('status_description');
  set statusDescription(String? value) =>
      setField<String>('status_description', value);

  bool? get isTeamLeader => getField<bool>('is_team_leader');
  set isTeamLeader(bool? value) => setField<bool>('is_team_leader', value);

  bool? get isAdmin => getField<bool>('is_admin');
  set isAdmin(bool? value) => setField<bool>('is_admin', value);

  bool? get isAdminSuper => getField<bool>('is_admin_super');
  set isAdminSuper(bool? value) => setField<bool>('is_admin_super', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  int? get ovIdInProgress => getField<int>('ov_id_in_progress');
  set ovIdInProgress(int? value) => setField<int>('ov_id_in_progress', value);

  int? get oIdInProgress => getField<int>('o_id_in_progress');
  set oIdInProgress(int? value) => setField<int>('o_id_in_progress', value);

  int? get opIdInProgress => getField<int>('op_id_in_progress');
  set opIdInProgress(int? value) => setField<int>('op_id_in_progress', value);

  int? get ovInProgressLeaderId => getField<int>('ov_in_progress_leader_id');
  set ovInProgressLeaderId(int? value) =>
      setField<int>('ov_in_progress_leader_id', value);

  int? get profileId => getField<int>('profile_id');
  set profileId(int? value) => setField<int>('profile_id', value);

  String? get profileDescription => getField<String>('profile_description');
  set profileDescription(String? value) =>
      setField<String>('profile_description', value);

  int? get vehicleId => getField<int>('vehicle_id');
  set vehicleId(int? value) => setField<int>('vehicle_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isOvInProgress => getField<bool>('is_ov_in_progress');
  set isOvInProgress(bool? value) => setField<bool>('is_ov_in_progress', value);

  String? get versionApp => getField<String>('version_app');
  set versionApp(String? value) => setField<String>('version_app', value);

  int? get oContractIdInProgress => getField<int>('o_contract_id_in_progress');
  set oContractIdInProgress(int? value) =>
      setField<int>('o_contract_id_in_progress', value);

  int? get oTypeIdInProgress => getField<int>('o_type_id_in_progress');
  set oTypeIdInProgress(int? value) =>
      setField<int>('o_type_id_in_progress', value);

  int? get oTypeSubIdInProgress => getField<int>('o_type_sub_id_in_progress');
  set oTypeSubIdInProgress(int? value) =>
      setField<int>('o_type_sub_id_in_progress', value);

  int? get oPlanIdInProgress => getField<int>('o_plan_id_in_progress');
  set oPlanIdInProgress(int? value) =>
      setField<int>('o_plan_id_in_progress', value);

  int? get oAssetTagIdInProgress => getField<int>('o_asset_tag_id_in_progress');
  set oAssetTagIdInProgress(int? value) =>
      setField<int>('o_asset_tag_id_in_progress', value);

  int? get oUnitIdInProgress => getField<int>('o_unit_id_in_progress');
  set oUnitIdInProgress(int? value) =>
      setField<int>('o_unit_id_in_progress', value);

  int? get oSystemIdInProgress => getField<int>('o_system_id_in_progress');
  set oSystemIdInProgress(int? value) =>
      setField<int>('o_system_id_in_progress', value);

  int? get oSystemParentIdInProgress =>
      getField<int>('o_system_parent_id_in_progress');
  set oSystemParentIdInProgress(int? value) =>
      setField<int>('o_system_parent_id_in_progress', value);

  int? get oUnitTypeIdInProgress => getField<int>('o_unit_type_id_in_progress');
  set oUnitTypeIdInProgress(int? value) =>
      setField<int>('o_unit_type_id_in_progress', value);

  int? get oObjectIdInProgress => getField<int>('o_object_id_in_progress');
  set oObjectIdInProgress(int? value) =>
      setField<int>('o_object_id_in_progress', value);

  String? get tokenFcm => getField<String>('token_fcm');
  set tokenFcm(String? value) => setField<String>('token_fcm', value);

  int? get notificationsAmount => getField<int>('notifications_amount');
  set notificationsAmount(int? value) =>
      setField<int>('notifications_amount', value);

  String? get mobile => getField<String>('mobile');
  set mobile(String? value) => setField<String>('mobile', value);

  String? get mobileFull => getField<String>('mobile_full');
  set mobileFull(String? value) => setField<String>('mobile_full', value);

  String? get mobileMask => getField<String>('mobile_mask');
  set mobileMask(String? value) => setField<String>('mobile_mask', value);

  String? get mobileWhatsapp => getField<String>('mobile_whatsapp');
  set mobileWhatsapp(String? value) =>
      setField<String>('mobile_whatsapp', value);
}
