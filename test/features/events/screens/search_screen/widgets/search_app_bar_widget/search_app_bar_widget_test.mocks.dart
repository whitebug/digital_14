// Mocks generated by Mockito 5.3.1 from annotations
// in digital_14/test/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget_model.dart'
    as _i4;
import 'package:digital_14/features/events/service/repository/events_repository.dart'
    as _i7;
import 'package:digital_14/features/events/service/shared_pref_helper.dart'
    as _i5;
import 'package:digital_14/features/server/domain/domain.dart' as _i3;
import 'package:flutter/material.dart' as _i2;
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

class _FakeTextEditingController_0 extends _i1.SmartFake
    implements _i2.TextEditingController {
  _FakeTextEditingController_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeValueNotifier_1<T> extends _i1.SmartFake
    implements _i2.ValueNotifier<T> {
  _FakeValueNotifier_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEventResponseModel_2 extends _i1.SmartFake
    implements _i3.EventResponseModel {
  _FakeEventResponseModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ISearchAppBarWidgetModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockISearchAppBarWidgetModel extends _i1.Mock
    implements _i4.ISearchAppBarWidgetModel {
  @override
  _i2.TextEditingController get searchFieldController => (super.noSuchMethod(
        Invocation.getter(#searchFieldController),
        returnValue: _FakeTextEditingController_0(
          this,
          Invocation.getter(#searchFieldController),
        ),
        returnValueForMissingStub: _FakeTextEditingController_0(
          this,
          Invocation.getter(#searchFieldController),
        ),
      ) as _i2.TextEditingController);
  @override
  _i2.ValueNotifier<bool> get showCancelButton => (super.noSuchMethod(
        Invocation.getter(#showCancelButton),
        returnValue: _FakeValueNotifier_1<bool>(
          this,
          Invocation.getter(#showCancelButton),
        ),
        returnValueForMissingStub: _FakeValueNotifier_1<bool>(
          this,
          Invocation.getter(#showCancelButton),
        ),
      ) as _i2.ValueNotifier<bool>);
  @override
  void onCancelPressed() => super.noSuchMethod(
        Invocation.method(
          #onCancelPressed,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SharedPrefHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPrefHelper extends _i1.Mock implements _i5.SharedPrefHelper {
  @override
  _i6.Future<List<String>?> get(String? key) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [key],
        ),
        returnValue: _i6.Future<List<String>?>.value(),
        returnValueForMissingStub: _i6.Future<List<String>?>.value(),
      ) as _i6.Future<List<String>?>);
  @override
  _i6.Future<void> set(
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
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> clear(String? key) => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [key],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [IEventsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIEventsRepository extends _i1.Mock implements _i7.IEventsRepository {
  @override
  _i6.Future<_i3.EventResponseModel> getEvents({
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
            _i6.Future<_i3.EventResponseModel>.value(_FakeEventResponseModel_2(
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
            _i6.Future<_i3.EventResponseModel>.value(_FakeEventResponseModel_2(
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
      ) as _i6.Future<_i3.EventResponseModel>);
}
