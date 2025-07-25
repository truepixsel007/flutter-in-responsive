import 'package:flutter/material.dart';

// Custom Breakpoints
// Create your own screen size ranges (mobile, tablet, desktop) and build layouts accordingly.

class CustomBreakPointsPage extends StatelessWidget {
  const CustomBreakPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Breakpoints Example")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;

          if (width < 600) {
            // Mobile
            return const MobileLayout();
          } else if (width >= 600 && width < 1024) {
            // Tablet
            return const TabletLayout();
          } else {
            // Desktop
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 80),
          Text('Mobile Layout', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.tablet_mac, size: 80),
          SizedBox(width: 20),
          Text('Tablet Layout', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.desktop_windows, size: 80),
          SizedBox(width: 20),
          Text('Desktop Layout', style: TextStyle(fontSize: 28)),
        ],
      ),
    );
  }
}
