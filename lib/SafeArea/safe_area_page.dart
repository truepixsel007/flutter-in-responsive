import 'package:flutter/material.dart';

// Absolutely! Here's a simple Flutter example using SafeArea to make sure your UI content doesn’t get hidden behind system UI elements like:
// ✅ Status bar (top)
// ✅ Notch
// ✅ Navigation bar (bottom)

class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 60,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'This is SafeArea',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade200,
                child: const Center(
                  child: Text(
                    'Content is not hidden by notch or status bar.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}