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

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> caSupabaseConnect(
  String tableName,
  Future<dynamic> Function() callbackAction,
) async {
  final supabase = Supabase.instance.client;

  supabase
      .channel(
          'realtime:$tableName') // Nome do canal, geralmente relacionado à tabela
      .onPostgresChanges(
        event: PostgresChangeEvent
            .all, // Escuta todos os eventos: INSERT, UPDATE, DELETE
        schema: 'public', // Esquema onde está a tabela
        table: tableName, // Nome da tabela
        callback: (payload) async {
          await callbackAction(); // Executa a ação recebida como parâmetro
          print(
              'Payload recebido: $payload'); // Exibe o payload no console para depuração
        },
      )
      .subscribe(); // Ativa a inscrição para o canal

  return; // Finaliza o método sem retornar valor
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
