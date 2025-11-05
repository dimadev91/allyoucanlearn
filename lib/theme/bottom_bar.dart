import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Icon? icon;
  final Icon? icon1;
  final Icon? icon2;
  final VoidCallback? onPression;
  final VoidCallback? onPression1;
  final VoidCallback? onPression2;

  // ignore: use_key_in_widget_constructors
  const BottomBar({
    this.icon,
    this.icon1,
    this.icon2,
    this.onPression,
    this.onPression1,
    this.onPression2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: icon != null
              ? GestureDetector(
                  child: IconButton(
                    padding: const EdgeInsets.only(bottom: 25),
                    iconSize: 35,
                    icon: icon!,
                    onPressed: onPression,
                  ),
                )
              : SizedBox(),
        ),
        Expanded(
          child: icon1 != null
              ? GestureDetector(
                  child: IconButton(
                    padding: const EdgeInsets.only(bottom: 25),
                    iconSize: 35,
                    icon: icon1!,
                    onPressed: onPression1,
                  ),
                )
              : SizedBox(),
        ),
        Expanded(
          child: icon2 != null
              ? GestureDetector(
                  child: IconButton(
                    padding: const EdgeInsets.only(bottom: 25),
                    iconSize: 35,
                    icon: icon2!,
                    onPressed: onPression2,
                  ),
                )
              : SizedBox(),
        ),
      ],
    );
  }
}
