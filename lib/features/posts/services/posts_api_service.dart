import 'package:flutter_bloc_project_starter/common/utils/logger.dart';
import 'package:flutter_bloc_project_starter/network/api_client.dart';

import '../models/post.dart';

const int defaultPostsLimit = 20;
const String postsPath = '/posts';

abstract class PostsApiService {
  PostsApiService();

  Future<List<Post>> fetchPosts({int startIndex = 0});
}

class PostsApiServiceImpl implements PostsApiService {
  final ApiClient _apiClient;

  PostsApiServiceImpl(this._apiClient);

  @override
  Future<List<Post>> fetchPosts({int startIndex = 0}) async {
    try {
      final postsListResponse = await _apiClient.get(
        postsPath,
        params: {'_start': '$startIndex'},
      );
      return postsListResponse.map((json) => Post.fromJson(json)).toList();
    } catch (e) {
      log.severe('_fetchPosts error: $e');
      rethrow;
    }
  }
}
