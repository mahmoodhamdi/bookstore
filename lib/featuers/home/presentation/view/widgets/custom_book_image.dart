import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                    ),
                imageUrl: imageUrl)),
      ),
    );
  }
}
