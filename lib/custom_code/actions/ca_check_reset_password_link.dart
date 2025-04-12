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

String? caCheckResetPasswordLink() {
  final uri = Uri.base; // Não use .toString() aqui
  final error = uri.queryParameters['error'];
  final errorCode = uri.queryParameters['error_code'];
  final errorDescription = uri.queryParameters['error_description'];

  if (errorCode == 'otp_expired') {
    return 'Link expirado. Solicite um novo e-mail para redefinir sua senha.';
  } else if (error != null || errorCode != null) {
    return errorDescription ?? 'Ocorreu um erro ao tentar acessar o link.';
  }

  return '';

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
