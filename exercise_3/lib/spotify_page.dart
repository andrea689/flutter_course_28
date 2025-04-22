import 'package:exercise_3/model/playlist.dart';
import 'package:exercise_3/widgets/playlists_list.dart';
import 'package:flutter/material.dart';

class SpotifyPage extends StatelessWidget {
  SpotifyPage({super.key});

  final yourTopMixesPlaylists = [
    Playlist(
      imageUrl:
          'https://i.scdn.co/image/ab67706f000000023909428545db5e34677f01f0',
      label: 'Tiwa Savage, Peruzzi and Young John',
    ),
    Playlist(
      imageUrl:
          'https://i.scdn.co/image/ab67706f000000028f6b6a1c1b242422148d09e8',
      label: 'Tiwa Savage, Peruzzi and Young John',
    ),
    Playlist(
      imageUrl:
          'https://i.scdn.co/image/ab67616d0000b2737a631bb63b905980cc94f40e',
      label: 'Tiwa Savage, Peruzzi and Young John',
    ),
  ];

  final bestOfArtistPlaylists = [
    Playlist(
      imageUrl:
          'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO1ahqM0-default.jpg',
      label: 'This is Usher. The essential traks, all in one playlist',
    ),
    Playlist(
      imageUrl:
          'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO1aBeik-default.jpg',
      label: 'This is Post Malone. The essential traks, all in one playlist',
    ),
    Playlist(
      imageUrl:
          'https://i.scdn.co/image/ab67706f00000002cd8e2b103295bbd2749d8ea7',
      label: 'This is Ariana Grande. The essential traks, all in one playlist',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Match My Mood'),
              icon: Icon(Icons.sentiment_satisfied_outlined),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Chip(
                    label: Text('J', style: TextStyle(color: Colors.black)),
                    shape: CircleBorder(),
                    backgroundColor: Colors.pink.shade400,
                  ),
                  Chip(
                    label: Text('All'),
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blueGrey.shade900,
                  ),
                  SizedBox(width: 4),
                  Chip(
                    label: Text('Music'),
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blueGrey.shade900,
                  ),
                  SizedBox(width: 4),
                  Chip(
                    label: Text('Podcast'),
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blueGrey.shade900,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 8),
          PlaylistsList(
            title: 'Your Top Mixes',
            playlists: yourTopMixesPlaylists,
          ),
          SizedBox(height: 32),
          PlaylistsList(
            title: 'Best of Artist',
            playlists: bestOfArtistPlaylists,
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(
            icon: Icon(Icons.library_books_outlined),
            label: 'Your Library',
          ),
          NavigationDestination(
            icon: Icon(Icons.perm_identity_outlined),
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}
