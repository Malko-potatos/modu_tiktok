import 'package:flutter/material.dart';
import 'package:modu_tiktok/app/data/service/video_controll.dart';
import 'package:modu_tiktok/app/view/mypage/mypage.dart';
import 'package:modu_tiktok/app/view/post/videoPost.dart';

Widget currentScreen() {
  ViedeoControl viedeoControl = ViedeoControl();
  switch (viedeoControl.currentScreen) {
    case 0:
      return feedVideos();
    case 1:
      return ProfileScreen();
    /*case 2:
      return UploadScreen();*/
    default:
      return feedVideos();
  }
}
