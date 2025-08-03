import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const String name = "home-screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigationbar(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  ConsumerState<_HomeView> createState() => __HomeViewState();
}

class __HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final slideshowMovies = ref.watch(moviesSlideshowProvider);
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(title: CustomAppbar()),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: [
                MoviesSlideshow(movies: slideshowMovies),
                MoviesHorizontalListview(
                  movies: nowPlayingMovies,
                  title: "En cines",
                  subtitle: "Lunes 4",
                  loadNextPage: () {
                    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                  },
                ),

                MoviesHorizontalListview(
                  movies: nowPlayingMovies,
                  title: "Populares",
                  loadNextPage: () {
                    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                  },
                ),

                MoviesHorizontalListview(
                  movies: nowPlayingMovies,
                  title: "Mejores calificadas",
                  subtitle: "Desde siempre",
                  loadNextPage: () {
                    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                  },
                ),

                SizedBox(height: 10),
              ],
            );
          }, childCount: 1),
        ),
      ],
    );
  }
}
