import 'package:flutter/material.dart';

import 'indicators.dart';

class NewPageErrorIndicator extends StatelessWidget {
  const NewPageErrorIndicator({
    required this.title,
    required this.onRefresh,
    Key? key,
  }) : super(key: key);

  final String title;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onRefresh,
      child: FooterTile(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Something went wrong. Tap to try again.',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4,
            ),
            Icon(
              Icons.refresh,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
