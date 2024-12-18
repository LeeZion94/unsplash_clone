// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_topics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListTopicsDto _$ListTopicsDtoFromJson(Map<String, dynamic> json) {
  return _ListTopicsDto.fromJson(json);
}

/// @nodoc
mixin _$ListTopicsDto {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ListTopicsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListTopicsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListTopicsDtoCopyWith<ListTopicsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTopicsDtoCopyWith<$Res> {
  factory $ListTopicsDtoCopyWith(
          ListTopicsDto value, $Res Function(ListTopicsDto) then) =
      _$ListTopicsDtoCopyWithImpl<$Res, ListTopicsDto>;
  @useResult
  $Res call({String title, String id, String description});
}

/// @nodoc
class _$ListTopicsDtoCopyWithImpl<$Res, $Val extends ListTopicsDto>
    implements $ListTopicsDtoCopyWith<$Res> {
  _$ListTopicsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListTopicsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListTopicsDtoImplCopyWith<$Res>
    implements $ListTopicsDtoCopyWith<$Res> {
  factory _$$ListTopicsDtoImplCopyWith(
          _$ListTopicsDtoImpl value, $Res Function(_$ListTopicsDtoImpl) then) =
      __$$ListTopicsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String id, String description});
}

/// @nodoc
class __$$ListTopicsDtoImplCopyWithImpl<$Res>
    extends _$ListTopicsDtoCopyWithImpl<$Res, _$ListTopicsDtoImpl>
    implements _$$ListTopicsDtoImplCopyWith<$Res> {
  __$$ListTopicsDtoImplCopyWithImpl(
      _$ListTopicsDtoImpl _value, $Res Function(_$ListTopicsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListTopicsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_$ListTopicsDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListTopicsDtoImpl implements _ListTopicsDto {
  const _$ListTopicsDtoImpl(
      {required this.title, required this.id, required this.description});

  factory _$ListTopicsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListTopicsDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String id;
  @override
  final String description;

  @override
  String toString() {
    return 'ListTopicsDto(title: $title, id: $id, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTopicsDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, id, description);

  /// Create a copy of ListTopicsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTopicsDtoImplCopyWith<_$ListTopicsDtoImpl> get copyWith =>
      __$$ListTopicsDtoImplCopyWithImpl<_$ListTopicsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTopicsDtoImplToJson(
      this,
    );
  }
}

abstract class _ListTopicsDto implements ListTopicsDto {
  const factory _ListTopicsDto(
      {required final String title,
      required final String id,
      required final String description}) = _$ListTopicsDtoImpl;

  factory _ListTopicsDto.fromJson(Map<String, dynamic> json) =
      _$ListTopicsDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get id;
  @override
  String get description;

  /// Create a copy of ListTopicsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListTopicsDtoImplCopyWith<_$ListTopicsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
