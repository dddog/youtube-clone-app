import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/components/youtube_bottom_sheet.dart';

enum RouteName { home, explore, add, subs, library }

class AppController extends GetxService {
  static AppController get to => Get.find();

  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.add) {
      _showBottomSheet();
    } else {
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(YoutubeBottomSheet());
  }
}
