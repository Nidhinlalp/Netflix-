import 'package:dio/dio.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/search/model/search_rep/search_rep.dart';
import 'package:netflix/domain/core/main_failiure/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/search/model/search_rep/search_servivce.dart';

class SearchIpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchRep>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.searchlink,
        queryParameters: {
          'query': movieQuery,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchRep.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}