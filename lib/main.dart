import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scimet/view/choose_language.dart';
import 'package:scimet/view/content.dart';
import 'package:scimet/view/home.dart';
import 'package:scimet/view/module.dart';
import 'package:scimet/view/splash.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      debugShowCheckedModeBanner: false,
      theme: ShadThemeData(
        colorScheme: const ShadGreenColorScheme.light(
          background: Color(0xFFFEFEFE),
        ),
        brightness: Brightness.light,
        primaryButtonTheme: const ShadButtonTheme(
          backgroundColor: Color(0xFF005A17),
        ),
        outlineButtonTheme:
        const ShadButtonTheme(foregroundColor: Color(0xFF171717)),
        textTheme: ShadTextTheme.fromGoogleFont(
          GoogleFonts.poppins,
          // colorScheme: const ShadGreenColorScheme.light(),
        ),
      ),
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const SplashScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/language': (context) => const ChooseLanguageScreen(),
        '/home': (context) => const Home(),
        '/module': (context) => const Module(),
        '/content': (context) => const Content(),
      },
    );
  }
}
