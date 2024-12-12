// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urls_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UrlsEntity _$UrlsEntityFromJson(Map<String, dynamic> json) {
  return _UrlsEntity.fromJson(json);
}

/// @nodoc
mixin _$UrlsEntity {
  String? get raw => throw _privateConstructorUsedError;
  String? get full => throw _privateConstructorUsedError;
  String? get regular => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;

  /// Serializes this UrlsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsEntityCopyWith<UrlsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsEntityCopyWith<$Res> {
  factory $UrlsEntityCopyWith(
          UrlsEntity value, $Res Function(UrlsEntity) then) =
      _$UrlsEntityCopyWithImpl<$Res, UrlsEntity>;
  @useResult
  $Res call(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb});
}

/// @nodoc
class _$UrlsEntityCopyWithImpl<$Res, $Val extends UrlsEntity>
    implements $UrlsEntityCopyWith<$Res> {
  _$UrlsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_value.copyWith(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: freezed == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlsEntityImplCopyWith<$Res>
    implements $UrlsEntityCopyWith<$Res> {
  factory _$$UrlsEntityImplCopyWith(
          _$UrlsEntityImpl value, $Res Function(_$UrlsEntityImpl) then) =
      __$$UrlsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb});
}

/// @nodoc
class __$$UrlsEntityImplCopyWithImpl<$Res>
    extends _$UrlsEntityCopyWithImpl<$Res, _$UrlsEntityImpl>
    implements _$$UrlsEntityImplCopyWith<$Res> {
  __$$UrlsEntityImplCopyWithImpl(
      _$UrlsEntityImpl _value, $Res Function(_$UrlsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UrlsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_$UrlsEntityImpl(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: freezed == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsEntityImpl implements _UrlsEntity {
  const _$UrlsEntityImpl(
      {this.raw, this.full, this.regular, this.small, this.thumb});

  factory _$UrlsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsEntityImplFromJson(json);

  @override
  final String? raw;
  @override
  final String? full;
  @override
  final String? regular;
  @override
  final String? small;
  @override
  final String? thumb;

  @override
  String toString() {
    return 'UrlsEntity(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsEntityImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, raw, full, regular, small, thumb);

  /// Create a copy of UrlsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsEntityImplCopyWith<_$UrlsEntityImpl> get copyWith =>
      __$$UrlsEntityImplCopyWithImpl<_$UrlsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsEntityImplToJson(
      this,
    );
  }
}

abstract class _UrlsEntity implements UrlsEntity {
  const factory _UrlsEntity(
      {final String? raw,
      final String? full,
      final String? regular,
      final String? small,
      final String? thumb}) = _$UrlsEntityImpl;

  factory _UrlsEntity.fromJson(Map<String, dynamic> json) =
      _$UrlsEntityImpl.fromJson;

  @override
  String? get raw;
  @override
  String? get full;
  @override
  String? get regular;
  @override
  String? get small;
  @override
  String? get thumb;

  /// Create a copy of UrlsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsEntityImplCopyWith<_$UrlsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
