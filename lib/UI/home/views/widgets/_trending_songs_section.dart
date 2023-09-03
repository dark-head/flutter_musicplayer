part of '../home_screen.dart';

class _TrendingSongsSection extends StatelessWidget {
  const _TrendingSongsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final trendingSongs = Song.songs.where((song) => song.isTrending).toList();
    return AppGrid(
      title: AppText('Trending Now'),
      gridSettings: const AppGridSettings(
        crossAxisCount: 2,
        childAspectRatio: 3.55,
      ),
      gridItems: trendingSongs.map(
        (song) {
          return AppListTile(
            contentPadding: EdgeInsets.zero,
            leading: AppImage.network(
              song.imageUrl,
              height: 48,
            ),
            title: AppText.bodyMedium(
              song.title,
              fontWeight: FontWeight.bold,
            ),
            onTap: () {},
          );
        },
      ).toList(),
    );
  }
}
