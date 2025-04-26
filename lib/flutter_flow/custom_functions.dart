import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:utility_functions_library_8g4bud/flutter_flow/custom_functions.dart'
    as utility_functions_library_8g4bud_functions;

LatLng cfConvToLatLng(
  double latRef,
  double lngRef,
) {
  final latitude = latRef;
  final longitude = lngRef;

  return LatLng(latitude, longitude);
}

double cfGetLatFromLatLng(LatLng latLngRef) {
  return latLngRef.latitude;
}

double cfGetLngFromLatLng(LatLng latLngRef) {
  return latLngRef.longitude;
}

String? cfConvDatetimeEnStringToDateBrStringDmy(String dateRef) {
  // converter de forma generica o string date do formato 2024-04-01T18:36:18.862  para String no formato dd/mm/yyyy
  try {
    final dateTime = DateTime.parse(dateRef);
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  } catch (e) {
    return null;
  }
}

DateTime cfConvDatetimeStringBrToDatetimeENYmdHHmm00(String datetimeBR) {
  /// REMOVE espaços extras da string
  datetimeBR = datetimeBR.trim();

  /// Expressão regular para validar o formato "dd/MM/yyyy HH:mm"
  final regex = RegExp(r'^\d{2}/\d{2}/\d{4} \d{2}:\d{2}$');
  if (!regex.hasMatch(datetimeBR)) {
    throw FormatException(
        'Formato inválido. Use: dd/MM/yyyy HH:mm → $datetimeBR');
  }

  /// SEPARA a data e a hora
  final List<String> parts = datetimeBR.split(' ');
  final List<String> dateParts = parts[0].split('/');
  final List<String> timeParts = parts[1].split(':');

  /// CONVERTE para inteiros
  final int day = int.parse(dateParts[0]);
  final int month = int.parse(dateParts[1]);
  final int year = int.parse(dateParts[2]);
  final int hour = int.parse(timeParts[0]);
  final int minute = int.parse(timeParts[1]);

  /// Verifica se a data e hora são válidas
  final lastDayOfMonth = DateTime(year, month + 1, 0).day;
  if (day < 1 ||
      day > lastDayOfMonth ||
      month < 1 ||
      month > 12 ||
      hour < 0 ||
      hour > 23 ||
      minute < 0 ||
      minute > 59) {
    throw FormatException('Data ou hora inválida → $datetimeBR');
  }

  /// RETORNA o DateTime formatado corretamente (yyyy-MM-dd HH:mm:00)
  return DateTime(year, month, day, hour, minute, 0);
}

bool? cfContainInList(
  List<int> list,
  int item,
) {
  return list.contains(item);
}

DateTime? cfConvDatetimeBrStringToDatetimeEn(String argDatetimeBrString) {
  try {
    final inputFormat = DateFormat("dd/MM/yyyy HH:mm");
    final parsedDate = inputFormat.parse(argDatetimeBrString.trim());
    return parsedDate;
  } catch (e) {
    return null;
  }
}

String cfConvStringToStringCurrency2Decimals(
  String stringRef,
  int decimalPlaces,
) {
  String cleanedStringRef = stringRef.replaceAll(RegExp(r'[^0-9]'), '');
  if (cleanedStringRef.isEmpty) {
    return "0,00";
  }
  double value = double.parse(cleanedStringRef) / 100;
  final NumberFormat currencyFormatter =
      NumberFormat.currency(locale: 'pt_BR', symbol: '', decimalDigits: 2);
  return currencyFormatter.format(value);
}

String? cfConvDatetimeEnStringToDatetimeBrString(String argDatetimeEn) {
  // converter de forma generica o string date do formato 2024-04-01T18:36:18.862  para String no formato dd/mm/yyyy
  try {
    final dateTime = DateTime.parse(argDatetimeEn);
    final formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(dateTime);
  } catch (e) {
    return null;
  }
}

double cfConvNumberStringToDouble(String valueRef) {
  String cleanedValueRef =
      valueRef.replaceAll(RegExp(r'[^0-9]'), '').replaceAll(',', '.');
  double value = double.tryParse(cleanedValueRef) ?? 0.0;
  return value / 100;
}

DateTime? cfConvDatetimeEnStringToDatetimeEn(String argDatetimeEnString) {
  // Rem // Remove espaços extras
  argDatetimeEnString = argDatetimeEnString.trim();

  // Retorna DateTime convertido para o local ou null se não for possível converter
  DateTime? parsedDate = DateTime.tryParse(argDatetimeEnString);

  if (parsedDate != null) {
    return DateFormat("yyyy-MM-dd HH:mm:ss")
        .parse(parsedDate.toLocal().toString());
  }

  return null;
}

String cfInputTrim(String textRef) {
  // Remover os espaços no inicio e fim de textos e deixar todas as letras em minusculo
  return textRef.trim().toLowerCase();
}

String cfConvDoubleToCurrency2Decimals(
  String doubleRef,
  int decimalPlaces,
) {
  //  Converter Double em formato string moeda BRL
  final formatCurrency = NumberFormat.currency(
      locale: 'pt_BR', symbol: '', decimalDigits: decimalPlaces);
  return formatCurrency.format(double.parse(doubleRef));
}

DtOrderStatusStruct cfDtOrderStatus(
  int orderStatusIdRef,
  List<DtOrderStatusStruct> orderStatusDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return orderStatusDtRef
      .firstWhere((orderStatus) => orderStatus.id == orderStatusIdRef);
}

DtUserStruct cfDtTeamLeader(
  int teamLeaderIdRef,
  List<DtUserStruct> teamLeaderDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return teamLeaderDtRef
      .firstWhere((teamLeader) => teamLeader.id == teamLeaderIdRef);
}

DtTeamStruct cfDtTeam(
  int teamIdRef,
  List<DtTeamStruct> teamDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return teamDtRef.firstWhere((team) => team.id == teamIdRef);
}

DtOrderPlanStruct cfDtOrderPlan(
  int orderPlanIdRef,
  List<DtOrderPlanStruct> orderPlanDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return orderPlanDtRef
      .firstWhere((orderPlan) => orderPlan.id == orderPlanIdRef);
}

DtUnitStatusStruct cfDtUnitStatus(
  int unitStatusIdRef,
  List<DtUnitStatusStruct> unitStatusDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return unitStatusDtRef
      .firstWhere((unitStatus) => unitStatus.id == unitStatusIdRef);
}

DtOrderSuspendedReasonStruct cfDtOrderSuspendedReason(
  int orderSuspendedReasonIdRef,
  List<DtOrderSuspendedReasonStruct> orderSuspendedReasonDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return orderSuspendedReasonDtRef.firstWhere((orderSuspendedReason) =>
      orderSuspendedReason.id == orderSuspendedReasonIdRef);
}

DtSystemStruct cfDtSystem(
  int systemIdRef,
  List<DtSystemStruct> systemDtRef,
) {
  // obter dados do registro do data type tipo lista quando systemIdRef for igual a id
  return systemDtRef.firstWhere((system) => system.id == systemIdRef);
}

int cfConvNumberStringToInteger(String stringRef) {
  // converter uma string em integer
  return int.parse(stringRef);
}

double cfGetDifDecHoursBetweenDates(
  DateTime argDateStart,
  DateTime argDateEnd,
  int argDecimalsAmount,
) {
// Calcular a diferença absoluta em horas decimais entre duas datas
  final difference = argDateEnd.difference(argDateStart);
  final totalDecHours = difference.inMinutes / 60.0;
  return double.parse(totalDecHours.toStringAsFixed(argDecimalsAmount));
}

int cfDateGetYear(DateTime dateRef) {
  return dateRef.year;
}

DtUnitTypeStruct cfDtUnitType(
  int unitTypeIdRef,
  List<DtUnitTypeStruct> unitTypeDtRef,
) {
  // obter dados do registro do data type tipo lista quando unitTypeIdRef for igual a id
  return unitTypeDtRef.firstWhere((unitType) => unitType.id == unitTypeIdRef);
}

DtCompanyStruct cfDtCompany(
  int companyIdRef,
  List<DtCompanyStruct> companyDtRef,
) {
  // obter dados do registro do data type tipo lista quando companyRef for igual a id
  return companyDtRef.firstWhere((company) => company.id == companyIdRef);
}

int cfGetDifIntDaysBetweenDates(
  DateTime dateStart,
  DateTime dateEnd,
) {
  // Calcular a diferença absoluta de dias entre duas datas desconsiderando os horarios
  final start = DateTime(dateStart.year, dateStart.month, dateStart.day);
  final end = DateTime(dateEnd.year, dateEnd.month, dateEnd.day);
  final difference = end.difference(start).inDays.abs();
  return difference;
}

String cfGetFileNameFromFileUrlUploaded(
  String textOriginal,
  String? textToRemove,
) {
  // Se textToRemove for nulo, retorna o texto original
  if (textToRemove == null || textToRemove.isEmpty) {
    return textOriginal;
  }

  // Remove a expressão do texto original
  String result = textOriginal.replaceAll(textToRemove, '');
  return result;
}

String? cfOrderFormat(String input) {
  // Expressão regular para verificar o formato
  final regex = RegExp(r'^\d+(\.\d{1,2})?\.\d{4}$');

  // Verifica se o input corresponde ao formato esperado
  if (regex.hasMatch(input)) {
    return input; // Se estiver no formato correto, retorna o próprio input
  } else {
    return 'Formato inválido'; // Mensagem de erro caso o formato seja incorreto
  }
}

bool cfIsIntervalGreaterDifIntDaysBetweenDates(
  DateTime dateStart,
  DateTime dateEnd,
  int? daysInterval,
) {
  //  Calcular a diferença absoluta de dias entre duas datas desconsiderando os horarios e verificar se diferenca é maior do que daysInterval
  final start = DateTime(dateStart.year, dateStart.month, dateStart.day);
  final end = DateTime(dateEnd.year, dateEnd.month, dateEnd.day);
  final difference = end.difference(start).inDays.abs();
  return difference > (daysInterval ?? 0);
}

bool? cfSearchResultsFilter(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}

String? cfConvListIntoString(List<String> texts) {
  // tranformar uma lista de palavras num numa string apenas separando as palevras por uma virgule
  if (texts.isEmpty) {
    return null;
  }
  return texts.join(', ');
}

String cfConvIntToString2Digits(int integerRef) {
  // Converter um integer em string no minimo 2 digitos
  return integerRef.toString().padLeft(2, '0');
}

DateTime cfConvDateStringBrToDatetimeENYmd000(String dateBR) {
  // Converte uma data string BR dd/mm/yyyy para Datetime yyyy-MM-dd 00:00:00
  final List<String> dateParts = dateBR.split('/');
  final int day = int.parse(dateParts[0]);
  final int month = int.parse(dateParts[1]);
  final int year = int.parse(dateParts[2]);
  return DateTime(year, month, day, 0, 0, 0);
}

String? cfConvDateToDateBR(DateTime dateEN) {
  // Converte Datetime yyyy-mm-dd em string dd/mm/yyyy
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(dateEN);
}

bool? cfCheckStOVSelectedAssetIsEmpty(
    DtOrderVisitAssetStruct? stOVSelectedAsset) {
  // Verificar se stOVSelectedAsset é nulo
  if (stOVSelectedAsset == null) {
    return true;
  }

  // Exemplo de verificação de propriedades específicas
  // Supondo que DtOrderVisitAssetStruct tenha uma propriedade chamada 'id' do tipo int
  // E uma propriedade 'name' do tipo String

  if (stOVSelectedAsset.id == null || stOVSelectedAsset.id == 0) {
    return true;
  }

  // Se todas as verificações falharem, retorna false, indicando que o objeto não está vazio
  return false;
}

DateTime cfDateUpdateTime(
  int newHour,
  int newMin,
  int newSec,
  DateTime refDate,
) {
  // Alterar o horario da data considerando as horas, os minutos e segundos informados
  return DateTime(
    refDate.year,
    refDate.month,
    refDate.day,
    newHour,
    newMin,
    newSec,
    refDate.millisecond,
    refDate.microsecond,
  );
}

bool cfIsMobile(String mobileMask) {
  // Verifica se o comprimento total é 15 caracteres
  if (mobileMask.length != 15) {
    return false;
  }

  // Verifica se os primeiros dois caracteres são '(' e ')'
  if (mobileMask[0] != '(' || mobileMask[3] != ')') {
    return false;
  }

  // Verifica se há um espaço após o DDD e o hífen no lugar certo
  if (mobileMask[4] != ' ' || mobileMask[10] != '-') {
    return false;
  }

  // Verifica se os caracteres do DDD e do número são dígitos
  String ddd = mobileMask.substring(1, 3);
  String firstPart = mobileMask.substring(5, 10); // 99999
  String secondPart = mobileMask.substring(11, 15); // 9999

  if (int.tryParse(ddd) == null ||
      int.tryParse(firstPart) == null ||
      int.tryParse(secondPart) == null) {
    return false;
  }

  return true;
}

int cfPaginate(
  int pgNo,
  int limit,
) {
  return ((pgNo - 1) * limit);
}

bool cfCheckIsEmail(String email) {
  // verifica se  email é valido
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}

String cfGetFileName(FFUploadedFile file) {
  // obter o nome do arquivo (file) com a extensao
  return file.name ?? 'arquivo_sem_nome';
}

double? cfGetDiffHoursDecimalDatetimes(
  DateTime argDatetime1,
  DateTime argDatetime2,
  int argDecimals,
) {
  double? cfGetDiffHoursDecimalDatetimes(
    DateTime argDatetime1,
    DateTime argDatetime2,
    int argDecimals,
  ) {
    // Calculate the difference between the two DateTime objects
    Duration difference = argDatetime2.difference(argDatetime1);

    // Convert the difference to hours as a double
    double hours = difference.inSeconds / 3600;

    // Format the result to the specified number of decimal places
    return double.parse(hours.toStringAsFixed(argDecimals));
  }
}

String? cfConvDatetimeENToDatetimeBR(DateTime? argDatetimeEN) {
  if (argDatetimeEN == null) return null;
  return DateFormat('dd/MM/yyyy HH:mm').format(argDatetimeEN).toString();
}

DateTime cfSetDatetime(
  DateTime argDate,
  int argHours,
  int argMinutes,
  int argSeconds,
) {
  return DateTime(
    argDate.year,
    argDate.month,
    argDate.day,
    argHours,
    argMinutes,
    argSeconds,
  );
}

bool? cfIsEndDatetimeGreater(
  String argStartDatetime,
  String argEndDatetime,
) {
  final format = DateFormat("dd/MM/yyyy HH:mm");

  final startDatetime = format.parse(argStartDatetime);
  final endDatetime = format.parse(argEndDatetime);

  return endDatetime.isAfter(startDatetime);
}

String? cfConvDatetimeENToString(DateTime argDatetimeEN) {
  return "${argDatetimeEN.year}-${argDatetimeEN.month.toString().padLeft(2, '0')}-${argDatetimeEN.day.toString().padLeft(2, '0')} "
      "${argDatetimeEN.hour.toString().padLeft(2, '0')}:${argDatetimeEN.minute.toString().padLeft(2, '0')}:${argDatetimeEN.second.toString().padLeft(2, '0')}";
}
