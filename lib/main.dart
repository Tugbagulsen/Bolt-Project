
import 'package:boltproject/page/home/home.dart'; 
import 'package:boltproject/page/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: MyApp.themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
              // Remove the debug banner
              debugShowCheckedModeBanner: false,
              title: 'Bolt',
              theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 255, 255, 255))),
              darkTheme: ThemeData.dark(),
              themeMode: currentMode,
              home: const HomePage());
        });
  }
}
