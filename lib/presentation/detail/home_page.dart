import 'package:flutter/material.dart';
import 'package:flutter_github_trend/core/assets/assets.gen.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(96.0),
          child: Center(
            child: Assets.images.imgSplashScreen.image(),
          ),
        ),
      ),
    );
  }
}
