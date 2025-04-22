import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_4/counter_cubit.dart';
import 'package:lesson_4/widgets/playlists_list_item.dart';

class PlaylistsList extends StatelessWidget {
  const PlaylistsList({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build PlaylistsList');
    final isLoading = context.select(
      (CounterCubit cubit) => cubit.state.isLoading,
    );
    final playlists = context.select(
      (CounterCubit cubit) => cubit.state.playlists,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'My playlists',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        Builder(
          builder: (context) {
            if (isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (playlists.isEmpty) {
              return const Center(child: Text('No playlists'));
            }

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    playlists
                        .map(
                          (playlist) => PlaylistsListItem(playlist: playlist),
                        )
                        .toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
