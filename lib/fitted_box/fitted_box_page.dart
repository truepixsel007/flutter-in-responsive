import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    // FittedBox
    // Scales and resizes child widgets to fit within its parent.
    // Avoids overflow errors for text and icons.

    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
      ),
      body: Column(
        children: [
          // use fitted box
          Container(
            width: 150,
            height: 80,
            color: Colors.amberAccent,
            child: const FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Very Large Text Example',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Container(
            width: 150,
            height: 80,
            color: Colors.amberAccent,
            child: Text(
              'Very Large Text Example',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),

        ],
      ),
    );
  }
}