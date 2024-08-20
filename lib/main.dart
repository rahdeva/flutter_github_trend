import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_trend/core/core.dart';
import 'package:flutter_github_trend/data/datasources/github_repository_remote_datasource.dart';
import 'package:flutter_github_trend/presentation/detail/bloc/detail_bloc.dart';
import 'package:flutter_github_trend/presentation/home/bloc/home_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(GitHubRepositoryRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => DetailBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Flutter GitHub Trends',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          dialogTheme: const DialogTheme(elevation: 0),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0.5,
            titleTextStyle: GoogleFonts.inter(
              color: AppColors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}