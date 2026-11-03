import 'package:flutter/material.dart';
import '../widgets/alignment_card.dart';
import '../widgets/demo_boxes.dart';

// Section header separating Row vs Column groups
class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 20, 16, 4),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF00897B),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00897B),
        title: const Text(
          'TASK 3',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFFCE4EC),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── ROW MainAxisAlignment ─────────────────────────────────────
            const _SectionHeader('Row — MainAxisAlignment'),

            AlignmentCard(
              title: 'MainAxisAlignment.center',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.start',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.end',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.spaceBetween',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.spaceAround',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.spaceEvenly',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            // ── ROW CrossAxisAlignment ────────────────────────────────────
            const _SectionHeader('Row — CrossAxisAlignment'),

            AlignmentCard(
              title: 'CrossAxisAlignment.start',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.center',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.end',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.stretch',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: rowBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.baseline',
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: baselineBoxes(),
              ),
            ),

            // ── COLUMN MainAxisAlignment ──────────────────────────────────
            const _SectionHeader('Column — MainAxisAlignment'),

            AlignmentCard(
              title: 'MainAxisAlignment.center',
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.start',
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.end',
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.spaceBetween',
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.spaceAround',
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'MainAxisAlignment.spaceEvenly',
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            // ── COLUMN CrossAxisAlignment ─────────────────────────────────
            const _SectionHeader('Column — CrossAxisAlignment'),

            AlignmentCard(
              title: 'CrossAxisAlignment.start',
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.center',
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.end',
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: columnBoxes(),
              ),
            ),

            AlignmentCard(
              title: 'CrossAxisAlignment.stretch',
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: columnBoxes(),
              ),
            ),

            // CrossAxisAlignment.baseline is not supported by Column; only valid for Row.
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF3E5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CrossAxisAlignment.baseline',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      border: Border.all(color: Colors.amber),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      '⚠ CrossAxisAlignment.baseline is only valid for Row.\n'
                      'Flutter throws an assertion error if used with Column.',
                      style: TextStyle(fontSize: 12, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
