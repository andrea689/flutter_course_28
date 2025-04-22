import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_4/counter_cubit.dart';
import 'package:lesson_4/models/playlist.dart';

class PlaylistsListItem extends StatelessWidget {
  final Playlist playlist;

  const PlaylistsListItem({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 150,
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Image.network(playlist.imageUrl, height: 150),
          ),
          Text(playlist.label, maxLines: 2, overflow: TextOverflow.ellipsis),
          IconButton(
            onPressed:
                () => context.read<CounterCubit>().deletePlaylist(playlist.id),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
