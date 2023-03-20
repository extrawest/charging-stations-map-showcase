import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../common/widgets/page_widget.dart';

import '../features/features.dart';

const String homeRoute = '/home';
const String walletRoute = '/wallet';

final goRouter = GoRouter(
  initialLocation: homeRoute,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      builder: (context, state, child) => DashboardScreen(
        key: state.pageKey,
        pages: const [homeRoute, '/test2', '/test3', walletRoute, '/test4'],
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
          path: '/test3',
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
