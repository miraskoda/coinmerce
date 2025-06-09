import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum NavigationItem { home, info }

class Destination {
  const Destination(this.label, this.icon);
  final String label;
  final Widget icon;
}

final destinations = [
  Destination(NavigationItem.home.name, const Icon(Icons.home)),
  Destination(NavigationItem.info.name, const Icon(Icons.info)),
];

class NestedNavigation extends StatelessWidget {
  const NestedNavigation({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations:
            destinations.map((destination) {
              final index = destinations.indexOf(destination);
              return NavigationDestination(
                label: destination.label,
                icon: Opacity(opacity: navigationShell.currentIndex == index ? 1 : 0.2),
              );
            }).toList(),
        onDestinationSelected: (i) => navigationShell.goBranch(i, initialLocation: i == navigationShell.currentIndex),
      ),
    );
  }
}
