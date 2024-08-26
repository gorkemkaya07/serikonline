import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_card_title/custom_card_title_widget.dart';

import '../../../core/theme/app_theme.dart';
import '../controllers/profile_contact_us_controller.dart';

class ProfileContactUsView extends GetView<ProfileContactUsController> {
  const ProfileContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      appBar: const CustomAppBarWidget(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCardTitle(title: 'İletişim Bilgileri'),
                      SizedBox(height: 10),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                            backgroundColor: Color(0xfff2f2f2),
                            child: Icon(
                              Icons.phone,
                              color: Colors.black,
                            )),
                        title: Text(
                          'Telefon numarası:',
                          style: AppTheme.cardDescription,
                        ),
                        subtitle: Text('+90 543 960 37 20',
                            style: AppTheme.cardTitle),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xfff2f2f2),
                          child: Icon(Icons.mail, color: Colors.black),
                        ),
                        title: Text('Mail Adresi:',
                            style: AppTheme.cardDescription),
                        subtitle: Text(
                          'destek@serikonline.com',
                          style: AppTheme.cardTitle,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCardTitle(title: 'İletişim Bilgileri'),
                      SizedBox(height: 10),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 163, 32, 32),
                          
                          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/600px-Instagram_logo_2022.svg.png',fit: BoxFit.cover,),
                        ),
                        title: Text('Instagram',
                            style: AppTheme.cardDescription),
                        subtitle: Text(
                          '@serik.online',
                          style: AppTheme.cardTitle,
                        ),
                      ),
                       ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 163, 32, 32),
                          
                          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png',fit: BoxFit.fill,),
                        ),
                        title: Text('Facebook',
                            style: AppTheme.cardDescription),
                        subtitle: Text(
                          '@serik.online',
                          style: AppTheme.cardTitle,
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 163, 32, 32),
                          
                          child: Image.network('https://img.freepik.com/free-vector/new-2023-twitter-logo-x-icon-design_1017-45418.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1724630400&semt=ais_hybrid',fit: BoxFit.fill,),
                        ),
                        title: Text('X',
                            style: AppTheme.cardDescription),
                        subtitle: Text(
                          '@serik.online',
                          style: AppTheme.cardTitle,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
