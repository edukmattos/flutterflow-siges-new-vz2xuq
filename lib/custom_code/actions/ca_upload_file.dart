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

import 'package:http/http.dart'
    as http; // Certifique-se de que esta linha está presente
import 'dart:convert';

Future<String> caUploadFile(FFUploadedFile file, String bucketName,
    String accessKey, String secretKey) async {
  // Verificar se o arquivo foi carregado corretamente
  if (file == null || file.bytes == null || file.name == null) {
    print(
        'Erro: Nenhum arquivo foi carregado ou nome do arquivo está ausente.');
    throw Exception(
        'Nenhum arquivo foi carregado ou nome do arquivo está ausente.');
  }

  // Construir a URL para o upload
  final String fileName = file.name!;
  final String url = 'https://$bucketName.s3.wasabisys.com/$fileName';

  print('Uploading to URL: $url');

  try {
    // Criar a requisição Multipart
    var request = http.MultipartRequest('PUT', Uri.parse(url))
      ..files.add(
          http.MultipartFile.fromBytes('file', file.bytes!, filename: fileName))
      ..headers.addAll({
        'Content-Type': 'multipart/form-data',
        'Authorization':
            'Basic ' + base64Encode(utf8.encode('$accessKey:$secretKey')),
      });

    // Enviar a requisição
    var response = await request.send();

    // Verificar se o upload foi bem-sucedido
    if (response.statusCode == 200) {
      print('Arquivo carregado com sucesso');
      return url;
    } else {
      print('Falha ao carregar o arquivo: ${response.statusCode}');
      throw Exception('Falha ao carregar o arquivo: ${response.statusCode}');
    }
  } catch (e) {
    print('Erro ao carregar o arquivo: $e');
    throw Exception('Erro ao carregar o arquivo: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
