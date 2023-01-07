import 'package:flutter/material.dart';
import 'package:food_haccp/config/themes/index.dart';

class GestureSearchBoxWidget extends StatelessWidget {
  const GestureSearchBoxWidget(
      {Key? key, this.hint = "", this.onTap, this.prefix, this.suffix})
      : super(key: key);
  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 5, bottom: 3),
        height: 30,
        decoration: BoxDecoration(
            color: textBoxColor,
            border: Border.all(color: textBoxColor),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          decoration: InputDecoration(
            enabled: false,
            prefixIcon: prefix,
            suffixIcon: suffix,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: darker, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
