import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RepoListItem extends StatelessWidget {
  const RepoListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ExpansionTile(
        showTrailingIcon: false,
        dense: true,
        tilePadding: EdgeInsets.zero,
        shape: const Border(),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: NetworkImage(
                "https://avatars.githubusercontent.com/u/14101776?v=4",
              ),
            ),
          ),
        ),
        title: Text(
          "flutter",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Text(
          "repoName",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: <Widget>[
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            leading: const SizedBox(
              height: 40,
              width: 40
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 14,
                          color: Colors.black
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Javascript',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '10',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.codeFork,
                          size: 14,
                          color: Colors.black
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '6',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Add more widgets as children if needed
        ],
      ),
    );
  }
}
