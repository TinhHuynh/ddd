import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/{{name.snakeCase()}}.dart';

part '{{name.snakeCase()}}_model.freezed.dart';
part '{{name.snakeCase()}}_model.g.dart';

@freezed
class Ct{{name.pascalCase()}}Model with _$Ct{{name.pascalCase()}}Model implements ICt{{name.pascalCase()}} {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Ct{{name.pascalCase()}}Model({
    @JsonKey(name: 'id') @Default(-1) int id,
  }) = _Ct{{name.pascalCase()}}Model;

  factory Ct{{name.pascalCase()}}Model.fromJson(json) => _$Ct{{name.pascalCase()}}ModelFromJson(json);
}
