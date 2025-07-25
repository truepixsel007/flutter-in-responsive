import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    // AspectRatio
    //  Maintains a consistent width-to-height ratio across screens.
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9, // Width : Height = 16:9
              child: Container(
                color: Colors.teal,
                child: const Center(
                  child: Text(
                    '16:9 Aspect Ratio',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 20,),
        
            AspectRatio(
              aspectRatio: 4 / 3, // Width : Height = 16:9
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '4:3 Aspect Ratio',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            AspectRatio(
              aspectRatio: 1 / 1, // Width : Height = 16:9
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    '1:1 Aspect Ratio',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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