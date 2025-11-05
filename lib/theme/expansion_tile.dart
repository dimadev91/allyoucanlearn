// ignore_for_file: use_key_in_widget_constructors

import 'package:all_you_learn/exports.dart';

class NewExpansionTile extends StatelessWidget {
  final String text1;
  final String text2;
  final double? height;

  const NewExpansionTile({
    required this.text1,
    required this.text2,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: ExpansionTile(
        title: Text(text1, style: kTextIndex),
        children: [
          SizedBox(
            width: double.infinity,
            height: height ?? 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child: Text(style: kPagesStyle, text2),
              ),
            ),
          ), //ImageAsset
        ],
      ),
    );
  }
}
