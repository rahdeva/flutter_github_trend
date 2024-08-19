import 'package:flutter/material.dart';
import 'package:flutter_github_trend/presentation/home/widgets/repo_list_item.dart';

class RepoListBuilder extends StatelessWidget {
  const RepoListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const Divider(
            color: Colors.grey,
            thickness: 0.25,
          ),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return const RepoListItem();
      }
    );
  }
}