import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/{{name.snakeCase()}}.dart';

part '{{name.snakeCase()}}_model.freezed.dart';

@freezed
class Ct{{name.pascalCase()}}Model with _$Ct{{name.pascalCase()}}Model implements ICt{{name.pascalCase()}} {
  const factory Ct{{name.pascalCase()}}Model() = _Ct{{name.pascalCase()}}Model;
}
