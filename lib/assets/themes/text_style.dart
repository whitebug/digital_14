import 'package:digital_14/assets/colors/colors.dart';
import 'package:flutter/painting.dart';

/// Styles of texts.
const TextStyle _text = TextStyle(
  fontStyle: FontStyle.normal,
  color: textColorPrimary,
);

/// Regular.
TextStyle textRegular = _text.copyWith(fontWeight: FontWeight.normal);

/// Regular with fontSize 16.
TextStyle textRegular16 = textRegular.copyWith(fontSize: 16.0);
