import 'package:flutter/material.dart';

import '../destination_obj.dart';

class NaviBottom extends StatefulWidget {
  final int currIndex;
  final List<Widget> children;
  final List<DestinationObj> destination;
  const NaviBottom(
      {super.key,
        required this.currIndex,
        required this.children,
        required this.destination});

  @override
  State<NaviBottom> createState() => _NaviBottomState();
}

class _NaviBottomState extends State<NaviBottom> {
  int? _currIndex;
  List<NavigationDestination> items = [];

  @override
  void initState() {
    super.initState();
    _currIndex = widget.currIndex;
    initializer();
  }

  void initializer(){
    var d = widget.destination;
    for(var i = 0; i < d.length; i++){
      NavigationDestination item = NavigationDestination(
        selectedIcon: d[i].activeIcon,
        icon: d[i].unActiveIcon,
        label: d[i].label,
      );
      setState(() {
        items.add(item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: widget.children.elementAt(_currIndex!),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (selectedIndex){
            setState(() {
              _currIndex = selectedIndex;
            });
          },
          selectedIndex: _currIndex!,
          destinations: items,
        ),
      ),
    );
  }
}
