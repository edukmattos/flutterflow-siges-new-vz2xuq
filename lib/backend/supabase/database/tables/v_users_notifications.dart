import '../database.dart';

class VUsersNotificationsTable extends SupabaseTable<VUsersNotificationsRow> {
  @override
  String get tableName => 'v_users_notifications';

  @override
  VUsersNotificationsRow createRow(Map<String, dynamic> data) =>
      VUsersNotificationsRow(data);
}

class VUsersNotificationsRow extends SupabaseDataRow {
  VUsersNotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VUsersNotificationsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get userIdTo => getField<int>('user_id_to');
  set userIdTo(int? value) => setField<int>('user_id_to', value);

  int? get userIdFrom => getField<int>('user_id_from');
  set userIdFrom(int? value) => setField<int>('user_id_from', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  String? get imgUrl => getField<String>('img_url');
  set imgUrl(String? value) => setField<String>('img_url', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  int? get vId => getField<int>('v_id');
  set vId(int? value) => setField<int>('v_id', value);

  int? get activityId => getField<int>('activity_id');
  set activityId(int? value) => setField<int>('activity_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get tokenFcm => getField<String>('token_fcm');
  set tokenFcm(String? value) => setField<String>('token_fcm', value);

  String? get imgFilePath => getField<String>('img_file_path');
  set imgFilePath(String? value) => setField<String>('img_file_path', value);

  String? get imgFileName => getField<String>('img_file_name');
  set imgFileName(String? value) => setField<String>('img_file_name', value);

  String? get userFromNameShort => getField<String>('user_from_name_short');
  set userFromNameShort(String? value) =>
      setField<String>('user_from_name_short', value);

  String? get pageTarget => getField<String>('page_target');
  set pageTarget(String? value) => setField<String>('page_target', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  String? get userToWhatsapp => getField<String>('user_to_whatsapp');
  set userToWhatsapp(String? value) =>
      setField<String>('user_to_whatsapp', value);
}
