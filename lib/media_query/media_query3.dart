import 'package:flutter/material.dart';

class MediaQuery3 extends StatelessWidget {
  const MediaQuery3({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery data
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Layout')),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05), // 5% padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Screen Width: ${screenWidth.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Screen Height: ${screenHeight.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Top Padding (Status Bar): ${paddingTop.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Container(
              width: screenWidth * 0.6, // 60% of screen width
              height: screenHeight * 0.1, // 10% of screen height
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: const Text(
                "Responsive Box",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}