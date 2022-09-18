import 'package:digital_14/assets/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'indicators.dart';

class NoItemsFoundIndicator extends StatelessWidget {
  const NoItemsFoundIndicator({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return FooterTile(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          text,
          style: AppTypography.body,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
