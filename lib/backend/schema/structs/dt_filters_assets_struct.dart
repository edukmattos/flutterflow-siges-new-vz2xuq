// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtFiltersAssetsStruct extends BaseStruct {
  DtFiltersAssetsStruct({
    List<int>? units,
    List<int>? statuses,
    List<int>? tags,
    List<int>? tagsSubs,
    List<int>? types,
    String? searchTerms,
  })  : _units = units,
        _statuses = statuses,
        _tags = tags,
        _tagsSubs = tagsSubs,
        _types = types,
        _searchTerms = searchTerms;

  // "units" field.
  List<int>? _units;
  List<int> get units => _units ?? const [];
  set units(List<int>? val) => _units = val;

  void updateUnits(Function(List<int>) updateFn) {
    updateFn(_units ??= []);
  }

  bool hasUnits() => _units != null;

  // "statuses" field.
  List<int>? _statuses;
  List<int> get statuses => _statuses ?? const [];
  set statuses(List<int>? val) => _statuses = val;

  void updateStatuses(Function(List<int>) updateFn) {
    updateFn(_statuses ??= []);
  }

  bool hasStatuses() => _statuses != null;

  // "tags" field.
  List<int>? _tags;
  List<int> get tags => _tags ?? const [];
  set tags(List<int>? val) => _tags = val;

  void updateTags(Function(List<int>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "tags_subs" field.
  List<int>? _tagsSubs;
  List<int> get tagsSubs => _tagsSubs ?? const [];
  set tagsSubs(List<int>? val) => _tagsSubs = val;

  void updateTagsSubs(Function(List<int>) updateFn) {
    updateFn(_tagsSubs ??= []);
  }

  bool hasTagsSubs() => _tagsSubs != null;

  // "types" field.
  List<int>? _types;
  List<int> get types => _types ?? const [];
  set types(List<int>? val) => _types = val;

  void updateTypes(Function(List<int>) updateFn) {
    updateFn(_types ??= []);
  }

  bool hasTypes() => _types != null;

  // "search_terms" field.
  String? _searchTerms;
  String get searchTerms => _searchTerms ?? '';
  set searchTerms(String? val) => _searchTerms = val;

  bool hasSearchTerms() => _searchTerms != null;

  static DtFiltersAssetsStruct fromMap(Map<String, dynamic> data) =>
      DtFiltersAssetsStruct(
        units: getDataList(data['units']),
        statuses: getDataList(data['statuses']),
        tags: getDataList(data['tags']),
        tagsSubs: getDataList(data['tags_subs']),
        types: getDataList(data['types']),
        searchTerms: data['search_terms'] as String?,
      );

  static DtFiltersAssetsStruct? maybeFromMap(dynamic data) => data is Map
      ? DtFiltersAssetsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'units': _units,
        'statuses': _statuses,
        'tags': _tags,
        'tags_subs': _tagsSubs,
        'types': _types,
        'search_terms': _searchTerms,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'units': serializeParam(
          _units,
          ParamType.int,
          isList: true,
        ),
        'statuses': serializeParam(
          _statuses,
          ParamType.int,
          isList: true,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.int,
          isList: true,
        ),
        'tags_subs': serializeParam(
          _tagsSubs,
          ParamType.int,
          isList: true,
        ),
        'types': serializeParam(
          _types,
          ParamType.int,
          isList: true,
        ),
        'search_terms': serializeParam(
          _searchTerms,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtFiltersAssetsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtFiltersAssetsStruct(
        units: deserializeParam<int>(
          data['units'],
          ParamType.int,
          true,
        ),
        statuses: deserializeParam<int>(
          data['statuses'],
          ParamType.int,
          true,
        ),
        tags: deserializeParam<int>(
          data['tags'],
          ParamType.int,
          true,
        ),
        tagsSubs: deserializeParam<int>(
          data['tags_subs'],
          ParamType.int,
          true,
        ),
        types: deserializeParam<int>(
          data['types'],
          ParamType.int,
          true,
        ),
        searchTerms: deserializeParam(
          data['search_terms'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtFiltersAssetsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DtFiltersAssetsStruct &&
        listEquality.equals(units, other.units) &&
        listEquality.equals(statuses, other.statuses) &&
        listEquality.equals(tags, other.tags) &&
        listEquality.equals(tagsSubs, other.tagsSubs) &&
        listEquality.equals(types, other.types) &&
        searchTerms == other.searchTerms;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([units, statuses, tags, tagsSubs, types, searchTerms]);
}

DtFiltersAssetsStruct createDtFiltersAssetsStruct({
  String? searchTerms,
}) =>
    DtFiltersAssetsStruct(
      searchTerms: searchTerms,
    );
