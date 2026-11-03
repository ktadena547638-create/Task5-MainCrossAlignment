import 'package:flutter/material.dart';

// Three colored boxes with different sizes for visual contrast
class DemoBox extends StatelessWidget {
  const DemoBox({
    super.key,
    required this.color,
    this.width = 50,
    this.height = 50,
    this.label = '',
  });

  final Color color;
  final double width;
  final double height;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      alignment: Alignment.center,
      child: label.isNotEmpty
          ? Text(label,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold))
          : null,
    );
  }
}

// Boxes with varying heights so cross-axis differences are visible
List<Widget> rowBoxes() => const [
      DemoBox(color: Colors.red, width: 50, height: 50),
      DemoBox(color: Colors.yellow, width: 60, height: 40),
      DemoBox(color: Colors.blue, width: 50, height: 70),
    ];

// Boxes with varying widths for Column cross-axis demos
List<Widget> columnBoxes() => const [
      DemoBox(color: Colors.red, width: 60, height: 50),
      DemoBox(color: Colors.yellow, width: 80, height: 40),
      DemoBox(color: Colors.blue, width: 50, height: 60),
    ];

// Boxes with varying font sizes for baseline demo
List<Widget> baselineBoxes() => [
      Container(
        color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text('Aa',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Roboto')),
      ),
      Container(
        color: Colors.yellow,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text('Bb',
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Roboto')),
      ),
      Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text('Cc',
            style: TextStyle(
                fontSize: 44,
                color: Colors.white,
                fontFamily: 'Roboto')),
      ),
    ];
