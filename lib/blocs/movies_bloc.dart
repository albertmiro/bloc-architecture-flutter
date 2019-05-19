import 'package:bloc_architecture/resources/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../models/movies_model.dart';

class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<Movies>();

  Observable<Movies> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    Movies itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();
