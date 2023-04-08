import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/interfaces/{{name.snakeCase()}}_interface.dart';
import '../../../../common/utils/app_environment.dart';
import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../../{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}.dart';

@LazySingleton(
  as: ICt{{name.pascalCase()}}Repository,
  env: AppEnvironment.environments,
)
class Ct{{name.pascalCase()}}Repository implements ICt{{name.pascalCase()}}Repository {
}