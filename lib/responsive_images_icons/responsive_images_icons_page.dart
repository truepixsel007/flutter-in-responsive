// Responsive Images & Icons
// Use BoxFit.cover, BoxFit.contain, or MediaQuery for scaling images.
// Use SVGs for scalable icons with flutter_svg.
// example simple

//Here’s a simple Flutter example showing how to make images and icons responsive using:
// ✅ BoxFit.cover / BoxFit.contain
// ✅ MediaQuery for dynamic sizing
// ✅ flutter_svg for scalable SVG icons

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResponsiveImagePage extends StatelessWidget {
  const ResponsiveImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Image')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.8,   // 80% of screen width
              height: screenWidth * 0.5,  // maintain aspect ratio
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Image.network(
                'https://via.placeholder.com/400x300',
                fit: BoxFit.cover, // or BoxFit.contain
              ),
            ),

            SizedBox(height: 20),

            ResponsiveSVGIcon()

          ],
        ),
      ),
    );
  }
}


class ResponsiveSVGIcon extends StatelessWidget {
  const ResponsiveSVGIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive SVG Icon')),
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/sample_icon.svg', // Add your SVG file in assets
          width: screenWidth * 0.3,
          height: screenWidth * 0.3,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}