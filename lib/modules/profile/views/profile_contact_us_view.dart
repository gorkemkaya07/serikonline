import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_card_title/custom_card_title_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/app_theme.dart';
import '../controllers/profile_contact_us_controller.dart';

class ProfileContactUsView extends GetView<ProfileContactUsController> {
  ProfileContactUsView({super.key});

  void _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      // Eğer external application açılmazsa, varsayılan tarayıcıda açmayı deneyelim
      await launchUrl(url, mode: LaunchMode.platformDefault);
    }
  }

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
                child: Padding(
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
                        onTap: () => _launchUrl('tel:+905439603720'),
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
                        onTap: () =>
                            _launchUrl('mailto:destek@serikonline.com'),
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
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/600px-Instagram_logo_2022.svg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        title:
                            Text('Instagram', style: AppTheme.cardDescription),
                        subtitle: Text(
                          '@serik.online',
                          style: AppTheme.cardTitle,
                        ),
                        onTap: () => _launchUrl(
                            'https://www.instagram.com/serik.online'),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 163, 32, 32),
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_%28square%29.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        title:
                            Text('Facebook', style: AppTheme.cardDescription),
                        subtitle: Text(
                          '@serik.online',
                          style: AppTheme.cardTitle,
                        ),
                        onTap: () =>
                            _launchUrl('https://www.facebook.com/serik.online'),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 163, 32, 32),
                          child: Image.network(
                            'https://img.freepik.com/free-vector/new-2023-twitter-logo-x-icon-design_1017-45418.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1724630400&semt=ais_hybrid',
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text('X', style: AppTheme.cardDescription),
                        subtitle: Text(
                          '@serik.online',
                          style: AppTheme.cardTitle,
                        ),
                        onTap: () =>
                            _launchUrl('https://www.x.com/serik.online'),
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
