import '../database.dart';

class OrdersVisitsAssetsTable extends SupabaseTable<OrdersVisitsAssetsRow> {
  @override
  String get tableName => 'orders_visits_assets';

  @override
  OrdersVisitsAssetsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsAssetsRow(data);
}

class OrdersVisitsAssetsRow extends SupabaseDataRow {
  OrdersVisitsAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersVisitsAssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get ovId => getField<int>('ov_id')!;
  set ovId(int value) => setField<int>('ov_id', value);

  int get assetId => getField<int>('asset_id')!;
  set assetId(int value) => setField<int>('asset_id', value);

  int? get beforeUnitId => getField<int>('before_unit_id');
  set beforeUnitId(int? value) => setField<int>('before_unit_id', value);

  int? get beforeTagId => getField<int>('before_tag_id');
  set beforeTagId(int? value) => setField<int>('before_tag_id', value);

  int? get beforeTagSubId => getField<int>('before_tag_sub_id');
  set beforeTagSubId(int? value) => setField<int>('before_tag_sub_id', value);

  int? get beforeStatusId => getField<int>('before_status_id');
  set beforeStatusId(int? value) => setField<int>('before_status_id', value);

  DateTime? get beforeStatusAt => getField<DateTime>('before_status_at');
  set beforeStatusAt(DateTime? value) =>
      setField<DateTime>('before_status_at', value);

  String? get beforeComments => getField<String>('before_comments');
  set beforeComments(String? value) =>
      setField<String>('before_comments', value);

  String? get beforeImgFilePath => getField<String>('before_img_file_path');
  set beforeImgFilePath(String? value) =>
      setField<String>('before_img_file_path', value);

  String? get beforeImgFileName => getField<String>('before_img_file_name');
  set beforeImgFileName(String? value) =>
      setField<String>('before_img_file_name', value);

  double? get beforeLatitude => getField<double>('before_latitude');
  set beforeLatitude(double? value) =>
      setField<double>('before_latitude', value);

  double? get beforeLongitude => getField<double>('before_longitude');
  set beforeLongitude(double? value) =>
      setField<double>('before_longitude', value);

  double? get beforeUnitLatitude => getField<double>('before_unit_latitude');
  set beforeUnitLatitude(double? value) =>
      setField<double>('before_unit_latitude', value);

  double? get beforeUnitLongitude => getField<double>('before_unit_longitude');
  set beforeUnitLongitude(double? value) =>
      setField<double>('before_unit_longitude', value);

  int? get beforePriorityId => getField<int>('before_priority_id');
  set beforePriorityId(int? value) =>
      setField<int>('before_priority_id', value);

  int? get afterUnitId => getField<int>('after_unit_id');
  set afterUnitId(int? value) => setField<int>('after_unit_id', value);

  int? get afterTagId => getField<int>('after_tag_id');
  set afterTagId(int? value) => setField<int>('after_tag_id', value);

  int? get afterTagSubId => getField<int>('after_tag_sub_id');
  set afterTagSubId(int? value) => setField<int>('after_tag_sub_id', value);

  int? get afterStatusId => getField<int>('after_status_id');
  set afterStatusId(int? value) => setField<int>('after_status_id', value);

  DateTime? get afterStatusAt => getField<DateTime>('after_status_at');
  set afterStatusAt(DateTime? value) =>
      setField<DateTime>('after_status_at', value);

  String? get afterComments => getField<String>('after_comments');
  set afterComments(String? value) => setField<String>('after_comments', value);

  String? get afterImgFilePath => getField<String>('after_img_file_path');
  set afterImgFilePath(String? value) =>
      setField<String>('after_img_file_path', value);

  String? get afterImgFileName => getField<String>('after_img_file_name');
  set afterImgFileName(String? value) =>
      setField<String>('after_img_file_name', value);

  double? get afterLatitude => getField<double>('after_latitude');
  set afterLatitude(double? value) => setField<double>('after_latitude', value);

  double? get afterLongitude => getField<double>('after_longitude');
  set afterLongitude(double? value) =>
      setField<double>('after_longitude', value);

  double? get afterUnitLatitude => getField<double>('after_unit_latitude');
  set afterUnitLatitude(double? value) =>
      setField<double>('after_unit_latitude', value);

  double? get afterUnitLongitude => getField<double>('after_unit_longitude');
  set afterUnitLongitude(double? value) =>
      setField<double>('after_unit_longitude', value);

  int? get afterPriorityId => getField<int>('after_priority_id');
  set afterPriorityId(int? value) => setField<int>('after_priority_id', value);

  bool? get isMoved => getField<bool>('is_moved');
  set isMoved(bool? value) => setField<bool>('is_moved', value);

  String? get movedComments => getField<String>('moved_comments');
  set movedComments(String? value) => setField<String>('moved_comments', value);

  bool? get hasRecorder => getField<bool>('has_recorder');
  set hasRecorder(bool? value) => setField<bool>('has_recorder', value);

  int? get beforeRecorder => getField<int>('before_recorder');
  set beforeRecorder(int? value) => setField<int>('before_recorder', value);

  int? get afterRecorder => getField<int>('after_recorder');
  set afterRecorder(int? value) => setField<int>('after_recorder', value);

  int? get processingId => getField<int>('processing_id');
  set processingId(int? value) => setField<int>('processing_id', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  int? get opId => getField<int>('op_id');
  set opId(int? value) => setField<int>('op_id', value);

  String? get activitiesSearchable => getField<String>('activities_searchable');
  set activitiesSearchable(String? value) =>
      setField<String>('activities_searchable', value);

  int? get reportedUserId => getField<int>('reported_user_id');
  set reportedUserId(int? value) => setField<int>('reported_user_id', value);

  DateTime? get reportedAt => getField<DateTime>('reported_at');
  set reportedAt(DateTime? value) => setField<DateTime>('reported_at', value);

  int? get disapprovedUserId => getField<int>('disapproved_user_id');
  set disapprovedUserId(int? value) =>
      setField<int>('disapproved_user_id', value);

  DateTime? get disapprovedAt => getField<DateTime>('disapproved_at');
  set disapprovedAt(DateTime? value) =>
      setField<DateTime>('disapproved_at', value);

  String? get disapprovedNotes => getField<String>('disapproved_notes');
  set disapprovedNotes(String? value) =>
      setField<String>('disapproved_notes', value);

  int? get approvedUserId => getField<int>('approved_user_id');
  set approvedUserId(int? value) => setField<int>('approved_user_id', value);

  DateTime? get approvedAt => getField<DateTime>('approved_at');
  set approvedAt(DateTime? value) => setField<DateTime>('approved_at', value);

  int? get revisedUserId => getField<int>('revised_user_id');
  set revisedUserId(int? value) => setField<int>('revised_user_id', value);

  DateTime? get revisedAt => getField<DateTime>('revised_at');
  set revisedAt(DateTime? value) => setField<DateTime>('revised_at', value);

  int? get createdUserId => getField<int>('created_user_id');
  set createdUserId(int? value) => setField<int>('created_user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get createdLatitude => getField<double>('created_latitude');
  set createdLatitude(double? value) =>
      setField<double>('created_latitude', value);

  double? get createdLongitude => getField<double>('created_longitude');
  set createdLongitude(double? value) =>
      setField<double>('created_longitude', value);

  int? get updatedUserId => getField<int>('updated_user_id');
  set updatedUserId(int? value) => setField<int>('updated_user_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get deletedUserId => getField<int>('deleted_user_id');
  set deletedUserId(int? value) => setField<int>('deleted_user_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);

  int? get cartMaterialsAmount => getField<int>('cart_materials_amount');
  set cartMaterialsAmount(int? value) =>
      setField<int>('cart_materials_amount', value);

  double? get materialsValue => getField<double>('materials_value');
  set materialsValue(double? value) =>
      setField<double>('materials_value', value);

  double? get servicesValue => getField<double>('services_value');
  set servicesValue(double? value) => setField<double>('services_value', value);

  double? get vehiclesValue => getField<double>('vehicles_value');
  set vehiclesValue(double? value) => setField<double>('vehicles_value', value);

  double? get totalValue => getField<double>('total_value');
  set totalValue(double? value) => setField<double>('total_value', value);
}
