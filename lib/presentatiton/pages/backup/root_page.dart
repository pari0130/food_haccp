import 'package:flutter/material.dart';
import 'package:food_haccp/presentatiton/pages/backup/index.dart';
import 'package:food_haccp/config/themes/index.dart';
import 'package:food_haccp/presentatiton/widgets/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int activeTab = 0;
  List<Map<String,IconData>> icons = [
    {"active" : Icons.home_rounded, "unActive" : Icons.home_outlined},
    {"active" : Icons.find_in_page, "unActive" : Icons.find_in_page_outlined},
    {"active" : Icons.favorite_outlined, "unActive" : Icons.favorite_outline},
    {"active" : FontAwesomeIcons.edit, "unActive" : FontAwesomeIcons.solidEdit}
  ];
  List<Map<String,String>> iconsData = [
    {"text" : "홈", "size" : "35"},
    {"text" : "검색", "size" : "35"},
    {"text" : "좋아요", "size" : "35"},
    {"text" : "", "size" : "35"},
  ];

  List<IconData> tapIcons = [
    Icons.home_outlined,
    Icons.find_in_page_outlined,
    Icons.favorite_outline,
    FontAwesomeIcons.edit
  ];
  List<IconData> tapActiveIcons = [
    Icons.home_rounded,
    Icons.find_in_page,
    Icons.favorite_outlined,
    FontAwesomeIcons.solidEdit
  ];
  List<String> tapText = ["홈", "검색", "좋아요", "아아"];
  List<Widget> pages = [const HomePage(), const SearchPage(), const FavoritePage(), const FavoritePage()];

  @override
  Widget build(BuildContext context) {
    return goHome();
  }

  goHome() {
    return Scaffold(
      backgroundColor: appBgColor,
      bottomNavigationBar: getBottomBar(),
      body: getBarPage(),
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bottomBarColor,
        border: Border.all(width: 0.5, color: Colors.black12),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5), topRight: Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          tapIcons.length,
          (index) => BottomBarWidget(
            activeTab == index ? tapActiveIcons[index] : tapIcons[index],
            "",
            isActive: activeTab == index,
            activeColor: inActiveColor,
            iconText: tapText[index],
            onTap: () {
              setState(() {
                activeTab = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget getBarPage() {
    return IndexedStack(
      index: activeTab,
      children: List.generate(
        tapIcons.length,
        (index) => pages[index],
      ),
    );
  }
}
