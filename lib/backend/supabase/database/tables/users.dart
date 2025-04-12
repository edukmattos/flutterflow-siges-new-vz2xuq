import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get nameFull => getField<String>('name_full');
  set nameFull(String? value) => setField<String>('name_full', value);

  String? get nameShort => getField<String>('name_short');
  set nameShort(String? value) => setField<String>('name_short', value);

  String? get mobile => getField<String>('mobile');
  set mobile(String? value) => setField<String>('mobile', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  bool? get isTeamLeader => getField<bool>('is_team_leader');
  set isTeamLeader(bool? value) => setField<bool>('is_team_leader', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get departmentId => getField<int>('department_id');
  set departmentId(int? value) => setField<int>('department_id', value);

  String? get tokenFcm => getField<String>('token_fcm');
  set tokenFcm(String? value) => setField<String>('token_fcm', value);

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  bool? get isAdmin => getField<bool>('is_admin');
  set isAdmin(bool? value) => setField<bool>('is_admin', value);

  bool? get isAdminSuper => getField<bool>('is_admin_super');
  set isAdminSuper(bool? value) => setField<bool>('is_admin_super', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get versionApp => getField<String>('version_app');
  set versionApp(String? value) => setField<String>('version_app', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  int? get teamIdPrevious => getField<int>('team_id_previous');
  set teamIdPrevious(int? value) => setField<int>('team_id_previous', value);

  int? get ovInProgressLeaderId => getField<int>('ov_in_progress_leader_id');
  set ovInProgressLeaderId(int? value) =>
      setField<int>('ov_in_progress_leader_id', value);

  int? get profileId => getField<int>('profile_id');
  set profileId(int? value) => setField<int>('profile_id', value);

  int? get vehicleId => getField<int>('vehicle_id');
  set vehicleId(int? value) => setField<int>('vehicle_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  bool? get isOvInProgress => getField<bool>('is_ov_in_progress');
  set isOvInProgress(bool? value) => setField<bool>('is_ov_in_progress', value);

  int? get teamAmount => getField<int>('team_amount');
  set teamAmount(int? value) => setField<int>('team_amount', value);

  String? get versionOfflineUser => getField<String>('version_offline_user');
  set versionOfflineUser(String? value) =>
      setField<String>('version_offline_user', value);

  String? get versionOfflineApp => getField<String>('version_offline_app');
  set versionOfflineApp(String? value) =>
      setField<String>('version_offline_app', value);

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

  int? get oUnitTypeParentIdInProgress =>
      getField<int>('o_unit_type_parent_id_in_progress');
  set oUnitTypeParentIdInProgress(int? value) =>
      setField<int>('o_unit_type_parent_id_in_progress', value);

  int? get oObjectIdInProgress => getField<int>('o_object_id_in_progress');
  set oObjectIdInProgress(int? value) =>
      setField<int>('o_object_id_in_progress', value);

  int? get ovIdInProgress => getField<int>('ov_id_in_progress');
  set ovIdInProgress(int? value) => setField<int>('ov_id_in_progress', value);

  int? get oIdInProgress => getField<int>('o_id_in_progress');
  set oIdInProgress(int? value) => setField<int>('o_id_in_progress', value);

  int? get opIdInProgress => getField<int>('op_id_in_progress');
  set opIdInProgress(int? value) => setField<int>('op_id_in_progress', value);

  int? get notificationsAmount => getField<int>('notifications_amount');
  set notificationsAmount(int? value) =>
      setField<int>('notifications_amount', value);

  String? get mobileFull => getField<String>('mobile_full');
  set mobileFull(String? value) => setField<String>('mobile_full', value);

  String? get mobileMask => getField<String>('mobile_mask');
  set mobileMask(String? value) => setField<String>('mobile_mask', value);

  String? get mobileWhatsapp => getField<String>('mobile_whatsapp');
  set mobileWhatsapp(String? value) =>
      setField<String>('mobile_whatsapp', value);

  DateTime? get migratedAt => getField<DateTime>('migrated_at');
  set migratedAt(DateTime? value) => setField<DateTime>('migrated_at', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  DateTime? get trackerAt => getField<DateTime>('tracker_at');
  set trackerAt(DateTime? value) => setField<DateTime>('tracker_at', value);
}
