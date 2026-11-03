import 'package:flutter/material.dart';

// Card that wraps each alignment example with a label and a fixed-size demo area
class AlignmentCard extends StatelessWidget {
  const AlignmentCard({
    super.key,
    required this.title,
    required this.child,
    this.height = 120,
  });

  final String title;
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: height,
            width: double.infinity,
            child: child,
          ),
        ],
      ),
    );
  }
}
