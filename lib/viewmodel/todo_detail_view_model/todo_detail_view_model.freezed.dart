// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoDetailState {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoDetailStateCopyWith<TodoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDetailStateCopyWith<$Res> {
  factory $TodoDetailStateCopyWith(
          TodoDetailState value, $Res Function(TodoDetailState) then) =
      _$TodoDetailStateCopyWithImpl<$Res, TodoDetailState>;
  @useResult
  $Res call({String? id, String? title, String? detail});
}

/// @nodoc
class _$TodoDetailStateCopyWithImpl<$Res, $Val extends TodoDetailState>
    implements $TodoDetailStateCopyWith<$Res> {
  _$TodoDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoDetailStateCopyWith<$Res>
    implements $TodoDetailStateCopyWith<$Res> {
  factory _$$_TodoDetailStateCopyWith(
          _$_TodoDetailState value, $Res Function(_$_TodoDetailState) then) =
      __$$_TodoDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? detail});
}

/// @nodoc
class __$$_TodoDetailStateCopyWithImpl<$Res>
    extends _$TodoDetailStateCopyWithImpl<$Res, _$_TodoDetailState>
    implements _$$_TodoDetailStateCopyWith<$Res> {
  __$$_TodoDetailStateCopyWithImpl(
      _$_TodoDetailState _value, $Res Function(_$_TodoDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$_TodoDetailState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TodoDetailState implements _TodoDetailState {
  const _$_TodoDetailState({this.id = "", this.title = "", this.detail = ""});

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? detail;

  @override
  String toString() {
    return 'TodoDetailState(id: $id, title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDetailState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDetailStateCopyWith<_$_TodoDetailState> get copyWith =>
      __$$_TodoDetailStateCopyWithImpl<_$_TodoDetailState>(this, _$identity);
}

abstract class _TodoDetailState implements TodoDetailState {
  const factory _TodoDetailState(
      {final String? id,
      final String? title,
      final String? detail}) = _$_TodoDetailState;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get detail;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDetailStateCopyWith<_$_TodoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
