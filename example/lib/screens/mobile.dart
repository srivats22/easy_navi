import 'package:flutter/material.dart';
import 'package:easy_navi/DestinationObj.dart';
import 'package:easy_navi/navi_options/navi_bottom.dart';

class Mobile extends StatelessWidget {
  List<Widget> pages;
  List<DestinationObj> destinations;
  int index;
  Mobile(
      {super.key,
      required this.pages,
      required this.destinations,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return NaviBottom(
      currIndex: index,
      destination: destinations,
      children: pages,
    );
  }
}
