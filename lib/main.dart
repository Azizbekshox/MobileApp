import 'package:flutter/material.dart';
import 'package:trading_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHomePage(),
);
      debugShowCheckedModeBanner: false,
      title: 'Trading App',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
flutter build apk --release