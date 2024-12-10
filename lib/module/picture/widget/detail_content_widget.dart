import '../../../../core.dart';

class DetailContentWidget extends StatelessWidget {
  final PictureModel picture;

  const DetailContentWidget({required this.picture, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: picture.downloadUrl!,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Taken by: ${picture.author!}',
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}