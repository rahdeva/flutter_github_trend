part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Initial;
  const factory HomeState.success() = _Initial;
  const factory HomeState.error() = _Initial;
}
