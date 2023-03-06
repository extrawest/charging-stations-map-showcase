// Mocks generated by Mockito 5.3.2 from annotations
// in flutter_bloc_project_starter/test/features/posts/bloc/posts_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flutter_bloc_project_starter/features/posts/models/post.dart'
    as _i3;
import 'package:flutter_bloc_project_starter/features/posts/repositories/posts_repository.dart'
    as _i4;
import 'package:flutter_bloc_project_starter/features/posts/services/services.dart'
    as _i2;
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

class _FakePostsApiService_0 extends _i1.SmartFake
    implements _i2.PostsApiService {
  _FakePostsApiService_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$PostCopyWith_1<$Res> extends _i1.SmartFake
    implements _i3.$PostCopyWith<$Res> {
  _Fake$PostCopyWith_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [PostsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPostsRepository extends _i1.Mock implements _i4.PostsRepository {
  MockPostsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.PostsApiService get postsApiService => (super.noSuchMethod(
        Invocation.getter(#postsApiService),
        returnValue: _FakePostsApiService_0(
          this,
          Invocation.getter(#postsApiService),
        ),
      ) as _i2.PostsApiService);
  @override
  _i5.Future<List<_i3.Post>> fetchPosts({int? startIndex}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchPosts,
          [],
          {#startIndex: startIndex},
        ),
        returnValue: _i5.Future<List<_i3.Post>>.value(<_i3.Post>[]),
      ) as _i5.Future<List<_i3.Post>>);
}

/// A class which mocks [Post].
///
/// See the documentation for Mockito's code generation for more information.
class MockPost extends _i1.Mock implements _i3.Post {
  MockPost() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: 0,
      ) as int);
  @override
  String get title => (super.noSuchMethod(
        Invocation.getter(#title),
        returnValue: '',
      ) as String);
  @override
  String get body => (super.noSuchMethod(
        Invocation.getter(#body),
        returnValue: '',
      ) as String);
  @override
  _i3.$PostCopyWith<_i3.Post> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$PostCopyWith_1<_i3.Post>(
          this,
          Invocation.getter(#copyWith),
        ),
      ) as _i3.$PostCopyWith<_i3.Post>);
  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
}
