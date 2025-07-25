import 'package:flutter/material.dart';
import 'package:p1/wrap_flow/wrap_flow_page.dart';
import 'SafeArea/safe_area_page.dart';
import 'aspect_ratio/aspect_ratio_page.dart';
import 'custom breakpoints/custom_breakpoints_page.dart';
import 'fitted_box/fitted_box_page.dart';
import 'flexible_expanded/flexible_expanded_page.dart';
import 'fractionally_sized_box/fractionally_sized_box_page.dart';
import 'layout_builder/layout_builder_page.dart';
import 'media_query/media_query3.dart';
import 'orientation_builder/orientation_builder_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      //  home: MediaQuery1(),
      //  home: MediaQuery2(),
      // home: MediaQuery3(),

      // home: LayoutBuilderPage(),

      // home: SpaceSharingRow(),

      // home: FittedBoxPage(),

      // home: FractionExample(),

      // home: AspectRatioExample(),

      // home: WrapFlowPageExample(),

      // home: OrientationExamplePage(),

      // home: CustomBreakPointsPage(),

      home: SafeAreaExample(),


    );
  }
}


