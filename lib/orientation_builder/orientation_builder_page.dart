import 'package:flutter/material.dart';

class OrientationExamplePage extends StatelessWidget {
  const OrientationExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // OrientationBuilder
    // Builds different UIs based on portrait or landscape mode.
    // OrientationBuilder rebuilds its child when orientation changes.
    // Returns different widgets based on that condition.
    return Scaffold(
      appBar: AppBar(title: const Text("OrientationBuilder Example")),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? const PortraitLayout()
              : const LandscapeLayout();
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 100, color: Colors.blue),
          Text('Portrait Mode', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  const LandscapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 100, color: Colors.green),
          SizedBox(width: 20),
          Text('Landscape Mode', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}