import 'package:all_you_learn/constants/constants.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  final TextStyle? style;
  final double? top;
  final IconData? icon;

  // ignore: use_key_in_widget_constructors
  const TextContainer({
    Key? key,
    this.text,
    this.onPress,
    this.style,
    this.top,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onPress,
          child: Container(
            padding: EdgeInsets.only(left: 20.0, top: top ?? 2, right: 5),
            color: Color(0xFFF4FAFF),
            child: Text(text ?? '', style: style ?? kPagesStyle),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onPress,
          child: Icon(
            icon,
            size: 25,
            color: (icon != null)
                ? const Color(0xFF19A1D9)
                // ignore: use_full_hex_values_for_flutter_colors
                : const Color(0xFFFFFF),
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
