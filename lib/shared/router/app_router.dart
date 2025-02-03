import 'package:auto_route/auto_route.dart';
import 'package:hello_world/shared/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: CurrencyRoute.page),
        AutoRoute(page: PrspyRoute.page),
        AutoRoute(page: ServerDetailsRoute.page),
      ];
}
