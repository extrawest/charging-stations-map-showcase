import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/charging/charging.dart';
import '../features/dashboard/dashboard.dart';
import '../features/search/search.dart';

const String dahsboardRoute = '/dashboard/:screen';
const String homeRoute = '/home';
const String walletRoute = '/wallet';
const String profileRoute = '/profile';
const String favouritesRoute = '/favourites';

const String chargingRoute = '/charging';
const String searchRoute = '/search';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');

final goRouter = GoRouter(
  initialLocation: '/dashboard/home',
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: dahsboardRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: DashboardScreen(
          key: state.pageKey,
          currentPage: state.params['screen']!,
          pages: const [
            homeRoute,
            favouritesRoute,
            '',
            walletRoute,
            profileRoute
          ],
        ),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: chargingRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const ChargingScreen(),
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: searchRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const SearchScreen(),
      ),
    ),
  ],
);

class _TransitionPage extends CustomTransitionPage {
  _TransitionPage({LocalKey? key, required Widget child})
      : super(
          key: key,
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
}
