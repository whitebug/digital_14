import 'package:flutter/material.dart';
import 'indicators.dart';

class NewPageProgressIndicator extends StatelessWidget {
  const NewPageProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FooterTile(
      child: CircularProgressIndicator(),
    );
  }
}
