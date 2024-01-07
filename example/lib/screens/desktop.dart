import 'package:flutter/material.dart';
import 'package:easy_navi/DestinationObj.dart';
import 'package:easy_navi/navi_options/navi_rails.dart';

class Desktop extends StatelessWidget {
  List<Widget> pages;
  List<DestinationObj> destinations;
  int index;
  Desktop(
      {super.key,
      required this.pages,
      required this.destinations,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return NaviRails(
      currIndex: index,
      destinations: destinations,
      children: pages,
    );
  }
}
