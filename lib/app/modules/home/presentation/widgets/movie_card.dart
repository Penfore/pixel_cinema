import 'package:flutter/material.dart';
import 'package:pixel_cinema/app/modules/home/domain/entities/movie_entity.dart';
import 'package:pixel_cinema/app/modules/home/presentation/controllers/home_controller.dart';
import 'package:pixel_cinema/app/modules/home/presentation/pages/details_page.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
    required this.controller,
  });

  final MovieEntity movie;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailsPage(movie: movie, controller: controller),
      )),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (movie.posterPath != null)
              Image.network(
                'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                fit: BoxFit.fitHeight,
                width: double.infinity,
                height: 200,
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                movie.overview,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
