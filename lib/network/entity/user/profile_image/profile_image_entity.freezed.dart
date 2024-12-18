// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileImageEntity _$ProfileImageEntityFromJson(Map<String, dynamic> json) {
  return _ProfileImageEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileImageEntity {
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  /// Serializes this ProfileImageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileImageEntityCopyWith<ProfileImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageEntityCopyWith<$Res> {
  factory $ProfileImageEntityCopyWith(
          ProfileImageEntity value, $Res Function(ProfileImageEntity) then) =
      _$ProfileImageEntityCopyWithImpl<$Res, ProfileImageEntity>;
  @useResult
  $Res call({String? small, String? medium, String? large});
}

/// @nodoc
class _$ProfileImageEntityCopyWithImpl<$Res, $Val extends ProfileImageEntity>
    implements $ProfileImageEntityCopyWith<$Res> {
  _$ProfileImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImageEntityImplCopyWith<$Res>
    implements $ProfileImageEntityCopyWith<$Res> {
  factory _$$ProfileImageEntityImplCopyWith(_$ProfileImageEntityImpl value,
          $Res Function(_$ProfileImageEntityImpl) then) =
      __$$ProfileImageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? medium, String? large});
}

/// @nodoc
class __$$ProfileImageEntityImplCopyWithImpl<$Res>
    extends _$ProfileImageEntityCopyWithImpl<$Res, _$ProfileImageEntityImpl>
    implements _$$ProfileImageEntityImplCopyWith<$Res> {
  __$$ProfileImageEntityImplCopyWithImpl(_$ProfileImageEntityImpl _value,
      $Res Function(_$ProfileImageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
  }) {
    return _then(_$ProfileImageEntityImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImageEntityImpl implements _ProfileImageEntity {
  const _$ProfileImageEntityImpl({this.small, this.medium, this.large});

  factory _$ProfileImageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImageEntityImplFromJson(json);

  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;

  @override
  String toString() {
    return 'ProfileImageEntity(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageEntityImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  /// Create a copy of ProfileImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageEntityImplCopyWith<_$ProfileImageEntityImpl> get copyWith =>
      __$$ProfileImageEntityImplCopyWithImpl<_$ProfileImageEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImageEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfileImageEntity implements ProfileImageEntity {
  const factory _ProfileImageEntity(
      {final String? small,
      final String? medium,
      final String? large}) = _$ProfileImageEntityImpl;

  factory _ProfileImageEntity.fromJson(Map<String, dynamic> json) =
      _$ProfileImageEntityImpl.fromJson;

  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;

  /// Create a copy of ProfileImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImageEntityImplCopyWith<_$ProfileImageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
