import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomAppBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomAppBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 86,
      color: Colors.white,
      elevation: 15,
      shadowColor: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buttonNavigationBarItem(
              name: 'Home', iconPath: 'assets/images/home1.svg', index: 0),
          buttonNavigationBarItem(
              name: 'Wishlist', iconPath: 'assets/images/heart_1.svg', index: 1),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: FloatingActionButton(
              onPressed: () => widget.onItemTapped(2),
              backgroundColor: Colors.white,
              elevation: 4,
              child: SvgPicture.asset('assets/images/shopping_cart_2.svg'),
            ),
          ),
          buttonNavigationBarItem(
              name: 'Search', iconPath: 'assets/images/search_1.svg', index: 3),
          buttonNavigationBarItem(
              name: 'Profile', iconPath: 'assets/images/profile.svg', index: 4),
        ],
      ),
    );
  }

  Column buttonNavigationBarItem(
      {required String name, required String iconPath, required int index}) {
    return Column(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            iconPath,
            color: widget.selectedIndex == index
                ? const Color(0xffF83758)
                : Colors.grey,
          ),
          onPressed: () => widget.onItemTapped(index),
        ),
        Text(
          name,
          style: AppStyles.textStyle12.copyWith(
              color: widget.selectedIndex == index
                  ? const Color(0xffF83758)
                  : Colors.grey),
        )
      ],
    );
  }
}
