import 'package:apgar_app/data/onboarding.dart';
import 'package:apgar_app/pages/register_page.dart';
import 'package:apgar_app/pages/skippage.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PageViewData extends StatefulWidget {
  const PageViewData({super.key});

  @override
  State<PageViewData> createState() => _PageViewDataState();
}

class _PageViewDataState extends State<PageViewData> {
  List PagesContent = [SkipPage(), RegisterPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        SkipPage(),
        RegisterPage(),
      ],
    ));
  }
}
