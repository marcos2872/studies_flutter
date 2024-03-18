import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.path.$index.changes({'index': '0'})
        ),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}