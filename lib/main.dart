import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411019_muhammad_jaka_kusuma/home.dart';
import 'package:uts_pemrograman_4_22411019_muhammad_jaka_kusuma/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Ku',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        Page2.routeName: (context) => const Page2()
      },
    );
  }
}
