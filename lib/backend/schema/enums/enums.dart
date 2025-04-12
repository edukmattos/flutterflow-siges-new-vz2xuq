import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum EnumVersionsMode {
  live,
  test,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (EnumVersionsMode):
      return EnumVersionsMode.values.deserialize(value) as T?;
    default:
      return null;
  }
}
