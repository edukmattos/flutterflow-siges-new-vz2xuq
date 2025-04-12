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
import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> caCheckConnectivity() async {
  // Verifica conectividade com rede (Wi-Fi ou dados móveis)
  var connectivityResult = await Connectivity().checkConnectivity();
  if (connectivityResult == ConnectivityResult.none) {
    // Sem conectividade com rede
    //return false;
    return true;
  }

  // Testa a conectividade real, por exemplo, ping para um servidor
  try {
    final response =
        await http.get(Uri.parse('https://www.google.com')).timeout(
              const Duration(seconds: 5),
            );

    // Verifica se a resposta é um status válido (200 OK)
    if (response.statusCode == 200) {
      return true; // Internet funcionando
    } else {
      //return false; // Erro ao acessar o servidor
      return true;
    }
  } catch (e) {
    // Em caso de timeout ou erro na requisição
    //return false;
    return true;
  }
}
