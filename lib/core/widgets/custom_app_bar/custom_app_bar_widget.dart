import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Image.asset('assets/images/app_logo.png', width: 35, height: 35),
          const Text("SERIK ONLINE", style: AppTheme.appBarTitle),
        ],
      ),
      elevation: 0, // elevation'ı sıfırlıyoruz
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Arka plan rengi beyaz
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.1), // Gölgelendirme rengi
              blurRadius: 2, // Gölgenin ne kadar yayılacağını ayarlayan değer
              spreadRadius: 0.5, // Gölgenin ne kadar genişleyeceğini ayarlayan değer
              offset: const Offset(0, 0), // Gölgenin yerleşimi
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}
