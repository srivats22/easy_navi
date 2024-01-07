import 'package:example/device_platform.dart';
import 'package:example/screens/desktop.dart';
import 'package:example/screens/mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:easy_navi/DestinationObj.dart';

class Navis extends StatefulWidget {
  const Navis({super.key});

  @override
  State<Navis> createState() => _NavisState();
}

class _NavisState extends State<Navis> {
  var pages = const [
    Text("Home"),
    Text("Dashboard"),
    Text("Account"),
  ];
  var destinations = [
    DestinationObj(
      activeIcon: const Icon(Icons.home),
      unActiveIcon: const Icon(Icons.home_outlined),
      label: "Home",
    ),
    DestinationObj(
      activeIcon: const Icon(Icons.dashboard),
      unActiveIcon: const Icon(Icons.dashboard_outlined),
      label: "Dashboard",
    ),
    DestinationObj(
      activeIcon: const Icon(Icons.account_circle),
      unActiveIcon: const Icon(Icons.account_circle_outlined),
      label: "Account",
    ),
  ];
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    // if mobile or mobile browser -> render bottom navigation
    if (DevicePlatforms.isMobile || DevicePlatforms.isMobileBrowser) {
      return Mobile(
        pages: pages,
        destinations: destinations,
        index: currIndex,
      );
    }
    return Desktop(
      pages: pages,
      destinations: destinations,
      index: currIndex,
    );
  }
}
