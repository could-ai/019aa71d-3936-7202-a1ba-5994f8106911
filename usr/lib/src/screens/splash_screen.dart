import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.share, size: 80, color: Color(0xFF00E5FF)),
            const SizedBox(height: 20),
            Text(
              'CyberMen-Share',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF00E5FF),
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(color: Color(0xFF00E5FF)),
          ],
        ),
      ),
    );
  }
}
