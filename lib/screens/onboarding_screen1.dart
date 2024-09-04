import 'package:flutter/material.dart';
import 'onboarding_screen2.dart';

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image or widget
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Onboarding content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your image or illustration
              Image.asset('assets/blind_man.png'),
              Text(
                'Feeling lost?\nNeed assistance?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
