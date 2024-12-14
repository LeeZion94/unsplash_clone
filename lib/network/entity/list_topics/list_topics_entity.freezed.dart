// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_topics_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListTopicsEntity _$ListTopicsEntityFromJson(Map<String, dynamic> json) {
  return _ListTopicsEntity.fromJson(json);
}

/// @nodoc
mixin _$ListTopicsEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get featured => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_photos')
  int? get totalPhotos => throw _privateConstructorUsedError;

  /// Serializes this ListTopicsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListTopicsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListTopicsEntityCopyWith<ListTopicsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTopicsEntityCopyWith<$Res> {
  factory $ListTopicsEntityCopyWith(
          ListTopicsEntity value, $Res Function(ListTopicsEntity) then) =
      _$ListTopicsEntityCopyWithImpl<$Res, ListTopicsEntity>;
  @useResult
  $Res call(
      {String? id,
      String? slug,
      String? title,
      String? description,
      bool? featured,
      @JsonKey(name: 'total_photos') int? totalPhotos});
}

/// @nodoc
class _$ListTopicsEntityCopyWithImpl<$Res, $Val extends ListTopicsEntity>
    implements $ListTopicsEntityCopyWith<$Res> {
  _$ListTopicsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListTopicsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? featured = freezed,
    Object? totalPhotos = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListTopicsEntityImplCopyWith<$Res>
    implements $ListTopicsEntityCopyWith<$Res> {
  factory _$$ListTopicsEntityImplCopyWith(_$ListTopicsEntityImpl value,
          $Res Function(_$ListTopicsEntityImpl) then) =
      __$$ListTopicsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? slug,
      String? title,
      String? description,
      bool? featured,
      @JsonKey(name: 'total_photos') int? totalPhotos});
}

/// @nodoc
class __$$ListTopicsEntityImplCopyWithImpl<$Res>
    extends _$ListTopicsEntityCopyWithImpl<$Res, _$ListTopicsEntityImpl>
    implements _$$ListTopicsEntityImplCopyWith<$Res> {
  __$$ListTopicsEntityImplCopyWithImpl(_$ListTopicsEntityImpl _value,
      $Res Function(_$ListTopicsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListTopicsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? featured = freezed,
    Object? totalPhotos = freezed,
  }) {
    return _then(_$ListTopicsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListTopicsEntityImpl implements _ListTopicsEntity {
  const _$ListTopicsEntityImpl(
      {this.id,
      this.slug,
      this.title,
      this.description,
      this.featured,
      @JsonKey(name: 'total_photos') this.totalPhotos});

  factory _$ListTopicsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListTopicsEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? slug;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? featured;
  @override
  @JsonKey(name: 'total_photos')
  final int? totalPhotos;

  @override
  String toString() {
    return 'ListTopicsEntity(id: $id, slug: $slug, title: $title, description: $description, featured: $featured, totalPhotos: $totalPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTopicsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.totalPhotos, totalPhotos) ||
                other.totalPhotos == totalPhotos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, slug, title, description, featured, totalPhotos);

  /// Create a copy of ListTopicsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTopicsEntityImplCopyWith<_$ListTopicsEntityImpl> get copyWith =>
      __$$ListTopicsEntityImplCopyWithImpl<_$ListTopicsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTopicsEntityImplToJson(
      this,
    );
  }
}

abstract class _ListTopicsEntity implements ListTopicsEntity {
  const factory _ListTopicsEntity(
          {final String? id,
          final String? slug,
          final String? title,
          final String? description,
          final bool? featured,
          @JsonKey(name: 'total_photos') final int? totalPhotos}) =
      _$ListTopicsEntityImpl;

  factory _ListTopicsEntity.fromJson(Map<String, dynamic> json) =
      _$ListTopicsEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get slug;
  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get featured;
  @override
  @JsonKey(name: 'total_photos')
  int? get totalPhotos;

  /// Create a copy of ListTopicsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListTopicsEntityImplCopyWith<_$ListTopicsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
