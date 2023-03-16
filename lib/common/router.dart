import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maps_app/common/widgets/page_widget.dart';

import '../features/features.dart';

const String homeRoute = '/home';

final goRouter = GoRouter(
  initialLocation: homeRoute,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      builder: (context, state, child) => DashboardScreen(
        key: state.pageKey,
        pages: const ['/home', '/test1', '/test2', '/test3', '/test4'],
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
          path: '/test1',
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
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
