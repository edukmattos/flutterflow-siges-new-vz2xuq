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

List<String> caMobileFormats(String? mobileMask) {
  // Add your function code here!
// Se mobileMask for nula, retorna uma lista vazia ou um valor padrão
  if (mobileMask == null) {
    return ['', '', ''];
  }
  String somenteDigitos = '';

  // Itera sobre cada caractere da string
  for (int i = 0; i < mobileMask.length; i++) {
    // Verifica se o caractere atual é um dígito (0 a 9)
    if (mobileMask[i].codeUnitAt(0) >= 48 &&
        mobileMask[i].codeUnitAt(0) <= 57) {
      somenteDigitos += mobileMask[i];
    }
  }

  // Adiciona o código do país (55 para Brasil)
  String mobileFull = '55$somenteDigitos';

  // Formata para o WhatsApp
  String mobileWhatsapp = '$mobileFull@s.whatsapp.net';

  String mobile = somenteDigitos;

  // Retorna ambas as variáveis em uma lista
  return [mobileFull, mobileWhatsapp, mobile];
}
