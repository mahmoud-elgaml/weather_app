import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyMedium?.color ?? Colors.white;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: CircularProgressIndicator(
              strokeWidth: 5.5,
              valueColor: AlwaysStoppedAnimation<Color>(textColor),
              backgroundColor: textColor.withAlpha((0.1 * 255).round()),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Searching weather...',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textColor.withAlpha((0.8 * 255).round()),
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
