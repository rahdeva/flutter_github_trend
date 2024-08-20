import 'package:auto_route/auto_route.dart';
import 'package:flutter_github_trend/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: DetailRoute.page),
  ];
}