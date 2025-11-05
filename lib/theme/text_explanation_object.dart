import 'package:all_you_learn/constants/constants.dart';
import 'package:flutter/material.dart';

class TextExplanationObj extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  final TextStyle? style;
  final double? top;

  // ignore: use_key_in_widget_constructors
  const TextExplanationObj({this.text, this.onPress, this.style, this.top});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.only(left: 25.0, top: top ?? 2, right: 25),
          width: double.infinity,
          color: Color(0xFFF4FAFF),
          child: Text(text ?? '', style: style ?? kPagesStyle),
        ),
      ),
    );
  }
}
