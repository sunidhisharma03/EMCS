import 'package:flutter/material.dart';
import 'package:my_flutter_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:my_flutter_app/pages/login_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
