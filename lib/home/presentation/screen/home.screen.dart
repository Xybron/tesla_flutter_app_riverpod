import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tesla/core/constant.dart';
import 'package:tesla/home/application/teslaController/tesla_controller.notifier.dart';
import 'package:tesla/home/presentation/screen/component/battery_status.component.dart';
import 'package:tesla/home/presentation/screen/component/door_lock.component.dart';

import 'component/navigation_bar.component.dart';

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _testlaController = ref.watch(teslaControllerProvider.notifier);
    final _teslaState = ref.watch(teslaControllerProvider);
    final _batteryAnimationController =
        useAnimationController(duration: const Duration(milliseconds: 600));
    final _batteryAnimation = useAnimation(CurvedAnimation(
        parent: _batteryAnimationController, curve: const Interval(0.0, 0.5)));

    final _batteryStatusAnimation = useAnimation(CurvedAnimation(
        parent: _batteryAnimationController, curve: const Interval(0.6, 1)));

    return Scaffold(
      bottomNavigationBar: TeslaNavigationBar(
        onTap: (selected) {
          // Start the battery animation when the selected tab is set to 1 (battery)
          if (selected == 1) _batteryAnimationController.forward();
          if (_teslaState.selectedTab == 1 && selected != 1)
            _batteryAnimationController.reverse(from: 0.7);

          // Update the selected tab
          _testlaController.selectTab(selected);
        },
        selectedTab: _teslaState.selectedTab,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constrains) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: constrains.maxHeight * 0.1),
                child: SvgPicture.asset(
                  "assets/icons/Car.svg",
                  width: double.infinity,
                ),
              ),
              // Right Lock
              AnimatedPositioned(
                duration: defaultAnimationDuration,
                right: _teslaState.selectedTab == 0
                    ? constrains.maxWidth * 0.05
                    : constrains.maxWidth / 2,
                child: AnimatedOpacity(
                  duration: defaultAnimationDuration,
                  opacity: _teslaState.selectedTab == 0 ? 1 : 0,
                  child: DoorLock(
                    isLocked: _teslaState.isRightDoorLocked,
                    onTap: () => _testlaController.updateRightDoorLock(),
                  ),
                ),
              ),
              // Left Lock
              AnimatedPositioned(
                duration: defaultAnimationDuration,
                left: _teslaState.selectedTab == 0
                    ? constrains.maxWidth * 0.05
                    : constrains.maxWidth / 2,
                child: AnimatedOpacity(
                  duration: defaultAnimationDuration,
                  opacity: _teslaState.selectedTab == 0 ? 1 : 0,
                  child: DoorLock(
                    isLocked: _teslaState.isLeftDoorLocked,
                    onTap: () => _testlaController.updateLeftDoorLock(),
                  ),
                ),
              ),
              // Top Lock
              AnimatedPositioned(
                duration: defaultAnimationDuration,
                top: _teslaState.selectedTab == 0
                    ? constrains.maxHeight * 0.13
                    : constrains.maxHeight / 2,
                child: AnimatedOpacity(
                  duration: defaultAnimationDuration,
                  opacity: _teslaState.selectedTab == 0 ? 1 : 0,
                  child: DoorLock(
                    isLocked: _teslaState.isBonetLocked,
                    onTap: () => _testlaController.updateBonetLock(),
                  ),
                ),
              ),
              // Trunk Lock
              AnimatedPositioned(
                duration: defaultAnimationDuration,
                bottom: _teslaState.selectedTab == 0
                    ? constrains.maxHeight * 0.17
                    : constrains.maxHeight / 2,
                child: AnimatedOpacity(
                  duration: defaultAnimationDuration,
                  opacity: _teslaState.selectedTab == 0 ? 1 : 0,
                  child: DoorLock(
                    isLocked: _teslaState.isTrunkLocked,
                    onTap: () => _testlaController.updateTrunkLock(),
                  ),
                ),
              ),
              //Battery pack
              Opacity(
                opacity: _batteryAnimation,
                child: SvgPicture.asset(
                  "assets/icons/Battery.svg",
                  width: constrains.maxWidth * 0.45,
                ),
              ),
              Positioned(
                top: 50 * (1 - _batteryStatusAnimation),
                height: constrains.maxHeight,
                width: constrains.maxWidth,
                child: Opacity(
                  opacity: _batteryStatusAnimation,
                  child: BatteryStatus(
                    constraints: constrains,
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
