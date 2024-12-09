import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/provider/app/presentation/view/page/layout_provider.dart';

class Layout extends ConsumerWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(layoutSelectedIndexProvider);
    final layoutWidget = ref.watch(layoutWidgetProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.group_add),
            icon: Icon(Icons.group_add_outlined),
            label: 'Main',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.medication_liquid_outlined),
            icon: Icon(Icons.medication_liquid_sharp),
            label: 'Nutrition',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.face),
            icon: Icon(Icons.face_outlined),
            label: 'Beauty',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.sports_basketball),
            icon: Icon(Icons.sports_basketball_outlined),
            label: 'Fitness',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.house),
            icon: Icon(Icons.house_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.monetization_on),
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Finance',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.hub),
            icon: Icon(Icons.hub_outlined),
            label: 'Trigram',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        onDestinationSelected: (index) {
          ref.read(layoutSelectedIndexProvider.notifier).state = index;
        },
      ),
      body: layoutWidget,
    );
  }
}
