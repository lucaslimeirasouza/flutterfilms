import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/movies_cubit.dart';
import '../cubit/movies_states.dart';
import 'default_screen.dart';
import 'detail_screen.dart';
import 'homepage_screen.dart';

class OrchestratorScreen extends StatefulWidget {
  const OrchestratorScreen({super.key});

  @override
  State<OrchestratorScreen> createState() => _OrchestratorScreenState();
}

class _OrchestratorScreenState extends State<OrchestratorScreen> {
  late final MoviesCubit cubit;

  GlobalKey homepageKey = GlobalKey();
  GlobalKey detailMovieKey = GlobalKey();

  @override
  void initState() {
    cubit = MoviesCubit();
    cubit.getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoviesCubit>.value(
      value: cubit,
      child: BlocConsumer<MoviesCubit, MoviesState>(
        listener: (context, state) async {
          if (state is LoadingMoviesState) {
            const CircularProgressIndicator();
          }
          if (state.hasError == true) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ));
          }
        },
        builder: (context, state) {
          return buildPage();
        },
      ),
    );
  }

  Widget buildPage() {
    if (cubit.state is HomepageMoviesState) {
      return HomepageScreen(key: homepageKey);
    }
    if (cubit.state is DetailMoviesState) {
      return DetailScreen(key: detailMovieKey);
    }

    return const DefaultScreen();
  }
}
