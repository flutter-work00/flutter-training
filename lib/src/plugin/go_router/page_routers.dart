import 'package:flutter_training/lib.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RooterConst.homePagePath,
      name: RooterConst.homePageName,
      builder: (context, state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RooterConst.rootPagePath,
          name: RooterConst.rootPageName,
          builder: (context, state) {
            return const RootPage();
          },
        ),
      ],
    ),
  ],
);
