import 'package:flutter/material.dart';
import 'package:biblipedia/splash.dart'; 
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; 
import 'package:biblipedia/themes.dart'; 
import 'package:biblipedia/themeNotifier.dart';



void main() async {

   await dotenv.load(fileName : ".env");

  runApp(
   const ProviderScope(child: MyApp())
    );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}