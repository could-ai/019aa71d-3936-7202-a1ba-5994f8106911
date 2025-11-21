import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:couldai_user_app/src/screens/splash_screen.dart';
import 'package:couldai_user_app/src/screens/auth/login_screen.dart';
import 'package:couldai_user_app/src/screens/home_screen.dart';
import 'package:couldai_user_app/src/screens/auth/signup_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CyberMenApp extends StatelessWidget {
  const CyberMenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberMen-Share',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    var baseTheme = ThemeData(
      brightness: brightness,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF00E5FF), // Cyber Cyan
        brightness: brightness,
        surface: const Color(0xFF121212),
        onSurface: Colors.white,
      ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.orbitronTextTheme(baseTheme.textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1E1E1E),
        elevation: 0,
        centerTitle: true,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF2C2C2C),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF00E5FF)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00E5FF),
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
