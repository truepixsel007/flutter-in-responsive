// Responsive Text
// Use AutoSizeText or FittedBox to scale text.
// Or calculate text size based on screen width/height.

// Here’s a simple Flutter example demonstrating responsive text using:
// ✅ AutoSizeText (auto-scales text to fit)
// ✅ FittedBox (scales child including text)
// ✅ MediaQuery (manual scaling)


import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AutoSizeTextExample extends StatelessWidget {
  const AutoSizeTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AutoSizeText Example")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  AutoSizeText Example PACKAGE USE
            Container(
              width: 200, // narrow width to show auto-sizing
              child: const AutoSizeText(
                'This text resizes automatically to fit!',
                maxLines: 2,
                style: TextStyle(fontSize: 30),
              ),
            ),

          // FittedBoxExample
            FittedBoxExample(),

          //   MediaQuery-based Scaling Example
            MediaQueryTextExample()
          ],
        ),
      ),
    );
  }
}


class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FittedBox Example")),
      body: Center(
        child: Container(
          width: 150,
          height: 100,
          color: Colors.yellowAccent,
          child: const FittedBox(
            child: Text(
              'Scalable Text',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}


class MediaQueryTextExample extends StatelessWidget {
  const MediaQueryTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dynamicFontSize = screenWidth * 0.06; // 6% of screen width

    return Scaffold(
      appBar: AppBar(title: const Text("MediaQuery Text")),
      body: Center(
        child: Text(
          'Responsive Font',
          style: TextStyle(fontSize: dynamicFontSize),
        ),
      ),
    );
  }
}


//| Method         | Use Case                                          |
// | -------------- | ------------------------------------------------- |
// | `AutoSizeText` | Automatically adjust font size to fit constraints |
// | `FittedBox`    | Scale text inside a container                     |
// | `MediaQuery`   | Custom font size logic based on screen size       |

//OR PACKAGE USE flutter_screenutil or sizer