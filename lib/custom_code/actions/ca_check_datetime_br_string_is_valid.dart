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

bool caCheckDatetimeBrStringIsValid(String datetimeBR) {
  // Verifica se a string tem o formato correto com 16 caracteres (dd/MM/yyyy HH:mm)
  if (datetimeBR.length != 16) return false;

  // Verifica se está no formato correto usando regex
  final regex = RegExp(r'^\d{2}/\d{2}/\d{4} \d{2}:\d{2}$');
  if (!regex.hasMatch(datetimeBR)) return false;

  // Divide a string nos componentes dia, mês, ano, hora e minuto
  final dateTimeParts = datetimeBR.split(' ');
  final dateParts = dateTimeParts[0].split('/');
  final timeParts = dateTimeParts[1].split(':');

  final day = int.tryParse(dateParts[0]);
  final month = int.tryParse(dateParts[1]);
  final year = int.tryParse(dateParts[2]);
  final hour = int.tryParse(timeParts[0]);
  final minute = int.tryParse(timeParts[1]);

  // Verifica se os valores são válidos
  if (day == null ||
      month == null ||
      year == null ||
      hour == null ||
      minute == null) return false;

  // Verifica se o mês está entre 1 e 12
  if (month < 1 || month > 12) return false;

  // Verifica se o dia está dentro do intervalo válido para o mês e ano fornecidos
  final lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day < 1 || day > lastDayOfMonth) return false;

  // Verifica se a hora e os minutos são válidos
  if (hour < 0 || hour > 23 || minute < 0 || minute > 59) return false;

  return true;
}
