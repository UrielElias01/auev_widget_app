import 'package:auev_widget_app/config/menu/menu_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + M3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];

          return _CustomTile(menuItem: menuItem);
        });
  }
}

class _CustomTile extends StatelessWidget {
  final MenuItem menuItem;

  const _CustomTile({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: color.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTiltle),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: color.primary,
      ),
      onTap: () {
        //TODO: Navegar a otra pantalla
      },
    );
  }
}
