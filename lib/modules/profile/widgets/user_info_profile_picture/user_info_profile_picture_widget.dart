import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/custom_image/custom_image_widget.dart';

class UserInfoProfilePictureWidget extends StatelessWidget {
  const UserInfoProfilePictureWidget({
    super.key,
  });
 
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 5),
          child: Center(
              child: CustomImageWidget(
                  imgUrl:
                      'https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
                  sizeWidth: 100,
                  sizeHeight: 100,
                  sizeBorderRadius: 13)),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text("Görkem Kaya", style: AppTheme.cardTitle),
        ),
      ],
    );
  }
}
