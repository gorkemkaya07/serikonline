import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({
    super.key,
    required this.imgUrl,
    required this.sizeWidth,
    required this.sizeHeight,
    required this.sizeBorderRadius,
  });
  final String imgUrl;
  final double sizeWidth;
  final double sizeHeight;
  final double sizeBorderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidth,
      height: sizeHeight,
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: sizeWidth,
          height: sizeHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(sizeBorderRadius),
            boxShadow: [
              BoxShadow(
                  blurRadius: 30,
                  offset: const Offset(0, 4),
                  color: Colors.black.withOpacity(.1),
                  spreadRadius: 5)
            ],
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => Container(
          width: sizeWidth,
          height: sizeHeight,
          decoration: BoxDecoration(
            color: AppColors.lightgray,
            borderRadius: BorderRadius.circular(sizeBorderRadius),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
