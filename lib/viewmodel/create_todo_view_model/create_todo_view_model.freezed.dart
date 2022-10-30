// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_todo_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTodoState {
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTodoStateCopyWith<CreateTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoStateCopyWith<$Res> {
  factory $CreateTodoStateCopyWith(
          CreateTodoState value, $Res Function(CreateTodoState) then) =
      _$CreateTodoStateCopyWithImpl<$Res, CreateTodoState>;
  @useResult
  $Res call({String title, String detail});
}

/// @nodoc
class _$CreateTodoStateCopyWithImpl<$Res, $Val extends CreateTodoState>
    implements $CreateTodoStateCopyWith<$Res> {
  _$CreateTodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTodoStateCopyWith<$Res>
    implements $CreateTodoStateCopyWith<$Res> {
  factory _$$_CreateTodoStateCopyWith(
          _$_CreateTodoState value, $Res Function(_$_CreateTodoState) then) =
      __$$_CreateTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String detail});
}

/// @nodoc
class __$$_CreateTodoStateCopyWithImpl<$Res>
    extends _$CreateTodoStateCopyWithImpl<$Res, _$_CreateTodoState>
    implements _$$_CreateTodoStateCopyWith<$Res> {
  __$$_CreateTodoStateCopyWithImpl(
      _$_CreateTodoState _value, $Res Function(_$_CreateTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? detail = null,
  }) {
    return _then(_$_CreateTodoState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateTodoState implements _CreateTodoState {
  const _$_CreateTodoState({this.title = "", this.detail = ""});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String detail;

  @override
  String toString() {
    return 'CreateTodoState(title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTodoState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTodoStateCopyWith<_$_CreateTodoState> get copyWith =>
      __$$_CreateTodoStateCopyWithImpl<_$_CreateTodoState>(this, _$identity);
}

abstract class _CreateTodoState implements CreateTodoState {
  const factory _CreateTodoState({final String title, final String detail}) =
      _$_CreateTodoState;

  @override
  String get title;
  @override
  String get detail;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTodoStateCopyWith<_$_CreateTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
