import 'package:netflix/core/costurl/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const searchlink = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const upcomingmovie = '$kBaseUrl/movie/upcoming?api_key=$apiKey';
}
