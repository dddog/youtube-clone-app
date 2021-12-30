import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';

class YoutubeBottomSheet extends StatelessWidget {
  YoutubeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(height: 10),
            _itemButton(
              icon: "upload.svg",
              iconSize: 17,
              label: "동영상 업로드",
              onTap: () {
                Logger().d("동영상 업로드");
              },
            ),
            SizedBox(height: 10),
            _itemButton(
              icon: "broadcast.svg",
              iconSize: 25,
              label: "실시간 스트리밍 시작",
              onTap: () {
                Logger().d("실시간 스트리밍 시작");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '만들기',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _itemButton(
      {String? icon,
      double iconSize = 17,
      String label = "",
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Center(
              child: Container(
                width: iconSize,
                height: iconSize,
                child: SvgPicture.asset('assets/svg/icons/$icon'),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(label),
        ],
      ),
    );
  }
}
