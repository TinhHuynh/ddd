import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/utils/cancelable_base_bloc.dart';
import '../../domain/interfaces/{{name.snakeCase()}}_interface.dart';

part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_cubit.freezed.dart';

@injectable
class Ct{{name.pascalCase()}}Cubit extends Cubit<Ct{{name.pascalCase()}}State> with CancelableBaseBloc {
  // ignore: unused_field
  final ICt{{name.pascalCase()}}Repository _repository;
  Ct{{name.pascalCase()}}Cubit(this._repository) : super(const Ct{{name.pascalCase()}}State.initial());
 
}