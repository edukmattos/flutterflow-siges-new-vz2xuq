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

// method (String) → Método HTTP (GET, POST, etc.) (Is List e Nullable desmarcados)
// url (String) → URL completa do endpoint AWS (Is List e Nullable desmarcados)
// body (String) → Corpo da requisição (pode ser vazio) (Is List e Nullable desmarcados)
// accessKey (String) → Chave de acesso AWS (Is List e Nullable desmarcados)
// secretKey (String) → Chave secreta AWS (Is List e Nullable desmarcados)
// region (String) → Região da AWS (Is List e Nullable desmarcados)
// service (String) → Nome do serviço AWS (ex: s3) (Is List e Nullable desmarcados)

import 'dart:convert';
import 'package:crypto/crypto.dart';

// Função correta para gerar a chave de assinatura
List<int> generateSignatureKey(
    String key, String dateStamp, String region, String service) {
  var kDate = Hmac(sha256, utf8.encode("AWS4$key"))
      .convert(utf8.encode(dateStamp))
      .bytes;
  var kRegion = Hmac(sha256, kDate).convert(utf8.encode(region)).bytes;
  var kService = Hmac(sha256, kRegion).convert(utf8.encode(service)).bytes;
  var kSigning =
      Hmac(sha256, kService).convert(utf8.encode("aws4_request")).bytes;
  return kSigning; // ✅ Removido base64Encode()
}

// Função principal para gerar a assinatura AWS V4
String caGenerateAwsSignatureV4(String method, String url, String body,
    String accessKey, String secretKey, String region, String service) {
  final uri = Uri.parse(url);
  final host = uri.host;
  final path = uri.path.isEmpty ? "/" : uri.path;
  final query = uri.query.isEmpty ? "" : uri.query;

  final now = DateTime.now().toUtc();
  final dateStamp =
      "${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}";
  final amzDate =
      "${dateStamp}T${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}${now.second.toString().padLeft(2, '0')}Z";

  print("DEBUG - dateStamp: $dateStamp");
  print("DEBUG - region recebido: '$region'");
  print("DEBUG - service recebido: '$service'");
  print("DEBUG - accessKey recebido: '$accessKey'");

  if (region.isEmpty || service.isEmpty) {
    print("ERRO: region ou service está vazio!");
  }

  final payloadHash = sha256.convert(utf8.encode(body)).toString();
  final canonicalRequest =
      "$method\n$path\n$query\nhost:$host\nx-amz-date:$amzDate\n\nhost;x-amz-date\n$payloadHash";
  final canonicalRequestHash =
      sha256.convert(utf8.encode(canonicalRequest)).toString();

  final credentialScope = "$dateStamp/$region/$service/aws4_request";
  // ✅ Adicionando prints para depuração
  print("DEBUG - dateStamp: $dateStamp");
  print("DEBUG - region: $region");
  print("DEBUG - service: $service");

  print(
      "DEBUG - credentialScope: $credentialScope"); // Verificar se está correto

  final stringToSign =
      "AWS4-HMAC-SHA256\n$amzDate\n$credentialScope\n$canonicalRequestHash";

  // ✅ Correção: usar a chave diretamente, sem base64Decode()
  final signingKey =
      generateSignatureKey(secretKey, dateStamp, region, service);
  final signature =
      Hmac(sha256, signingKey).convert(utf8.encode(stringToSign)).toString();

  return "AWS4-HMAC-SHA256 Credential=$accessKey/$credentialScope, SignedHeaders=$host;$amzDate, Signature=$signature";
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
