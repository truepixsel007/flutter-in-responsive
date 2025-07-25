// responsive_framework: ^1.5.1

// Creates breakpoints like Bootstrap.
// Auto-scales layout and UI elements across screen sizes.

//import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';
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
//     return MaterialApp(
//       builder: (context, child) => ResponsiveWrapper.builder(
//         child,
//         maxWidth: 1200,
//         minWidth: 480,
//         defaultScale: true,
//         breakpoints: [
//           ResponsiveBreakpoint.resize(480, name: MOBILE),
//           ResponsiveBreakpoint.autoScale(800, name: TABLET),
//           ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//         ],
//       ),
//       home: const ResponsiveHome(),
//     );
//   }
// }
//
// class ResponsiveHome extends StatelessWidget {
//   const ResponsiveHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Responsive Framework Example')),
//       body: Center(
//         child: ResponsiveRowColumn(
//           rowMainAxisAlignment: MainAxisAlignment.center,
//           layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
//               ? ResponsiveRowColumnType.COLUMN
//               : ResponsiveRowColumnType.ROW,
//           children: [
//             ResponsiveRowColumnItem(
//               child: Container(width: 100, height: 100, color: Colors.red),
//             ),
//             ResponsiveRowColumnItem(
//               child: Container(width: 100, height: 100, color: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }