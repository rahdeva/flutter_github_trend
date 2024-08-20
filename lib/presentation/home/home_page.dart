import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_trend/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_github_trend/presentation/home/widgets/repo_list_builder.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    RefreshController refreshController = RefreshController(initialRefresh: false);
    HomeBloc homeBloc = context.read<HomeBloc>()..add(const HomeEvent.fetch());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Trending',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0.5,
        shadowColor: Colors.grey,
        actions: [
          PopupMenuButton<int>(
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                onTap: () {
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text('Sort by stars'),
                )
              ),
              PopupMenuItem<int>(
                value: 1,
                onTap: () {
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text('Sort by name'),
                )
              ),
            ],
            position: PopupMenuPosition.under,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: state.maybeWhen(
              loaded: (repositories, hasNext) => hasNext,
              orElse: () => false,
            ),
            controller: refreshController,
            onRefresh: () {
              homeBloc.add(const HomeEvent.refresh());
              refreshController.refreshCompleted();
            },
            onLoading: () async {
              homeBloc.add(const HomeEvent.loadMore());
              refreshController.loadComplete();
            },
            child: state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (repositories, hasNext) => RepoListBuilder(context: context, state: state),
              error: (error) => Center(child: Text('Something went wrong. $error')),
              orElse: () => const Center(child: Text('Something went wrong')),
            ),
          );
        },
      ),
    );
  }
}
