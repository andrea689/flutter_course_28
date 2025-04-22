import 'package:exercise_3/model/playlist.dart';
import 'package:exercise_3/widgets/playlists_list_item.dart';
import 'package:flutter/material.dart';

class PlaylistsList extends StatelessWidget {
  final String title;
  final List<Playlist> playlists;

  const PlaylistsList({
    super.key,
    required this.title,
    required this.playlists,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                playlists
                    .map(
                      (playlist) => PlaylistsListItem(
                        imageUrl: playlist.imageUrl,
                        label: playlist.label,
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}
