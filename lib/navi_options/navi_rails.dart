import 'package:flutter/material.dart';
import '../DestinationObj.dart';

class NaviRails extends StatefulWidget {
  int currIndex;
  List<Widget> children;
  List<DestinationObj> destinations;
  NaviRails(
      {super.key,
        required this.currIndex,
        required this.children,
        required this.destinations});

  @override
  State<NaviRails> createState() => _NaviRailsState();
}

class _NaviRailsState extends State<NaviRails> {
  List<NavigationRailDestination>naviDest = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializer();
  }

  void initializer(){
    var d = widget.destinations;
    for(var i = 0; i < d.length; i++){
      NavigationRailDestination dest = NavigationRailDestination(
          selectedIcon: d[i].activeIcon,
          icon: d[i].unActiveIcon,
          label: Text(d[i].label)
      );
      setState(() {
        naviDest.add(dest);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: widget.currIndex,
              onDestinationSelected: (selectedDest){
                setState(() {
                  widget.currIndex = selectedDest;
                });
              },
              labelType: NavigationRailLabelType.all,
              destinations: naviDest,
            ),
            const VerticalDivider(),
            Expanded(
              child: Center(
                child: widget.children.elementAt(widget.currIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
