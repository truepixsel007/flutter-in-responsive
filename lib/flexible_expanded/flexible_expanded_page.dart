import 'package:flutter/material.dart';

class SpaceSharingRow extends StatelessWidget {
  const SpaceSharingRow({super.key});

  @override
  Widget build(BuildContext context) {

    // If you need a child to grow and stretch → use Expanded.
    // If you need a child to take space proportionally but remain flexible → use Flexible.

    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded & Flexible'),
      ),
      body: Row(
      children: [
        // Fixed-width container
        Container(
          width: 60,
          height: 100,
          color: Colors.red,
          child: const Center(child: Text("Fixed")),
        ),

        // Flexible with flex: 1
        Flexible(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.green,
            child: const Center(child: Text("Flexible (1)")),
          ),
        ),

        // Expanded takes all remaining space
        Expanded(
          child: Container(
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text("Expanded")),
          ),
        ),
      ],
    ),
    );
  }
}

//| Feature      | `Expanded`                      | `Flexible`                        |
// | ------------ | ------------------------------- | --------------------------------- |
// | Fills space  | Yes (takes all remaining space) | No (can take less than available) |
// | Flex usage   | Required                        | Optional                          |
// | Child sizing | Forced to fill                  | Can be any size within flex rule  |
// | Shortcut for | `Flexible(flex: 1, fit: tight)` | `Flexible(flex: 1, fit: loose)`   |