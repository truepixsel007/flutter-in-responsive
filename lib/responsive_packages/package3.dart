// sizer
// Uses screen percentage-based sizes like w, h, and sp.

// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return const MaterialApp(
//           home: SizerHome(),
//         );
//       },
//     );
//   }
// }
//
// class SizerHome extends StatelessWidget {
//   const SizerHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Sizer Example', style: TextStyle(fontSize: 15.sp))),
//       body: Center(
//         child: Container(
//           width: 80.w, // 80% of screen width
//           height: 20.h, // 20% of screen height
//           color: Colors.purple,
//           child: Center(
//             child: Text('Responsive Box', style: TextStyle(fontSize: 12.sp)),
//           ),
//         ),
//       ),
//     );
//   }
// }