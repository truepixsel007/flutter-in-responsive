import 'package:flutter/material.dart';

class WrapFlowPageExample extends StatelessWidget {
  const WrapFlowPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    //  Wrap and Flow
    //  Wrap: Wraps children into multiple rows or columns.
    //  Useful for responsive button grids or tag chips.
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap and Flow'),
      ),
      body: Column(
        children: [
          // Wrap
          Wrap(
            spacing: 10, // horizontal spacing
            runSpacing: 10, // vertical spacing
            children: const [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('State')),
              Chip(label: Text('Provider')),
              Chip(label: Text('BLoC')),
              Chip(label: Text('Firebase')),
              Chip(label: Text('SQLite')),
              Chip(label: Text('API')),
            ],
          ),

        // flow
          Flow(
            delegate: ChipFlowDelegate(margin: const EdgeInsets.all(8.0)),
            children: [
              for (var text in [
                'Flutter',
                'Dart',
                'State',
                'Provider',
                'BLoC',
                'API',
                'Firebase',
                'SQLite'
              ])
                Chip(
                  label: Text(text),
                  backgroundColor: Colors.blueAccent,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
            ],
          )

        ],
      ),
    );
  }
}


class ChipFlowDelegate extends FlowDelegate {
  final EdgeInsets margin;

  ChipFlowDelegate({required this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0.0;
    double y = 0.0;

    for (int i = 0; i < context.childCount; i++) {
      final childSize = context.getChildSize(i)!;

      if (x + childSize.width + margin.right > context.size.width) {
        x = 0.0;
        y += childSize.height + margin.bottom;
      }

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x + margin.left, y + margin.top, 0),
      );

      x += childSize.width + margin.right;
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(double.infinity, 200); // Set height of Flow container
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => true;
}


// Use Wrap for standard, responsive layouts.
// Use Flow when you need fine-grained control over layout or animation performance.

// | Feature        | `Wrap`                      | `Flow`                           |
// | -------------- | --------------------------- | -------------------------------- |
// | Ease of use    | ✅ Easy                      | ❌ Complex (requires delegate)    |
// | Auto wrapping  | ✅ Yes                       | ❌ No (manual positioning)        |
// | Custom layouts | ❌ Limited                   | ✅ Full control                   |
// | Performance    | ⚠️ Slower with many widgets | ✅ Optimized (lazy painting)      |
// | Animations     | ❌ Hard                      | ✅ Great for animated layouts     |
// | Use case       | Tags, buttons, chips        | Staggered, animated, custom grid |