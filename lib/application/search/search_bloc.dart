import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/search/model/search_rep/search_rep.dart';
import 'package:netflix/domain/search/model/search_rep/search_servivce.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo downloadsService;
  final SearchService searchService;
  SearchBloc(this.downloadsService, this.searchService)
      : super(SearchState.Initial()) {
//idle state  //////////////////////////////////
    on<Initialize>((event, emit) {
      //get trending
      downloadsService.getDownloadsImage(); //show to ui
    });

    //search result state//////////////////////////////

    on<SearchMovie>((event, emit) {
      //call search movie api
      searchService.searchMovies(movieQuery: event.movieQuery);
      //show to ui
    });
  }
}
