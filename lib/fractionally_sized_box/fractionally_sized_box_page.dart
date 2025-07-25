import 'package:flutter/material.dart';

class FractionExample extends StatelessWidget {
  const FractionExample({super.key});

  @override
  Widget build(BuildContext context) {
    // FractionallySizedBox
    //  Allows widgets to size themselves as a fraction of their parent (e.g., widthFactor: 0.5 for 50%).
    return Scaffold(
      appBar: AppBar(
        title: Text('Fractionally Sized Box'),
      ),
      body: Container(
        color: Colors.grey[300],
        height: 200,
        width: double.infinity,
        child: FractionallySizedBox(
          widthFactor: 0.5, // 50% of parent width
          heightFactor: 0.3, // 30% of parent height
          alignment: Alignment.center,
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                '50% width\n30% height',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}