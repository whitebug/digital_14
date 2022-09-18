import 'package:digital_14/assets/colors/colors.dart';
import 'package:digital_14/assets/typography/app_typography.dart';
import 'package:flutter/material.dart';

class FirstPageErrorIndicator extends StatelessWidget {
  const FirstPageErrorIndicator({
    required this.title,
    required this.buttonTitle,
    required this.onTryAgain,
    Key? key,
  }) : super(key: key);

  final String title;
  final String buttonTitle;
  final VoidCallback onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTypography.header,
            ),
            const SizedBox(
              height: 48.0,
            ),
            SizedBox(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: onTryAgain,
                icon: const Icon(
                  Icons.refresh,
                  color: white,
                ),
                label: Text(
                  buttonTitle,
                  style: AppTypography.body,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
