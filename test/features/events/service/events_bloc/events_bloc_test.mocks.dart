// Mocks generated by Mockito 5.3.1 from annotations
// in digital_14/test/features/events/service/events_bloc/events_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:digital_14/features/events/service/repository/events_repository.dart'
    as _i5;
import 'package:digital_14/features/events/service/shared_pref_helper.dart'
    as _i3;
import 'package:digital_14/features/server/domain/domain.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEventResponseModel_0 extends _i1.SmartFake
    implements _i2.EventResponseModel {
  _FakeEventResponseModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SharedPrefHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPrefHelper extends _i1.Mock implements _i3.SharedPrefHelper {
  @override
  _i4.Future<List<String>?> get(String? key) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [key],
        ),
        returnValue: _i4.Future<List<String>?>.value(),
        returnValueForMissingStub: _i4.Future<List<String>?>.value(),
      ) as _i4.Future<List<String>?>);
  @override
  _i4.Future<void> set(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #set,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> clear(String? key) => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [key],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [IEventsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIEventsRepository extends _i1.Mock implements _i5.IEventsRepository {
  @override
  _i4.Future<_i2.EventResponseModel> getEvents({
    required String? searchRequest,
    required int? perPage,
    required int? page,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getEvents,
          [],
          {
            #searchRequest: searchRequest,
            #perPage: perPage,
            #page: page,
          },
        ),
        returnValue:
            _i4.Future<_i2.EventResponseModel>.value(_FakeEventResponseModel_0(
          this,
          Invocation.method(
            #getEvents,
            [],
            {
              #searchRequest: searchRequest,
              #perPage: perPage,
              #page: page,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.EventResponseModel>.value(_FakeEventResponseModel_0(
          this,
          Invocation.method(
            #getEvents,
            [],
            {
              #searchRequest: searchRequest,
              #perPage: perPage,
              #page: page,
            },
          ),
        )),
      ) as _i4.Future<_i2.EventResponseModel>);
}
