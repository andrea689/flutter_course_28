import 'package:flutter/material.dart';

class PlaylistsListItem extends StatelessWidget {
  final String imageUrl;
  final String label;

  const PlaylistsListItem({
    super.key,
    required this.imageUrl,
    required this.label,
  });

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
            child: Image.network(imageUrl, height: 150),
          ),
          Text(label, maxLines: 2, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
