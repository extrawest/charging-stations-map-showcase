import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maps_app/features/search/screens/search_screen.dart';
import '../../common/widgets/page_widget.dart';

import '../features/features.dart';

const String homeRoute = '/home';
const String walletRoute = '/wallet';
const String chargingRoute = '/charging';
const String searchRoute = '/search';

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
        pages: const [homeRoute, '/test2', '', walletRoute, '/test4'],
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
          path: '/test2',
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
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
          path: '/test4',
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
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
