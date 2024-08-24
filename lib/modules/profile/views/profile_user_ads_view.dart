import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/profile_user_ads_controller.dart';

class ProfileUserAdsView extends GetView<ProfileUserAdsController> {
  const ProfileUserAdsView({super.key});
  final imgUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWAomfI3LscTTQ8W2_mfuKfGPfobrqu1Md0w&s';
  static const text = '12';
  static const text2 = '347';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Text('data'),
                )));
  }
}
