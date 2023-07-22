import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';
import 'package:flutter/material.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Admin Dashboard',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(useMaterial3: true),
        initialRoute: Flurorouter.rootRoute,
        onGenerateRoute: Flurorouter.router.generator,
        builder: (_, child) {
          return AuthLayout(child: child!);
        });
  }
}
