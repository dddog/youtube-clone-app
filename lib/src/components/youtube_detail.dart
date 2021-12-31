import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(
            child: _description(),
          ),
        ],
      ),
    );
  }

  Widget get line => Divider(
        color: Colors.black.withOpacity(0.1),
        height: 2,
        indent: 20,
        endIndent: 20,
      );

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _titleZone(),
          line,
          _descriptionZone(),
          _buttonZone(),
          SizedBox(
            height: 15,
          ),
          line,
          _ownerZone(),
        ],
      ),
    );
  }

  Widget _titleZone() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'DDDOG Flutter Youtube Clone App 만들기 - 1',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                '조회수 1000회',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Text(' · '),
              Text(
                '2021-12-31',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _descriptionZone() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        '''안녕하세요 개발하는 남자 개남입니다. ㅁㄴㄹ

이번영상은 지난 영상에 이어서 상세 화면을 구성하는 영상입니다.
다음영상부터 유튜브 api 를 활용하는 것요 개발하는 남자 개남입니다. 

이번영상은 지난 영상에 이어서 상세 화면을 구성하는 영상입니다.
다음영상부터 유튜브 api 를 활요 개발하는 남자 개남입니다. 

이번영상은 지난 영상에 이어서 상세 화면을 구성하는 영상입니다.
다음영상부터 유튜브 api 를 활이 들어갈 ... ''',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne('like', '1000'),
        _buttonOne('dislike', '1'),
        _buttonOne('share', '공유'),
        _buttonOne('save', '저장'),
      ],
    );
  }

  Widget _buttonOne(String iconName, String text) {
    return Column(
      children: [
        SvgPicture.asset('assets/svg/icons/$iconName.svg'),
        Text(text)
      ],
    );
  }

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://avatars.githubusercontent.com/u/3272474?s=96&v=4")
                .image,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'DDDOG',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "구독자 10000",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.6)),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Text(
              '구독',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
