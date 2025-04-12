import '../database.dart';

class VOrdersVisitsAssetsTable extends SupabaseTable<VOrdersVisitsAssetsRow> {
  @override
  String get tableName => 'v_orders_visits_assets';

  @override
  VOrdersVisitsAssetsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsAssetsRow(data);
}

class VOrdersVisitsAssetsRow extends SupabaseDataRow {
  VOrdersVisitsAssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VOrdersVisitsAssetsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get opId => getField<int>('op_id');
  set opId(int? value) => setField<int>('op_id', value);

  int? get oId => getField<int>('o_id');
  set oId(int? value) => setField<int>('o_id', value);

  String? get orderMask => getField<String>('order_mask');
  set orderMask(String? value) => setField<String>('order_mask', value);

  String? get oCompanyImgFilePath =>
      getField<String>('o_company_img_file_path');
  set oCompanyImgFilePath(String? value) =>
      setField<String>('o_company_img_file_path', value);

  String? get oCompanyImgFileName =>
      getField<String>('o_company_img_file_name');
  set oCompanyImgFileName(String? value) =>
      setField<String>('o_company_img_file_name', value);

  int? get oTypeId => getField<int>('o_type_id');
  set oTypeId(int? value) => setField<int>('o_type_id', value);

  int? get ovId => getField<int>('ov_id');
  set ovId(int? value) => setField<int>('ov_id', value);

  DateTime? get ovStartedAt => getField<DateTime>('ov_started_at');
  set ovStartedAt(DateTime? value) =>
      setField<DateTime>('ov_started_at', value);

  DateTime? get ovEndedAt => getField<DateTime>('ov_ended_at');
  set ovEndedAt(DateTime? value) => setField<DateTime>('ov_ended_at', value);

  String? get oTeamCode => getField<String>('o_team_code');
  set oTeamCode(String? value) => setField<String>('o_team_code', value);

  String? get oTeamLeaderNameShort =>
      getField<String>('o_team_leader_name_short');
  set oTeamLeaderNameShort(String? value) =>
      setField<String>('o_team_leader_name_short', value);

  String? get oTypeCode => getField<String>('o_type_code');
  set oTypeCode(String? value) => setField<String>('o_type_code', value);

  String? get oTypeSubCode => getField<String>('o_type_sub_code');
  set oTypeSubCode(String? value) => setField<String>('o_type_sub_code', value);

  int? get assetId => getField<int>('asset_id');
  set assetId(int? value) => setField<int>('asset_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isMoved => getField<bool>('is_moved');
  set isMoved(bool? value) => setField<bool>('is_moved', value);

  int? get beforeUnitId => getField<int>('before_unit_id');
  set beforeUnitId(int? value) => setField<int>('before_unit_id', value);

  String? get beforeUnitCode => getField<String>('before_unit_code');
  set beforeUnitCode(String? value) =>
      setField<String>('before_unit_code', value);

  String? get beforeUnitDescription =>
      getField<String>('before_unit_description');
  set beforeUnitDescription(String? value) =>
      setField<String>('before_unit_description', value);

  double? get beforeUnitLatitude => getField<double>('before_unit_latitude');
  set beforeUnitLatitude(double? value) =>
      setField<double>('before_unit_latitude', value);

  double? get beforeUnitLongitude => getField<double>('before_unit_longitude');
  set beforeUnitLongitude(double? value) =>
      setField<double>('before_unit_longitude', value);

  int? get beforeTagId => getField<int>('before_tag_id');
  set beforeTagId(int? value) => setField<int>('before_tag_id', value);

  String? get beforeTagDescription =>
      getField<String>('before_tag_description');
  set beforeTagDescription(String? value) =>
      setField<String>('before_tag_description', value);

  int? get beforeTagSubId => getField<int>('before_tag_sub_id');
  set beforeTagSubId(int? value) => setField<int>('before_tag_sub_id', value);

  String? get beforeTagSubDescription =>
      getField<String>('before_tag_sub_description');
  set beforeTagSubDescription(String? value) =>
      setField<String>('before_tag_sub_description', value);

  int? get beforeStatusId => getField<int>('before_status_id');
  set beforeStatusId(int? value) => setField<int>('before_status_id', value);

  String? get beforeStatusDescription =>
      getField<String>('before_status_description');
  set beforeStatusDescription(String? value) =>
      setField<String>('before_status_description', value);

  String? get beforeStatusCode => getField<String>('before_status_code');
  set beforeStatusCode(String? value) =>
      setField<String>('before_status_code', value);

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

  int? get beforeRecorder => getField<int>('before_recorder');
  set beforeRecorder(int? value) => setField<int>('before_recorder', value);

  double? get beforeLatitude => getField<double>('before_latitude');
  set beforeLatitude(double? value) =>
      setField<double>('before_latitude', value);

  double? get beforeLongitude => getField<double>('before_longitude');
  set beforeLongitude(double? value) =>
      setField<double>('before_longitude', value);

  int? get beforePriorityId => getField<int>('before_priority_id');
  set beforePriorityId(int? value) =>
      setField<int>('before_priority_id', value);

  String? get beforePriorityDescription =>
      getField<String>('before_priority_description');
  set beforePriorityDescription(String? value) =>
      setField<String>('before_priority_description', value);

  int? get afterUnitId => getField<int>('after_unit_id');
  set afterUnitId(int? value) => setField<int>('after_unit_id', value);

  String? get afterUnitCode => getField<String>('after_unit_code');
  set afterUnitCode(String? value) =>
      setField<String>('after_unit_code', value);

  String? get afterUnitDescription =>
      getField<String>('after_unit_description');
  set afterUnitDescription(String? value) =>
      setField<String>('after_unit_description', value);

  double? get afterUnitLatitude => getField<double>('after_unit_latitude');
  set afterUnitLatitude(double? value) =>
      setField<double>('after_unit_latitude', value);

  double? get afterUnitLongitude => getField<double>('after_unit_longitude');
  set afterUnitLongitude(double? value) =>
      setField<double>('after_unit_longitude', value);

  int? get afterTagId => getField<int>('after_tag_id');
  set afterTagId(int? value) => setField<int>('after_tag_id', value);

  String? get afterTagDescription => getField<String>('after_tag_description');
  set afterTagDescription(String? value) =>
      setField<String>('after_tag_description', value);

  int? get afterTagSubId => getField<int>('after_tag_sub_id');
  set afterTagSubId(int? value) => setField<int>('after_tag_sub_id', value);

  String? get afterTagSubDescription =>
      getField<String>('after_tag_sub_description');
  set afterTagSubDescription(String? value) =>
      setField<String>('after_tag_sub_description', value);

  int? get afterStatusId => getField<int>('after_status_id');
  set afterStatusId(int? value) => setField<int>('after_status_id', value);

  String? get afterStatusDescription =>
      getField<String>('after_status_description');
  set afterStatusDescription(String? value) =>
      setField<String>('after_status_description', value);

  String? get afterStatusCode => getField<String>('after_status_code');
  set afterStatusCode(String? value) =>
      setField<String>('after_status_code', value);

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

  int? get afterRecorder => getField<int>('after_recorder');
  set afterRecorder(int? value) => setField<int>('after_recorder', value);

  double? get afterLatitude => getField<double>('after_latitude');
  set afterLatitude(double? value) => setField<double>('after_latitude', value);

  double? get afterLongitude => getField<double>('after_longitude');
  set afterLongitude(double? value) =>
      setField<double>('after_longitude', value);

  int? get afterPriorityId => getField<int>('after_priority_id');
  set afterPriorityId(int? value) => setField<int>('after_priority_id', value);

  String? get afterPriorityDescription =>
      getField<String>('after_priority_description');
  set afterPriorityDescription(String? value) =>
      setField<String>('after_priority_description', value);

  int? get processingId => getField<int>('processing_id');
  set processingId(int? value) => setField<int>('processing_id', value);

  String? get processingDescription =>
      getField<String>('processing_description');
  set processingDescription(String? value) =>
      setField<String>('processing_description', value);

  String? get movedComments => getField<String>('moved_comments');
  set movedComments(String? value) => setField<String>('moved_comments', value);

  int? get reportedUserId => getField<int>('reported_user_id');
  set reportedUserId(int? value) => setField<int>('reported_user_id', value);

  String? get reportedUserNameShort =>
      getField<String>('reported_user_name_short');
  set reportedUserNameShort(String? value) =>
      setField<String>('reported_user_name_short', value);

  DateTime? get reportedAt => getField<DateTime>('reported_at');
  set reportedAt(DateTime? value) => setField<DateTime>('reported_at', value);

  int? get disapprovedUserId => getField<int>('disapproved_user_id');
  set disapprovedUserId(int? value) =>
      setField<int>('disapproved_user_id', value);

  String? get disapprovedUserNameShort =>
      getField<String>('disapproved_user_name_short');
  set disapprovedUserNameShort(String? value) =>
      setField<String>('disapproved_user_name_short', value);

  DateTime? get disapprovedAt => getField<DateTime>('disapproved_at');
  set disapprovedAt(DateTime? value) =>
      setField<DateTime>('disapproved_at', value);

  String? get disapprovedNotes => getField<String>('disapproved_notes');
  set disapprovedNotes(String? value) =>
      setField<String>('disapproved_notes', value);

  int? get approvedUserId => getField<int>('approved_user_id');
  set approvedUserId(int? value) => setField<int>('approved_user_id', value);

  String? get approvedUserNameShort =>
      getField<String>('approved_user_name_short');
  set approvedUserNameShort(String? value) =>
      setField<String>('approved_user_name_short', value);

  DateTime? get approvedAt => getField<DateTime>('approved_at');
  set approvedAt(DateTime? value) => setField<DateTime>('approved_at', value);

  String? get activitiesSearchable => getField<String>('activities_searchable');
  set activitiesSearchable(String? value) =>
      setField<String>('activities_searchable', value);

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

  String? get versionMode => getField<String>('version_mode');
  set versionMode(String? value) => setField<String>('version_mode', value);
}
