import 'package:flutter/material.dart';
import '../destination_obj.dart';

class NaviRails extends StatefulWidget {
  final int currIndex;
  final List<Widget> children;
  final List<DestinationObj> destinations;
  const NaviRails(
      {super.key,
        required this.currIndex,
        required this.children,
        required this.destinations});

  @override
  State<NaviRails> createState() => _NaviRailsState();
}

class _NaviRailsState extends State<NaviRails> {
  int? _currIndex;
  List<NavigationRailDestination>naviDest = [];

  @override
  void initState() {
    super.initState();
    _currIndex = widget.currIndex;
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
              selectedIndex: _currIndex,
              onDestinationSelected: (selectedDest){
                setState(() {
                  _currIndex = selectedDest;
                });
              },
              labelType: NavigationRailLabelType.all,
              destinations: naviDest,
            ),
            const VerticalDivider(),
            Expanded(
              child: Center(
                child: widget.children.elementAt(_currIndex!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
