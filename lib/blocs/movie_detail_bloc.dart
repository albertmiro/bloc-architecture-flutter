import 'dart:async';

import 'package:bloc_architecture/models/trailers_model.dart';
import 'package:bloc_architecture/resources/movie_repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieDetailBloc {
  final _repository = Repository();
  final _movieId = PublishSubject<int>();
  final _trailers = BehaviorSubject<Future<Trailers>>();

  Function(int) get fetchTrailersById => _movieId.sink.add;

  Observable<Future<Trailers>> get movieTrailers => _trailers.stream;

  MovieDetailBloc() {
    _movieId.stream.transform(_itemTransformer()).pipe(_trailers);
  }

  dispose() async {
    _movieId.close();
    await _trailers.drain();
    _trailers.close();
  }

  _itemTransformer() {
    return ScanStreamTransformer(
      (Future<Trailers> trailer, int id, int index) {
        print(index);
        trailer = _repository.fetchTrailers(id);
        return trailer;
      },
    );
  }
}
