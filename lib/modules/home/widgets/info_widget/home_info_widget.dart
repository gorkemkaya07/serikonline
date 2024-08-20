import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/data/models/menu_card_model.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';
import '../../../../core/widgets/section_title/section_title_widget.dart';

class HomeInfoWidget extends StatelessWidget {
  const HomeInfoWidget({super.key, required this.menuList});
  final List<MenuCardModel> menuList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitleWidget(
            title: "Bilgiler", showAll: true, route: 'info'),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menuList.length,
          itemBuilder: (context, index) {
            final newsItem = menuList[index];

            // Başlık ve açıklama yüksekliği ölçümü
            final titleHeight = (TextPainter(
              text: TextSpan(text: newsItem.title, style: AppTheme.cardTitle),
              maxLines: 2,
              textDirection: TextDirection.ltr,
            )..layout()).size.height;

            final descriptionHeight = (TextPainter(
              text: TextSpan(text: newsItem.description, style: AppTheme.cardDescription),
              maxLines: 3,
              textDirection: TextDirection.ltr,
            )..layout()).size.height;

            final imageHeight = (titleHeight + descriptionHeight) * 2; // Boyutu iki katına çıkarıyoruz.

            return GestureDetector(
              onTap: () => _openNewsDetail(newsItem),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Başlık
                          Text(
                            newsItem.title,
                            style: AppTheme.cardTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          // Açıklama
                          Text(
                            newsItem.description,
                            style: AppTheme.cardDescription,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Resim
                    CachedNetworkImage(
                      imageUrl: newsItem.imageUrl,
                      imageBuilder: (context, imageProvider) => Container(
                        width: imageHeight,
                        height: imageHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => Container(
                        width: imageHeight,
                        height: imageHeight,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const CustomDividerWidget(),
      ],
    );
  }

  void _openNewsDetail(MenuCardModel item) {
    Get.toNamed('/info_detail', arguments: item);
  }
}
