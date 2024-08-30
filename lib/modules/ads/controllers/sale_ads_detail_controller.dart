import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaleAdsDetailController extends GetxController {
  var currentPage = 0.obs;
  PageController pageController = PageController();
  List imgList = [
    'https://gurbuzgrup.com/uploads/2022/06/buzdolabi.webp',
    'https://i.lezzet.com.tr/images-xxlarge-secondary/no-frost-buzdolabi-nedir-avantajlari-nelerdir-401e1a59-91ed-487d-9dc0-ff2fb1eb1469.jpg',
    'https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/46125/uploads/urunresimleri/buyuk/3lu-kapakli-buzdolabi-duzenleyici-buzd-964b57.jpg',
  ];
}