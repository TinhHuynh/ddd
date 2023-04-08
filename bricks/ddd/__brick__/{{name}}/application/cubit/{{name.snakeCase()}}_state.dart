part of '{{name.snakeCase()}}_cubit.dart';

@generate
enum Ct{{name.pascalCase()}}Status {
  initial,
  loading,
  error,
  loaded;
}


@freezed
class Ct{{name.pascalCase()}}State with _$Ct{{name.pascalCase()}}State {
  const Ct{{name.pascalCase()}}State._();

  const factory Ct{{name.pascalCase()}}State({
    @Default(Ct{{name.pascalCase()}}Status.initial) Ct{{name.pascalCase()}}Status status,
    ICt{{name.pascalCase()}}? data,
    ApiError? error,
  }) = _Ct{{name.pascalCase()}}State;

}

extension Ct{{name.pascalCase()}}StateX on Ct{{name.pascalCase()}}State {
  Ct{{name.pascalCase()}}State get loading => copyWith(status: Ct{{name.pascalCase()}}Status.loading);

  Ct{{name.pascalCase()}}State onError(ApiError error) => copyWith(
        status: Ct{{name.pascalCase()}}Status.error,
        error: error,
      );

  Ct{{name.pascalCase()}}State onLoaded(ICt{{name.pascalCase()}} data) => copyWith(
        status: Ct{{name.pascalCase()}}Status.loaded,
        data: data,
      );
}