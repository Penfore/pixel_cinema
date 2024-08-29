import 'package:get/get.dart';
import 'package:pixel_cinema/app/core/presentation/stores/state_store.dart';
import 'package:pixel_cinema/app/modules/home/domain/entities/movie_entity.dart';
import 'package:pixel_cinema/app/modules/home/domain/entities/page_entity.dart';

class HomeStore extends StateStore {
  final moviesJson = [
    {
      "adult": false,
      "backdrop_path": "/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg",
      "genre_ids": [28, 35, 878],
      "id": 533535,
      "original_language": "en",
      "original_title": "Deadpool & Wolverine",
      "overview":
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.",
      "popularity": 4156.718,
      "poster_path": "/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
      "release_date": "2024-07-24",
      "title": "Deadpool & Wolverine",
      "video": false,
      "vote_average": 7.763,
      "vote_count": 2463
    },
    {
      "adult": false,
      "backdrop_path": "/stKGOm8UyhuLPR9sZLjs5AkmncA.jpg",
      "genre_ids": [16, 10751, 12, 35],
      "id": 1022789,
      "original_language": "en",
      "original_title": "Inside Out 2",
      "overview":
          "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
      "popularity": 2039.341,
      "poster_path": "/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg",
      "release_date": "2024-06-11",
      "title": "Inside Out 2",
      "video": false,
      "vote_average": 7.684,
      "vote_count": 3101
    },
  ];

  final _movies = RxList<MovieEntity>([]);
  List<MovieEntity> get movies => this._movies;
  set movies(List<MovieEntity> value) => this._movies.value = value;

  final _searchResults = RxList<MovieEntity>([]);
  List<MovieEntity> get searchResults => this._searchResults;
  set searchResults(List<MovieEntity> value) => this._searchResults.value = value;

  final _pages = RxList<PageEntity>([]);
  List<PageEntity> get pages => this._pages;
  set pages(List<PageEntity> value) => this._pages.value = value;
}
