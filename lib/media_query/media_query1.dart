

import 'package:flutter/material.dart';

class MediaQuery1 extends StatelessWidget {
  const MediaQuery1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Because different devices have different screen widths (e.g., 360px, 720px). This keeps the layout proportional.

            Row(
                 children: [
                   Container(
                     color: Colors.red,
                     height: 100,
                     width: MediaQuery.of(context).size.width * 0.33,
                     child: Text('data'),
                   ),
                   Container(
                     color: Colors.yellow,
                     height: 100,
                    width: MediaQuery.of(context).size.width * 0.33,
                     child: Text('data'),
                   ),
                   Container(
                     color: Colors.green,
                     height: 100,
                     width: MediaQuery.of(context).size.width * 0.33,
                     child: Text('data'),
                   ),
                 ],
               ),

            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Text('data'),
                ),
                Container(
                  color: Colors.yellow,
                  height: 100,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Text('data'),
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Text('data'),
                ),
              ],
            ),

            SizedBox(height: 10,),


            Row(
              children: [

                // Multiple in full widht of screen = 1
                // Multiple in half width of screen = 0.5

                Container(
                  color: Colors.red,
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text('data'),
                ),

                // divide in  full width of screen = 1
                // divide in half width of screen = 2
                Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2 ,
                  child: Text('data'),
                ),


              ],
            ),

            SizedBox(height: 10,),

            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 100,
                  ),
                ),
              ],
            ),




          ],
        ),
      ),
    );
  }
}
