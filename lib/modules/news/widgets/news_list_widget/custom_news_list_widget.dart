import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:serikonline/data/models/news_card_model.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/theme/app_colors.dart';

class CustomNewsListWidget extends StatelessWidget {
  final List<NewsModel> newsList;

  const CustomNewsListWidget({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true, // ListView'un sadece gerekli boyutta olmasını sağlar
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final newsItem = newsList[index];
          return InkWell(
            onTap: () => _openNewsDetail(newsItem),
            child: Column(
              children: [
                SizedBox(
                  width: Get.width, // Boyutları belirliyoruz
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Resim
                        CachedNetworkImage(
                          imageUrl: newsItem.imageUrl,
                          imageBuilder: (context, imageProvider) => Container(
                            height: Get.width * 0.40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              height: Get.width * 0.40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        const SizedBox(height: 8),
                        // Başlık Placeholder veya Gerçek Başlık
                        newsItem.title.isEmpty
                            ? Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              )
                            : Text(
                                newsItem.title,
                                style: AppTheme.cardTitle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                        const SizedBox(height: 6),
                        // Mahalle ve Bilgiler
                        Row(
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // İcon ve metni ortalamak için
                          children: [
                            if (newsItem.locality.isNotEmpty)
                              Text(
                                newsItem.locality,
                                style: AppTheme.cardLocality,
                              ),
                            if (newsItem.locality.isNotEmpty)
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 5.0),
                                child: Icon(
                                  Icons.circle,
                                  color: AppColors.normalgray,
                                  size: 5,
                                ),
                              ),
                            Text(
                              newsItem.timeAgo,
                              style: AppTheme.cardTimeAgo,
                            ),
                            const Spacer(),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // İcon ve metni ortalamak için
                              children: [
                                Icon(
                                  Icons.comment,
                                  color: AppColors.darkgray,
                                  size: 16,
                                ),
                                SizedBox(
                                    width:
                                        4), // Boşluk için width kullanıyoruz
                                Text(
                                  '32 yorum',
                                  style: AppTheme.cardTimeAgo,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const CustomDividerWidget(),
              ],
            ),
          );
        },
      ),
    );
  }

  void _openNewsDetail(NewsModel newsItem) {
    // Haber detayına yönlendirme
    Get.toNamed('/news_detail', arguments: newsItem);
  }
}
