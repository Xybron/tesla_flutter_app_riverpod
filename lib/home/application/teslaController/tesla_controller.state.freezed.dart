// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tesla_controller.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeslaControllerState {
  bool get isRightDoorLocked => throw _privateConstructorUsedError;
  bool get isLeftDoorLocked => throw _privateConstructorUsedError;
  bool get isTrunkLocked => throw _privateConstructorUsedError;
  bool get isBonetLocked => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeslaControllerStateCopyWith<TeslaControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeslaControllerStateCopyWith<$Res> {
  factory $TeslaControllerStateCopyWith(TeslaControllerState value,
          $Res Function(TeslaControllerState) then) =
      _$TeslaControllerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isRightDoorLocked,
      bool isLeftDoorLocked,
      bool isTrunkLocked,
      bool isBonetLocked,
      int selectedTab});
}

/// @nodoc
class _$TeslaControllerStateCopyWithImpl<$Res>
    implements $TeslaControllerStateCopyWith<$Res> {
  _$TeslaControllerStateCopyWithImpl(this._value, this._then);

  final TeslaControllerState _value;
  // ignore: unused_field
  final $Res Function(TeslaControllerState) _then;

  @override
  $Res call({
    Object? isRightDoorLocked = freezed,
    Object? isLeftDoorLocked = freezed,
    Object? isTrunkLocked = freezed,
    Object? isBonetLocked = freezed,
    Object? selectedTab = freezed,
  }) {
    return _then(_value.copyWith(
      isRightDoorLocked: isRightDoorLocked == freezed
          ? _value.isRightDoorLocked
          : isRightDoorLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeftDoorLocked: isLeftDoorLocked == freezed
          ? _value.isLeftDoorLocked
          : isLeftDoorLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrunkLocked: isTrunkLocked == freezed
          ? _value.isTrunkLocked
          : isTrunkLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isBonetLocked: isBonetLocked == freezed
          ? _value.isBonetLocked
          : isBonetLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TeslaControllerStateCopyWith<$Res>
    implements $TeslaControllerStateCopyWith<$Res> {
  factory _$$_TeslaControllerStateCopyWith(_$_TeslaControllerState value,
          $Res Function(_$_TeslaControllerState) then) =
      __$$_TeslaControllerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isRightDoorLocked,
      bool isLeftDoorLocked,
      bool isTrunkLocked,
      bool isBonetLocked,
      int selectedTab});
}

/// @nodoc
class __$$_TeslaControllerStateCopyWithImpl<$Res>
    extends _$TeslaControllerStateCopyWithImpl<$Res>
    implements _$$_TeslaControllerStateCopyWith<$Res> {
  __$$_TeslaControllerStateCopyWithImpl(_$_TeslaControllerState _value,
      $Res Function(_$_TeslaControllerState) _then)
      : super(_value, (v) => _then(v as _$_TeslaControllerState));

  @override
  _$_TeslaControllerState get _value => super._value as _$_TeslaControllerState;

  @override
  $Res call({
    Object? isRightDoorLocked = freezed,
    Object? isLeftDoorLocked = freezed,
    Object? isTrunkLocked = freezed,
    Object? isBonetLocked = freezed,
    Object? selectedTab = freezed,
  }) {
    return _then(_$_TeslaControllerState(
      isRightDoorLocked: isRightDoorLocked == freezed
          ? _value.isRightDoorLocked
          : isRightDoorLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeftDoorLocked: isLeftDoorLocked == freezed
          ? _value.isLeftDoorLocked
          : isLeftDoorLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrunkLocked: isTrunkLocked == freezed
          ? _value.isTrunkLocked
          : isTrunkLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isBonetLocked: isBonetLocked == freezed
          ? _value.isBonetLocked
          : isBonetLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TeslaControllerState implements _TeslaControllerState {
  const _$_TeslaControllerState(
      {this.isRightDoorLocked = true,
      this.isLeftDoorLocked = true,
      this.isTrunkLocked = true,
      this.isBonetLocked = true,
      this.selectedTab = 0});

  @override
  @JsonKey()
  final bool isRightDoorLocked;
  @override
  @JsonKey()
  final bool isLeftDoorLocked;
  @override
  @JsonKey()
  final bool isTrunkLocked;
  @override
  @JsonKey()
  final bool isBonetLocked;
  @override
  @JsonKey()
  final int selectedTab;

  @override
  String toString() {
    return 'TeslaControllerState(isRightDoorLocked: $isRightDoorLocked, isLeftDoorLocked: $isLeftDoorLocked, isTrunkLocked: $isTrunkLocked, isBonetLocked: $isBonetLocked, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeslaControllerState &&
            const DeepCollectionEquality()
                .equals(other.isRightDoorLocked, isRightDoorLocked) &&
            const DeepCollectionEquality()
                .equals(other.isLeftDoorLocked, isLeftDoorLocked) &&
            const DeepCollectionEquality()
                .equals(other.isTrunkLocked, isTrunkLocked) &&
            const DeepCollectionEquality()
                .equals(other.isBonetLocked, isBonetLocked) &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isRightDoorLocked),
      const DeepCollectionEquality().hash(isLeftDoorLocked),
      const DeepCollectionEquality().hash(isTrunkLocked),
      const DeepCollectionEquality().hash(isBonetLocked),
      const DeepCollectionEquality().hash(selectedTab));

  @JsonKey(ignore: true)
  @override
  _$$_TeslaControllerStateCopyWith<_$_TeslaControllerState> get copyWith =>
      __$$_TeslaControllerStateCopyWithImpl<_$_TeslaControllerState>(
          this, _$identity);
}

abstract class _TeslaControllerState implements TeslaControllerState {
  const factory _TeslaControllerState(
      {final bool isRightDoorLocked,
      final bool isLeftDoorLocked,
      final bool isTrunkLocked,
      final bool isBonetLocked,
      final int selectedTab}) = _$_TeslaControllerState;

  @override
  bool get isRightDoorLocked;
  @override
  bool get isLeftDoorLocked;
  @override
  bool get isTrunkLocked;
  @override
  bool get isBonetLocked;
  @override
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_TeslaControllerStateCopyWith<_$_TeslaControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}
