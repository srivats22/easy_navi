import 'package:flutter/material.dart';

import '../DestinationObj.dart';

class NaviBottom extends StatefulWidget {
  int currIndex;
  List<Widget> children;
  List<DestinationObj> destination;
  NaviBottom(
      {super.key,
        required this.currIndex,
        required this.children,
        required this.destination});

  @override
  State<NaviBottom> createState() => _NaviBottomState();
}

class _NaviBottomState extends State<NaviBottom> {
  List<NavigationDestination> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
          child: widget.children.elementAt(widget.currIndex),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (selectedIndex){
            setState(() {
              widget.currIndex = selectedIndex;
            });
          },
          selectedIndex: widget.currIndex,
          destinations: items,
        ),
      ),
    );
  }
}
