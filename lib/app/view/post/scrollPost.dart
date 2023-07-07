import 'package:flutter/material.dart';
import 'package:modu_tiktok/app/view/components/bottom_bar.dart';

import 'currenScreen.dart';

Widget scrollPost() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Expanded(child: currentScreen()),
      BottomBar(),
    ],
  );
}
