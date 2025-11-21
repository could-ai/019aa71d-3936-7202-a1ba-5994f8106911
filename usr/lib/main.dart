import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:couldai_user_app/src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase
  // NOTE: Replace these with your actual Supabase URL and Anon Key
  // Since the project is connected, these should ideally be injected or configured.
  // For now, we use placeholders. The user must provide these or configured environment.
  // If you are running locally with supabase start, use the local values.
  
  // TODO: Enter your Supabase credentials here
  const supabaseUrl = 'YOUR_SUPABASE_URL';
  const supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';

  try {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
  } catch (e) {
    debugPrint('Supabase initialization failed (expected if keys are missing): $e');
  }

  runApp(const CyberMenApp());
}
