import 'package:flutter/material.dart';
import 'package:flutter_github_trend/presentation/home/widgets/repo_list_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Trending',
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
        elevation: 0.5,
        shadowColor: Colors.grey,
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => (int item) {
              switch (item) {
                case 0:
                  break;
                case 1:
                  break;
              }
            },
            color: Colors.white,
            itemBuilder: (context) => [
              const PopupMenuItem<int>(value: 0, child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text('Sort by stars'),
              )),
              const PopupMenuItem<int>(value: 1, child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text('Sort by name'),
              )),
            ],
            position: PopupMenuPosition.under,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: RepoListBuilder()
        ),
      ),
    );
  }
}