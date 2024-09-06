import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserRegisterController extends GetxController {
  var isSelected1 = true.obs; // Birinci checkbox durumu
  var isSelected2 = false.obs; // İkinci checkbox durumu
  void selectCheckbox(int index) {
    if (index == 1) {
      isSelected1.value = true;
      isSelected2.value = false;
    } else if (index == 2) {
      isSelected1.value = false;
      isSelected2.value = true;
    }
  }
  var selectedIndex = 0.obs; // Seçili butonun indeksini tutan Rx değişken

  void updateIndex(int index) {
    selectedIndex.value = index; // Seçili indeks güncelleniyor
  }
  var imageFile = Rx<File?>(null); // Seçilen resmi tutacak Rx değişken
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }
}
