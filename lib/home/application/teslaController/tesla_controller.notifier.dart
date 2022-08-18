import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tesla/home/application/teslaController/tesla_controller.state.dart';

final teslaControllerProvider =
    StateNotifierProvider<TeslaControllerNotifier, TeslaControllerState>(
        (ref) => TeslaControllerNotifier());

class TeslaControllerNotifier extends StateNotifier<TeslaControllerState> {
  TeslaControllerNotifier() : super(TeslaControllerState.initial());

  void updateRightDoorLock() {
    state = state.copyWith(isRightDoorLocked: !state.isRightDoorLocked);
  }

  void updateLeftDoorLock() {
    state = state.copyWith(isLeftDoorLocked: !state.isLeftDoorLocked);
  }

  void updateBonetLock() {
    state = state.copyWith(isBonetLocked: !state.isBonetLocked);
  }

  void updateTrunkLock() {
    state = state.copyWith(isTrunkLocked: !state.isTrunkLocked);
  }

  void selectTab(int index) {
    state = state.copyWith(selectedTab: index);
  }
}
