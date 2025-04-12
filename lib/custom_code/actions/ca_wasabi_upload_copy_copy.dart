// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:typed_data';

Future<bool> caWasabiUploadCopyCopy(
    FFUploadedFile file,
    String storageUrl,
    String bucketName,
    String accessKey,
    String secretKey,
    String filePath,
    String authorizationHeader) async {
  final String fileName = file.name ?? (throw Exception('File name is null'));
  final String url = '$storageUrl/$bucketName/$filePath/$fileName';

  try {
    var request = http.MultipartRequest('PUT', Uri.parse(url))
      ..files.add(http.MultipartFile.fromBytes(
        'file',
        file.bytes!,
        filename: fileName,
      ))
      ..headers.addAll({
        'Content-Type': 'application/octet-stream',
        'Authorization': authorizationHeader,
        'x-amz-date': DateTime.now().toUtc().toIso8601String(),
      });

    var response = await request.send();

    if (response.statusCode == 200) {
      print('File uploaded successfully');
      return true;
    } else {
      print('Failed to upload file: ${response.statusCode}');
      print(await response.stream.bytesToString());
      return false;
    }
  } catch (e) {
    print('Error uploading file: $e');
    return false;
  }
}
