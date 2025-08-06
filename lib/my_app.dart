import 'package:flutter/material.dart';
import 'package:messenger_app/config/theme/app_theme.dart';
import 'package:messenger_app/presentation/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger App',
      theme: AppTheme.lightTheme,
      home: const LoginScreen(),
    );
  }
}
