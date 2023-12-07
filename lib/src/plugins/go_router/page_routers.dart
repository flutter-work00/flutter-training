import 'package:flutter_training/lib.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RooterConst.launchPagePath,
      name: RooterConst.launchPageName,
      builder: (context, state) {
        return const LaunchPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RooterConst.weatherPagePath,
          name: RooterConst.weatherPageName,
          builder: (context, state) {
            return const WeatherPage();
          },
        ),
      ],
    ),
  ],
);
