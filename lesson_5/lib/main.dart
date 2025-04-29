import 'package:flutter/material.dart';
import 'package:lesson_5/pages/home_page/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Navigazione semplice
    return const MaterialApp(home: HomePage());

    /// Navigazione named route
    //return MaterialApp(
    //  routes: {
    //    '/': (context) => const HomePage(),
    //    '/details': (context) {
    //      final id = ModalRoute.of(context)!.settings.arguments as String;
    //      return DetailsPage(id: id);
    //    },
    //  },
    //);

    /// Navigazione con GoRouter
    //return MaterialApp.router(
    //  routerConfig: GoRouter(
    //    routes: [
    //      GoRoute(
    //        path: '/',
    //        builder: (context, state) => const HomePage(),
    //        routes: [
    //          GoRoute(
    //            path: 'details/:detailsId',
    //            builder: (context, state) {
    //              final id = state.pathParameters['detailsId'];
    //              if (id == null) {
    //                return const NotFoundPage();
    //              }
    //              return DetailsPage(id: id);
    //            },
    //          ),
    //        ],
    //      ),
    //    ],
    //  ),
    //);
  }
}
