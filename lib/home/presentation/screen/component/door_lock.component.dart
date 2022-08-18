import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla/core/constant.dart';

class DoorLock extends StatelessWidget {
  final VoidCallback onTap;
  final bool isLocked;

  const DoorLock({
    Key? key,
    required this.onTap,
    required this.isLocked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedSwitcher(
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        duration: defaultAnimationDuration,
        child: isLocked
            ? SvgPicture.asset(
                "assets/icons/door_lock.svg",
                key: const ValueKey("lock"),
              )
            : SvgPicture.asset("assets/icons/door_unlock.svg",
                key: const ValueKey(
                  "unlock",
                )),
      ),
    );
  }
}
