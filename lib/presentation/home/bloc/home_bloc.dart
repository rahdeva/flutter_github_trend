import 'package:bloc/bloc.dart';
import 'package:flutter_github_trend/data/datasources/github_repository_remote_datasource.dart';
import 'package:flutter_github_trend/data/models/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GitHubRepositoryRemoteDatasource githubRepoRemoteDatasource;
  int _currentPage = 1;
  bool _hasNext = true;
  List<GitHubRepository> _allRepositories = [];

  HomeBloc(
    this.githubRepoRemoteDatasource
  ) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const _Loading());
      _currentPage = 1;
      final response = await githubRepoRemoteDatasource.getRepositories();
      response.fold(
        (error) => emit(_Error(error)),
        (data) {
          _allRepositories = data;
          _hasNext = data.length >= 10;
          emit(_Loaded(data, _hasNext));
        },
      );
    });

    on<_Refresh>((event, emit) async {
      emit(const _Loading());
      _currentPage = 1; 
      _hasNext = true;
      final response = await githubRepoRemoteDatasource.getRepositories(page: _currentPage);
      response.fold(
        (error) => emit(_Error(error)),
        (data) {
          _allRepositories = data;
          _hasNext = data.length >= 10;
          emit(_Loaded(data, _hasNext));
        },
      );
    });

    on<_LoadMore>((event, emit) async {
      if (!_hasNext) return;
      _currentPage++;
      final response = await githubRepoRemoteDatasource.getRepositories(page: _currentPage);
      response.fold(
        (error) => emit(_Error(error)),
        (data) {
          _allRepositories.addAll(data);
          _hasNext = data.length >= 10;
          final currentState = state;
          if (currentState is _Loaded) {
            final updatedRepositories = [...currentState.repositories, ...data];
            emit(_Loaded(updatedRepositories, _hasNext));
          } else {
            emit(_Loaded(data, _hasNext));
          }
        },
      );
    });

    on<_Filter>((event, emit) {
      if (state is _Loaded) {
        List<GitHubRepository> filteredData = [];
        switch (event.filter) {
          case Filter.stars:
            filteredData = [..._allRepositories]
              ..sort((a, b) => b.stargazersCount!.compareTo(a.stargazersCount!));
            break;
          case Filter.name:
            filteredData = [..._allRepositories]
              ..sort((a, b) => a.name!.compareTo(b.name!));
            break;
        }
        emit(_Loaded(filteredData, _hasNext));
      }
    });
  }
}
