import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/datasources/remote/api/base/api_error.dart';
import '../../domain/entities/{{name.snakeCase()}}.dart';
import '../../../../common/utils/cancelable_base_bloc.dart';
import '../../domain/interfaces/{{name.snakeCase()}}_interface.dart';

part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_cubit.freezed.dart';

@injectable
class Ct{{name.pascalCase()}}Cubit extends Cubit<Ct{{name.pascalCase()}}State> with CancelableBaseBloc {
  final ICt{{name.pascalCase()}}Repository _repository;
  Ct{{name.pascalCase()}}Cubit(this._repository) : super(const Ct{{name.pascalCase()}}State());

  get() async {
    emit(state.loading);
    final response = await _repository.getById(1, token: cancelToken);
    response.fold(
      (l) => emit(state.onError(l)),
      (r) => emit(state.onLoaded(r)),
    );
  }
}