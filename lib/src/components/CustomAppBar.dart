import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _actions(),
        ],
      ),
    );
  }

  Widget _logo() {
    return Container(
      child: Image.asset('assets/images/logo.png'),
      width: 130,
    );
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 23,
            height: 23,
            child: SvgPicture.asset('assets/svg/icons/bell.svg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 30,
            height: 30,
            child: SvgPicture.asset('assets/svg/icons/search.svg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: Image.network(
                  "https://avatars.githubusercontent.com/u/3272474?s=96&v=4")
              .image,
        ),
      ],
    );
  }
}
