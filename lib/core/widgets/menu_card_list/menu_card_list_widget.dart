import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import 'package:serikonline/data/models/menu_card_model.dart';
import '../../theme/app_theme.dart';

class MenuCardListWidget extends StatelessWidget {
  const MenuCardListWidget(
      {super.key, required this.menuList, required this.route});
  final List<MenuCardModel> menuList;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            )..layout())
                .size
                .height;

            final descriptionHeight = (TextPainter(
              text: TextSpan(
                  text: newsItem.description, style: AppTheme.cardDescription),
              maxLines: 4,
              textDirection: TextDirection.ltr,
            )..layout())
                .size
                .height;

            final imageHeight = (titleHeight + descriptionHeight) *
                2; // Boyutu iki katına çıkarıyoruz.

            return InkWell(
              onTap: () => _openNewsDetail(newsItem, route),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                              boxShadow: [BoxShadow(blurRadius: 30,offset: const Offset(0, 4),color: Colors.black.withOpacity(.1),spreadRadius: 5)],
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
                       CustomDividerWidget()
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  void _openNewsDetail(MenuCardModel item, String route) {
    Get.toNamed(route, arguments: item);
  }
}
