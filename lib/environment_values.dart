import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Production';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _envApiUrl = data['envApiUrl'];
      _envApiKey = data['envApiKey'];
      _envStorageUrl = data['envStorageUrl'];
      _envJSReport = data['envJSReport'];
      _envJSReportUser = data['envJSReportUser'];
      _envJSReportPassword = data['envJSReportPassword'];
      _envStorageBucket = data['envStorageBucket'];
      _envStorageAccessKey = data['envStorageAccessKey'];
      _envStorageSecretKey = data['envStorageSecretKey'];
      _envStorageRegion = data['envStorageRegion'];
      _envStorageService = data['envStorageService'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _envApiUrl = '';
  String get envApiUrl => _envApiUrl;

  String _envApiKey = '';
  String get envApiKey => _envApiKey;

  String _envStorageUrl = '';
  String get envStorageUrl => _envStorageUrl;

  String _envJSReport = '';
  String get envJSReport => _envJSReport;

  String _envJSReportUser = '';
  String get envJSReportUser => _envJSReportUser;

  String _envJSReportPassword = '';
  String get envJSReportPassword => _envJSReportPassword;

  String _envStorageBucket = '';
  String get envStorageBucket => _envStorageBucket;

  String _envStorageAccessKey = '';
  String get envStorageAccessKey => _envStorageAccessKey;

  String _envStorageSecretKey = '';
  String get envStorageSecretKey => _envStorageSecretKey;

  String _envStorageRegion = '';
  String get envStorageRegion => _envStorageRegion;

  String _envStorageService = '';
  String get envStorageService => _envStorageService;
}
