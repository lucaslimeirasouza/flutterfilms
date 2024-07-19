import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/movies_entity.dart';
import '../cubit/movies_cubit.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  late MoviesCubit _cubit;

  @override
  void initState() {
    _cubit = BlocProvider.of<MoviesCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('data'),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _cubit.getListMovies.length,
                itemBuilder: (context, index) {
                  final itemMovie = _cubit.getListMovies[index];
                  return buildCard(itemMovie, context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card buildCard(MoviesEntity itemMovie, BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: () {
          _cubit.getDetails(itemMovie);
        },
        child: Image.network(
          'https://image.tmdb.org/t/p/w600_and_h900_bestv2${itemMovie.posterPath!}',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
