import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TeslaNavigationBar extends StatelessWidget {
  final int selectedTab;
  final ValueChanged<int> onTap;
  const TeslaNavigationBar({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: List.generate(
            navDetails.length,
            (index) => BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    navDetails[index],
                    color: index == selectedTab
                        ? Colors.lightBlue[400]
                        : Colors.white54,
                  ),
                )));
  }
}

List navDetails = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];
