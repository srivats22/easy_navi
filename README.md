<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Navi is a Flutter Package that makes adding navigation to your app simple.
It contains code for displaying a NavigationRail and NavigationBar

## Features

easy_navi allows you to define your destinations once and then use that to render either a NavigationRail or a NavigationBar

## Getting started

Import the following at the top of you file
```dart
import 'package:easy_navi/navi.dart';
import 'package:easy_navi/destination_obj.dart';
import 'package:easy_navi/navi_options/navi_rails.dart';
import 'package:easy_navi/navi_options/navi_bottom.dart';
```

Define your pages and destination list and current starting index as follows:
```dart
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
```

## Usage

To render a bottom navigation bar use the following code:

```dart
return BottomNavi(
  currIndex: index,
  destination: destinations,
  children: pages,
);
```

To render a navigation rail use the following code:

```dart
return NaviRails(
  currIndex: index,
  destinations: destinations,
  children: pages,
);
```

## Additional information

For a full working app, take a look at the examples folder of this repository
