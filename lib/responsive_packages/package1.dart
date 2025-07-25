// flutter_screenutil

// w, h, and sp auto-scale based on device screen size.

//import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
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
//     return ScreenUtilInit(
//       designSize: const Size(375, 812), // iPhone X reference
//       builder: (context, child) => MaterialApp(
//         home: const HomePage(),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ScreenUtil Example', style: TextStyle(fontSize: 20.sp))),
//       body: Center(
//         child: Container(
//           width: 200.w,
//           height: 100.h,
//           color: Colors.blue,
//           child: Center(child: Text('Responsive Box', style: TextStyle(fontSize: 16.sp))),
//         ),
//       ),
//     );
//   }
// }