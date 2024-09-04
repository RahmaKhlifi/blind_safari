import 'package:flutter/material.dart';
import 'enhanced_experience_screen.dart';
import 'visually_impaired_screen.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('assets/blind_man.png'),
            Text(
              'Get Started',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnhancedExperienceScreen()),
                );
              },
              child: Text('Enhanced Experience !'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VisuallyImpairedScreen()),
                );
              },
              child: Text('Visually Impaired'),
            ),
          ],
        ),
      ],
      ),
    ),
    );
  }
}
