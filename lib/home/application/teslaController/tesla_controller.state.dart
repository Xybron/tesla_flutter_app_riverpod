import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tesla_controller.state.freezed.dart';

@freezed
class TeslaControllerState with _$TeslaControllerState {
  const factory TeslaControllerState({
    @Default(true) bool isRightDoorLocked,
    @Default(true) bool isLeftDoorLocked,
    @Default(true) bool isTrunkLocked,
    @Default(true) bool isBonetLocked,
    @Default(0) int selectedTab,
  }) = _TeslaControllerState;

  factory TeslaControllerState.initial() => const TeslaControllerState();
}
