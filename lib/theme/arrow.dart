import 'package:flutter/material.dart';

void main() => runApp(const ArrowIconsPreview());

class ArrowIconsPreview extends StatelessWidget {
  const ArrowIconsPreview({super.key});

  final List<Map<String, IconData>> arrowIcons = const [
    {'arrow_right': Icons.arrow_right},
    {'arrow_forward': Icons.arrow_forward},
    {'arrow_forward_ios': Icons.arrow_forward_ios},
    {'arrow_forward_outlined': Icons.arrow_forward_outlined},
    {'arrow_forward_rounded': Icons.arrow_forward_rounded},
    {'arrow_forward_sharp': Icons.arrow_forward_sharp},
    {'keyboard_arrow_right': Icons.keyboard_arrow_right},
    {'keyboard_double_arrow_right': Icons.keyboard_double_arrow_right},
    {'arrow_circle_right': Icons.arrow_circle_right},
    {'arrow_circle_right_outlined': Icons.arrow_circle_right_outlined},
    {'arrow_circle_right_rounded': Icons.arrow_circle_right_rounded},
    {'arrow_circle_right_sharp': Icons.arrow_circle_right_sharp},
    {'navigate_next': Icons.navigate_next},
    {'subdirectory_arrow_right': Icons.subdirectory_arrow_right},
    {'east': Icons.east},
    {'trending_flat': Icons.trending_flat},
    {'send': Icons.send},
    {'play_arrow': Icons.play_arrow},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Arrow Icons Preview')),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: arrowIcons.length,
          itemBuilder: (context, index) {
            final entry = arrowIcons[index].entries.first;
            return Container(
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(entry.value, size: 40, color: Colors.blue),
                  const SizedBox(height: 5),
                  Text(entry.key, textAlign: TextAlign.center),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
