import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/components/CustomAppBar.dart';
import 'package:youtube_clone_app/src/components/video_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Container(
              child: CustomAppBar(),
            ),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("/detail/1234");
                  },
                  child: VideoWidget(),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
