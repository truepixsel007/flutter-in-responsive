import 'package:flutter/material.dart';



class MediaQuery2 extends StatelessWidget {
  const MediaQuery2({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    // Automatically switches when user rotates the device.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientation Layout"),
      ),
      body: Center(
        child: isPortrait
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.phone_android, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text("Portrait Mode", style: TextStyle(fontSize: 24)),
          ],
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.phone_android, size: 80, color: Colors.green),
            SizedBox(width: 20),
            Text("Landscape Mode", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}