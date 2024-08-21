import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';
import '../../../../data/models/news_card_model.dart';
import '../../../../core/widgets/section_title/section_title_widget.dart';

class CustomLatestNewsWidget extends StatelessWidget {
  final List<NewsModel> newsList;

  const CustomLatestNewsWidget({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitleWidget(title: "En son haberler", showAll: true, route: 'news'),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            height: Get.height * .28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                final newsItem = newsList[index];
                return GestureDetector(
                  onTap: () => _openNewsDetail(newsItem),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Resim
                        CachedNetworkImage(
                          imageUrl: newsItem.imageUrl,
                          imageBuilder: (context, imageProvider) => Container(
                            width: Get.width * 0.75,
                            height: Get.width * 0.40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        const SizedBox(height: 8),
                        // Başlık
                        SizedBox(
                          width: Get.width * 0.75,
                          child: Text(
                            newsItem.title, // Gerçek başlık
                            style: AppTheme.cardTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 6),
                        // Mahalle ve Zaman
                        Row(
                          children: [
                            Text(
                              newsItem.locality, // Gerçek mahalle
                              style: AppTheme.cardLocality,
                            ),
                            const SizedBox(width: 6),
                            const Icon(
                              Icons.circle,
                              color: AppColors.normalgray,
                              size: 5,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              newsItem.timeAgo, // Gerçek zaman
                              style: AppTheme.cardTimeAgo,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const CustomDividerWidget(),
      ],
    );
  }

  void _openNewsDetail(NewsModel newsItem) {
    // Haber detayına yönlendirme
    Get.toNamed('/news_detail', arguments: newsItem);
  }
}
