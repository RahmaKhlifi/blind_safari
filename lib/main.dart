import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/onboarding_screen1.dart';
import 'screens/get_started_screen.dart';
import 'screens/enhanced_experience_screen.dart';
import 'screens/visually_impaired_screen.dart';

void main() {
  runApp(BlindSafariApp());
}

class BlindSafariApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blind Safari',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  Future<bool> _checkFirstRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstRun = prefs.getBool('first_run') ?? true;
    if (firstRun) {
      prefs.setBool('first_run', false);
    }
    return firstRun;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkFirstRun(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.data == true) {
          return OnboardingScreen1();
        } else {
          return GetStartedScreen();
        }
      },
    );
  }
}
