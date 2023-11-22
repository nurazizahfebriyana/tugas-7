import 'package:flutter/material.dart';
import 'package:inventory/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Kwangya Store',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 150, 246)),
                    useMaterial3: true,
                ),
                home: LoginPage(),
            ),
        );
    }
}
