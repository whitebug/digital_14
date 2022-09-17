// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(int? page) turnPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(int? page)? turnPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(int? page)? turnPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_TurnPageEvent value) turnPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_TurnPageEvent value)? turnPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_TurnPageEvent value)? turnPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res> implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  final EventsEvent _value;
  // ignore: unused_field
  final $Res Function(EventsEvent) _then;
}

/// @nodoc
abstract class _$$_GetEventsEventCopyWith<$Res> {
  factory _$$_GetEventsEventCopyWith(
          _$_GetEventsEvent value, $Res Function(_$_GetEventsEvent) then) =
      __$$_GetEventsEventCopyWithImpl<$Res>;
  $Res call({String searchRequest, int page, int perPage});
}

/// @nodoc
class __$$_GetEventsEventCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res>
    implements _$$_GetEventsEventCopyWith<$Res> {
  __$$_GetEventsEventCopyWithImpl(
      _$_GetEventsEvent _value, $Res Function(_$_GetEventsEvent) _then)
      : super(_value, (v) => _then(v as _$_GetEventsEvent));

  @override
  _$_GetEventsEvent get _value => super._value as _$_GetEventsEvent;

  @override
  $Res call({
    Object? searchRequest = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$_GetEventsEvent(
      searchRequest: searchRequest == freezed
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetEventsEvent implements _GetEventsEvent {
  const _$_GetEventsEvent(
      {required this.searchRequest, this.page = 1, this.perPage = 10});

  @override
  final String searchRequest;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;

  @override
  String toString() {
    return 'EventsEvent.getEvents(searchRequest: $searchRequest, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEventsEvent &&
            const DeepCollectionEquality()
                .equals(other.searchRequest, searchRequest) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.perPage, perPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchRequest),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(perPage));

  @JsonKey(ignore: true)
  @override
  _$$_GetEventsEventCopyWith<_$_GetEventsEvent> get copyWith =>
      __$$_GetEventsEventCopyWithImpl<_$_GetEventsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(int? page) turnPage,
  }) {
    return getEvents(searchRequest, page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(int? page)? turnPage,
  }) {
    return getEvents?.call(searchRequest, page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(int? page)? turnPage,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(searchRequest, page, perPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_TurnPageEvent value) turnPage,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_TurnPageEvent value)? turnPage,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_TurnPageEvent value)? turnPage,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class _GetEventsEvent implements EventsEvent {
  const factory _GetEventsEvent(
      {required final String searchRequest,
      final int page,
      final int perPage}) = _$_GetEventsEvent;

  String get searchRequest;
  int get page;
  int get perPage;
  @JsonKey(ignore: true)
  _$$_GetEventsEventCopyWith<_$_GetEventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TurnPageEventCopyWith<$Res> {
  factory _$$_TurnPageEventCopyWith(
          _$_TurnPageEvent value, $Res Function(_$_TurnPageEvent) then) =
      __$$_TurnPageEventCopyWithImpl<$Res>;
  $Res call({int? page});
}

/// @nodoc
class __$$_TurnPageEventCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res>
    implements _$$_TurnPageEventCopyWith<$Res> {
  __$$_TurnPageEventCopyWithImpl(
      _$_TurnPageEvent _value, $Res Function(_$_TurnPageEvent) _then)
      : super(_value, (v) => _then(v as _$_TurnPageEvent));

  @override
  _$_TurnPageEvent get _value => super._value as _$_TurnPageEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$_TurnPageEvent(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TurnPageEvent implements _TurnPageEvent {
  const _$_TurnPageEvent({this.page});

  @override
  final int? page;

  @override
  String toString() {
    return 'EventsEvent.turnPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TurnPageEvent &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_TurnPageEventCopyWith<_$_TurnPageEvent> get copyWith =>
      __$$_TurnPageEventCopyWithImpl<_$_TurnPageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(int? page) turnPage,
  }) {
    return turnPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(int? page)? turnPage,
  }) {
    return turnPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(int? page)? turnPage,
    required TResult orElse(),
  }) {
    if (turnPage != null) {
      return turnPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_TurnPageEvent value) turnPage,
  }) {
    return turnPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_TurnPageEvent value)? turnPage,
  }) {
    return turnPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_TurnPageEvent value)? turnPage,
    required TResult orElse(),
  }) {
    if (turnPage != null) {
      return turnPage(this);
    }
    return orElse();
  }
}

abstract class _TurnPageEvent implements EventsEvent {
  const factory _TurnPageEvent({final int? page}) = _$_TurnPageEvent;

  int? get page;
  @JsonKey(ignore: true)
  _$$_TurnPageEventCopyWith<_$_TurnPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  String get searchRequest => throw _privateConstructorUsedError;
  List<EventModel>? get eventsList => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  MetaModel? get metaModel => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res>;
  $Res call(
      {String searchRequest,
      List<EventModel>? eventsList,
      int page,
      int perPage,
      MetaModel? metaModel,
      String? error,
      int? nextPage});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res> implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  final EventsState _value;
  // ignore: unused_field
  final $Res Function(EventsState) _then;

  @override
  $Res call({
    Object? searchRequest = freezed,
    Object? eventsList = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? metaModel = freezed,
    Object? error = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      searchRequest: searchRequest == freezed
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as String,
      eventsList: eventsList == freezed
          ? _value.eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      metaModel: metaModel == freezed
          ? _value.metaModel
          : metaModel // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$EventsListStateCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$EventsListStateCopyWith(
          _$EventsListState value, $Res Function(_$EventsListState) then) =
      __$$EventsListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String searchRequest,
      List<EventModel>? eventsList,
      int page,
      int perPage,
      MetaModel? metaModel,
      String? error,
      int? nextPage});
}

/// @nodoc
class __$$EventsListStateCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res>
    implements _$$EventsListStateCopyWith<$Res> {
  __$$EventsListStateCopyWithImpl(
      _$EventsListState _value, $Res Function(_$EventsListState) _then)
      : super(_value, (v) => _then(v as _$EventsListState));

  @override
  _$EventsListState get _value => super._value as _$EventsListState;

  @override
  $Res call({
    Object? searchRequest = freezed,
    Object? eventsList = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? metaModel = freezed,
    Object? error = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_$EventsListState(
      searchRequest: searchRequest == freezed
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as String,
      eventsList: eventsList == freezed
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      metaModel: metaModel == freezed
          ? _value.metaModel
          : metaModel // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$EventsListState implements EventsListState {
  const _$EventsListState(
      {this.searchRequest = '',
      final List<EventModel>? eventsList,
      this.page = 1,
      this.perPage = 10,
      this.metaModel,
      this.error,
      this.nextPage})
      : _eventsList = eventsList;

  @override
  @JsonKey()
  final String searchRequest;
  final List<EventModel>? _eventsList;
  @override
  List<EventModel>? get eventsList {
    final value = _eventsList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;
  @override
  final MetaModel? metaModel;
  @override
  final String? error;
  @override
  final int? nextPage;

  @override
  String toString() {
    return 'EventsState(searchRequest: $searchRequest, eventsList: $eventsList, page: $page, perPage: $perPage, metaModel: $metaModel, error: $error, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsListState &&
            const DeepCollectionEquality()
                .equals(other.searchRequest, searchRequest) &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.metaModel, metaModel) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchRequest),
      const DeepCollectionEquality().hash(_eventsList),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(metaModel),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(nextPage));

  @JsonKey(ignore: true)
  @override
  _$$EventsListStateCopyWith<_$EventsListState> get copyWith =>
      __$$EventsListStateCopyWithImpl<_$EventsListState>(this, _$identity);
}

abstract class EventsListState implements EventsState {
  const factory EventsListState(
      {final String searchRequest,
      final List<EventModel>? eventsList,
      final int page,
      final int perPage,
      final MetaModel? metaModel,
      final String? error,
      final int? nextPage}) = _$EventsListState;

  @override
  String get searchRequest;
  @override
  List<EventModel>? get eventsList;
  @override
  int get page;
  @override
  int get perPage;
  @override
  MetaModel? get metaModel;
  @override
  String? get error;
  @override
  int? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$EventsListStateCopyWith<_$EventsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
