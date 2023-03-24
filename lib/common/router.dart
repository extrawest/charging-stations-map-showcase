import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/charging/charging.dart';
import '../features/dashboard/dashboard.dart';
import '../features/favourites/favourites.dart';
import '../features/maps/maps.dart';
import '../features/profile/profile.dart';
import '../features/search/search.dart';
import '../features/wallet/wallet.dart';

const String homeRoute = '/home';
const String walletRoute = '/wallet';
const String chargingRoute = '/charging';
const String searchRoute = '/search';
const String profileRoute = '/profile';
const String favouritesRoute = '/favourites';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey(debugLabel: 'shell');

final goRouter = GoRouter(
  initialLocation: homeRoute,
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => DashboardScreen(
        key: state.pageKey,
        pages: const [
          homeRoute,
          favouritesRoute,
          '',
          walletRoute,
          profileRoute
        ],
        child: child,
      ),
      routes: [
        GoRoute(
          path: homeRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const MapsScreen(),
          ),
        ),
        GoRoute(
          path: favouritesRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const FavouritesScreen(),
          ),
        ),
        GoRoute(
          path: walletRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const WalletScreen(),
          ),
        ),
        GoRoute(
          path: profileRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const ProfileScreen(),
          ),
        ),
      ],
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
