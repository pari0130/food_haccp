import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:food_haccp/presentatiton/pages/home/home_page.dart';
import 'package:food_haccp/presentatiton/pages/root/root_controller.dart';
import 'package:food_haccp/presentatiton/pages/search/search_page.dart';
import 'package:food_haccp/presentatiton/pages/favorite/favorite_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                SearchPage(),
                FavoritePage()
              ],
            ),
          ),
          bottomNavigationBar: Container(
            child: BottomNavigationBar(
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.blueAccent,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 5.0,
              items: [
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.home,
                  label: 'Home',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.search,
                  label: 'Search',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.heart,
                  label: 'Favorite',
                )
              ],
            ),
          )
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}