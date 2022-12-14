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
mixin _$EventsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(String searchRequest) search,
    required TResult Function(int? page) turnPage,
    required TResult Function() reset,
    required TResult Function(EventModel eventModel, bool favorite) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_TurnPageEvent value) turnPage,
    required TResult Function(_ResetEvent value) reset,
    required TResult Function(_FavoriteEvent value) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsListEventCopyWith<$Res> {
  factory $EventsListEventCopyWith(
          EventsListEvent value, $Res Function(EventsListEvent) then) =
      _$EventsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsListEventCopyWithImpl<$Res>
    implements $EventsListEventCopyWith<$Res> {
  _$EventsListEventCopyWithImpl(this._value, this._then);

  final EventsListEvent _value;
  // ignore: unused_field
  final $Res Function(EventsListEvent) _then;
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
    extends _$EventsListEventCopyWithImpl<$Res>
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
      {required this.searchRequest, required this.page, required this.perPage});

  @override
  final String searchRequest;
  @override
  final int page;
  @override
  final int perPage;

  @override
  String toString() {
    return 'EventsListEvent.getEvents(searchRequest: $searchRequest, page: $page, perPage: $perPage)';
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
    required TResult Function(String searchRequest) search,
    required TResult Function(int? page) turnPage,
    required TResult Function() reset,
    required TResult Function(EventModel eventModel, bool favorite) favorite,
  }) {
    return getEvents(searchRequest, page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
  }) {
    return getEvents?.call(searchRequest, page, perPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
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
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_TurnPageEvent value) turnPage,
    required TResult Function(_ResetEvent value) reset,
    required TResult Function(_FavoriteEvent value) favorite,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class _GetEventsEvent implements EventsListEvent {
  const factory _GetEventsEvent(
      {required final String searchRequest,
      required final int page,
      required final int perPage}) = _$_GetEventsEvent;

  String get searchRequest;
  int get page;
  int get perPage;
  @JsonKey(ignore: true)
  _$$_GetEventsEventCopyWith<_$_GetEventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchEventCopyWith<$Res> {
  factory _$$_SearchEventCopyWith(
          _$_SearchEvent value, $Res Function(_$_SearchEvent) then) =
      __$$_SearchEventCopyWithImpl<$Res>;
  $Res call({String searchRequest});
}

/// @nodoc
class __$$_SearchEventCopyWithImpl<$Res>
    extends _$EventsListEventCopyWithImpl<$Res>
    implements _$$_SearchEventCopyWith<$Res> {
  __$$_SearchEventCopyWithImpl(
      _$_SearchEvent _value, $Res Function(_$_SearchEvent) _then)
      : super(_value, (v) => _then(v as _$_SearchEvent));

  @override
  _$_SearchEvent get _value => super._value as _$_SearchEvent;

  @override
  $Res call({
    Object? searchRequest = freezed,
  }) {
    return _then(_$_SearchEvent(
      searchRequest: searchRequest == freezed
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchEvent implements _SearchEvent {
  const _$_SearchEvent({required this.searchRequest});

  @override
  final String searchRequest;

  @override
  String toString() {
    return 'EventsListEvent.search(searchRequest: $searchRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEvent &&
            const DeepCollectionEquality()
                .equals(other.searchRequest, searchRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchRequest));

  @JsonKey(ignore: true)
  @override
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      __$$_SearchEventCopyWithImpl<_$_SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(String searchRequest) search,
    required TResult Function(int? page) turnPage,
    required TResult Function() reset,
    required TResult Function(EventModel eventModel, bool favorite) favorite,
  }) {
    return search(searchRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
  }) {
    return search?.call(searchRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_TurnPageEvent value) turnPage,
    required TResult Function(_ResetEvent value) reset,
    required TResult Function(_FavoriteEvent value) favorite,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements EventsListEvent {
  const factory _SearchEvent({required final String searchRequest}) =
      _$_SearchEvent;

  String get searchRequest;
  @JsonKey(ignore: true)
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
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
    extends _$EventsListEventCopyWithImpl<$Res>
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
    return 'EventsListEvent.turnPage(page: $page)';
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
    required TResult Function(String searchRequest) search,
    required TResult Function(int? page) turnPage,
    required TResult Function() reset,
    required TResult Function(EventModel eventModel, bool favorite) favorite,
  }) {
    return turnPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
  }) {
    return turnPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
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
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_TurnPageEvent value) turnPage,
    required TResult Function(_ResetEvent value) reset,
    required TResult Function(_FavoriteEvent value) favorite,
  }) {
    return turnPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
  }) {
    return turnPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
    required TResult orElse(),
  }) {
    if (turnPage != null) {
      return turnPage(this);
    }
    return orElse();
  }
}

abstract class _TurnPageEvent implements EventsListEvent {
  const factory _TurnPageEvent({final int? page}) = _$_TurnPageEvent;

  int? get page;
  @JsonKey(ignore: true)
  _$$_TurnPageEventCopyWith<_$_TurnPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetEventCopyWith<$Res> {
  factory _$$_ResetEventCopyWith(
          _$_ResetEvent value, $Res Function(_$_ResetEvent) then) =
      __$$_ResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetEventCopyWithImpl<$Res>
    extends _$EventsListEventCopyWithImpl<$Res>
    implements _$$_ResetEventCopyWith<$Res> {
  __$$_ResetEventCopyWithImpl(
      _$_ResetEvent _value, $Res Function(_$_ResetEvent) _then)
      : super(_value, (v) => _then(v as _$_ResetEvent));

  @override
  _$_ResetEvent get _value => super._value as _$_ResetEvent;
}

/// @nodoc

class _$_ResetEvent implements _ResetEvent {
  const _$_ResetEvent();

  @override
  String toString() {
    return 'EventsListEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(String searchRequest) search,
    required TResult Function(int? page) turnPage,
    required TResult Function() reset,
    required TResult Function(EventModel eventModel, bool favorite) favorite,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_TurnPageEvent value) turnPage,
    required TResult Function(_ResetEvent value) reset,
    required TResult Function(_FavoriteEvent value) favorite,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetEvent implements EventsListEvent {
  const factory _ResetEvent() = _$_ResetEvent;
}

/// @nodoc
abstract class _$$_FavoriteEventCopyWith<$Res> {
  factory _$$_FavoriteEventCopyWith(
          _$_FavoriteEvent value, $Res Function(_$_FavoriteEvent) then) =
      __$$_FavoriteEventCopyWithImpl<$Res>;
  $Res call({EventModel eventModel, bool favorite});
}

/// @nodoc
class __$$_FavoriteEventCopyWithImpl<$Res>
    extends _$EventsListEventCopyWithImpl<$Res>
    implements _$$_FavoriteEventCopyWith<$Res> {
  __$$_FavoriteEventCopyWithImpl(
      _$_FavoriteEvent _value, $Res Function(_$_FavoriteEvent) _then)
      : super(_value, (v) => _then(v as _$_FavoriteEvent));

  @override
  _$_FavoriteEvent get _value => super._value as _$_FavoriteEvent;

  @override
  $Res call({
    Object? eventModel = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_$_FavoriteEvent(
      eventModel: eventModel == freezed
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FavoriteEvent implements _FavoriteEvent {
  const _$_FavoriteEvent({required this.eventModel, required this.favorite});

  @override
  final EventModel eventModel;
  @override
  final bool favorite;

  @override
  String toString() {
    return 'EventsListEvent.favorite(eventModel: $eventModel, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteEvent &&
            const DeepCollectionEquality()
                .equals(other.eventModel, eventModel) &&
            const DeepCollectionEquality().equals(other.favorite, favorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventModel),
      const DeepCollectionEquality().hash(favorite));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteEventCopyWith<_$_FavoriteEvent> get copyWith =>
      __$$_FavoriteEventCopyWithImpl<_$_FavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchRequest, int page, int perPage)
        getEvents,
    required TResult Function(String searchRequest) search,
    required TResult Function(int? page) turnPage,
    required TResult Function() reset,
    required TResult Function(EventModel eventModel, bool favorite) favorite,
  }) {
    return favorite(eventModel, this.favorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
  }) {
    return favorite?.call(eventModel, this.favorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchRequest, int page, int perPage)? getEvents,
    TResult Function(String searchRequest)? search,
    TResult Function(int? page)? turnPage,
    TResult Function()? reset,
    TResult Function(EventModel eventModel, bool favorite)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(eventModel, this.favorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEventsEvent value) getEvents,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_TurnPageEvent value) turnPage,
    required TResult Function(_ResetEvent value) reset,
    required TResult Function(_FavoriteEvent value) favorite,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEventsEvent value)? getEvents,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_TurnPageEvent value)? turnPage,
    TResult Function(_ResetEvent value)? reset,
    TResult Function(_FavoriteEvent value)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _FavoriteEvent implements EventsListEvent {
  const factory _FavoriteEvent(
      {required final EventModel eventModel,
      required final bool favorite}) = _$_FavoriteEvent;

  EventModel get eventModel;
  bool get favorite;
  @JsonKey(ignore: true)
  _$$_FavoriteEventCopyWith<_$_FavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  String get searchRequest => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;
  List<EventModel>? get eventsList => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  bool? get favoriteUpdate => throw _privateConstructorUsedError;

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
      int page,
      int perPage,
      int? nextPage,
      List<EventModel>? eventsList,
      dynamic error,
      bool? favoriteUpdate});
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
    Object? page = freezed,
    Object? perPage = freezed,
    Object? nextPage = freezed,
    Object? eventsList = freezed,
    Object? error = freezed,
    Object? favoriteUpdate = freezed,
  }) {
    return _then(_value.copyWith(
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
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      eventsList: eventsList == freezed
          ? _value.eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      favoriteUpdate: favoriteUpdate == freezed
          ? _value.favoriteUpdate
          : favoriteUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      int page,
      int perPage,
      int? nextPage,
      List<EventModel>? eventsList,
      dynamic error,
      bool? favoriteUpdate});
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
    Object? page = freezed,
    Object? perPage = freezed,
    Object? nextPage = freezed,
    Object? eventsList = freezed,
    Object? error = freezed,
    Object? favoriteUpdate = freezed,
  }) {
    return _then(_$EventsListState(
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
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      eventsList: eventsList == freezed
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      favoriteUpdate: favoriteUpdate == freezed
          ? _value.favoriteUpdate
          : favoriteUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$EventsListState implements EventsListState {
  const _$EventsListState(
      {required this.searchRequest,
      required this.page,
      required this.perPage,
      this.nextPage,
      final List<EventModel>? eventsList,
      this.error,
      this.favoriteUpdate})
      : _eventsList = eventsList;

  @override
  final String searchRequest;
  @override
  final int page;
  @override
  final int perPage;
  @override
  final int? nextPage;
  final List<EventModel>? _eventsList;
  @override
  List<EventModel>? get eventsList {
    final value = _eventsList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic error;
  @override
  final bool? favoriteUpdate;

  @override
  String toString() {
    return 'EventsState(searchRequest: $searchRequest, page: $page, perPage: $perPage, nextPage: $nextPage, eventsList: $eventsList, error: $error, favoriteUpdate: $favoriteUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsListState &&
            const DeepCollectionEquality()
                .equals(other.searchRequest, searchRequest) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.favoriteUpdate, favoriteUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchRequest),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(nextPage),
      const DeepCollectionEquality().hash(_eventsList),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(favoriteUpdate));

  @JsonKey(ignore: true)
  @override
  _$$EventsListStateCopyWith<_$EventsListState> get copyWith =>
      __$$EventsListStateCopyWithImpl<_$EventsListState>(this, _$identity);
}

abstract class EventsListState implements EventsState {
  const factory EventsListState(
      {required final String searchRequest,
      required final int page,
      required final int perPage,
      final int? nextPage,
      final List<EventModel>? eventsList,
      final dynamic error,
      final bool? favoriteUpdate}) = _$EventsListState;

  @override
  String get searchRequest;
  @override
  int get page;
  @override
  int get perPage;
  @override
  int? get nextPage;
  @override
  List<EventModel>? get eventsList;
  @override
  dynamic get error;
  @override
  bool? get favoriteUpdate;
  @override
  @JsonKey(ignore: true)
  _$$EventsListStateCopyWith<_$EventsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
