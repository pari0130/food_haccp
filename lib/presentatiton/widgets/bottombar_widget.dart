import 'package:flutter/material.dart';
import 'package:food_haccp/config/themes/index.dart';
import 'package:food_haccp/config/fonts/index.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget(this.icon, this.title,
      {super.key,
      this.onTap,
      this.color = inActiveColor,
      this.activeColor = primary,
      this.isActive = false,
      this.iconText = "홈"});

  final IconData icon;
  final String title;
  final Color color;
  final Color activeColor;
  final String iconText;
  final bool isActive;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive
                  ? Colors.white.withOpacity(.15)
                  : Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,
                    size: 30, color: isActive ? activeColor : color),
                const SizedBox(height: 2,),
                Text(iconText, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, fontFamily: gmarketSansTTFMedium),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
