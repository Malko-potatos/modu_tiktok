import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modu_tiktok/app/data/service/video_controll.dart';
import 'package:modu_tiktok/app/view/mypage/mypage.dart';
import 'package:modu_tiktok/app/view/post/scrollPost.dart';

class PostScreen extends StatefulWidget {
  PostScreen({Key? key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  ViedeoControl vdController = ViedeoControl();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          vdController.currentScreen == 0 ? Colors.black : Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 2,
            onPageChanged: (value) {
              print(value);
              if (value == 1)
                SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
              else
                SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle.light);
            },
            itemBuilder: (context, index) {
              if (index == 0) {
                return scrollPost();
              } else {
                return ProfileScreen();
              }
            },
          )
        ],
      ),
    );
  }
}
