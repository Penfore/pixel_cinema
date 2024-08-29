import 'package:pixel_cinema/app/core/presentation/controllers/page_lifecycle_controller.dart';
import 'package:pixel_cinema/app/modules/home/domain/entities/movie_entity.dart';
import 'package:pixel_cinema/app/modules/home/presentation/stores/home_store.dart';

class HomeController extends PageLifeCycleController {
  HomeController({
    required this.store,
  });

  @override
  final HomeStore store;

  @override
  Future<void> onReady() async {
    await fetchMoviesFromDiscover();
  }

  Future<void> fetchMoviesFromDiscover() async {
    // TODO(fulvioleo): change for a real implementation of a fetch
    store.movies = store.moviesJson.map((movie) => MovieEntity.fromJson(movie)).toList();
  }

  Future<void> searchMovies(String query) async {
    // TODO(fulvioleo): change for a real implementation of a search
    store.searchResults = store.movies.where((movie) {
      return movie.title.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
