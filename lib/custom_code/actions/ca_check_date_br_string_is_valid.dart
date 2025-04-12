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

bool caCheckDateBrStringIsValid(String dateBR) {
  // Verifica se a string tem o formato correto com 10 caracteres (dd/MM/yyyy)
  if (dateBR.length != 10) return false;

  // Tenta dividir a string nos componentes dia, mês e ano
  final parts = dateBR.split('/');
  if (parts.length != 3) return false;

  final day = int.tryParse(parts[0]);
  final month = int.tryParse(parts[1]);
  final year = int.tryParse(parts[2]);

  // Verifica se dia, mês e ano são números válidos
  if (day == null || month == null || year == null) return false;

  // Verifica se o mês está entre 1 e 12
  if (month < 1 || month > 12) return false;

  // Verifica se o dia está dentro do intervalo válido para o mês e ano fornecidos
  final lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day < 1 || day > lastDayOfMonth) return false;

  return true;
}
