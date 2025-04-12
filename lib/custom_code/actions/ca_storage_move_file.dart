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

Future<bool> caStorageMoveFile(
    String bucketName, String oldPath, String newPath) async {
  try {
    // Copiar o arquivo para a nova pasta
    final copyResponse = await Supabase.instance.client.storage
        .from(bucketName)
        .copy(oldPath, newPath);

    // Verificar se a resposta da cópia contém algum erro
    if (copyResponse != null &&
        copyResponse is String &&
        copyResponse.contains('error')) {
      print('Erro ao copiar o arquivo: $copyResponse');
      return false;
    }

    // Deletar o arquivo da pasta original
    final deleteResponse = await Supabase.instance.client.storage
        .from(bucketName)
        .remove([oldPath]);

    // Verificar se o deleteResponse retornou uma lista vazia, o que significa sucesso
    if (deleteResponse.isEmpty) {
      print('Erro ao deletar o arquivo original: operação falhou');
      return false;
    }

    // Se tudo deu certo, retorna true
    return true;
  } catch (e) {
    // Em caso de qualquer exceção, retorna false
    print('Erro ao mover o arquivo: $e');
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
