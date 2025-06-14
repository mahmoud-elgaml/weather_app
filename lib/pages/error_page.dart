// import 'package:flutter/material.dart';

// class ErrorPage extends StatelessWidget {
//   const ErrorPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final textColor = theme.textTheme.bodyMedium?.color ?? Colors.white;

//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Oops, something went wrong', style: TextStyle(fontSize: 22, color: textColor)),
//           SizedBox(height: 10),
//           Text('Try again later', style: TextStyle(fontSize: 22, color: textColor)),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math' as math;

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 4), vsync: this)..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyMedium?.color ?? Colors.white;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              child: Image.asset('assets/images/not_found.png', width: 150, height: 150),
              builder: (context, child) {
                return Transform.rotate(angle: _controller.value * 2 * math.pi, child: child);
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Please, try again ...',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 18,
                color: textColor.withAlpha(230),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
