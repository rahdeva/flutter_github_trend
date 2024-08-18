import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }

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
            onSelected: (item) => handleClick(item),
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
          child: ListView.separated(
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
          )
        ),
      ),
    );
  }
}
