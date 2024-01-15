import 'package:flutter/material.dart';
import 'package:isoul/models/menu.dart';
import 'package:isoul/screens/home_screen.dart';
import 'package:isoul/widgets/home_content.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  List<MenuItem> menuItems = [
    MenuItem(
      name: 'Al-Quran',
      icon: const Icon(Icons.abc),
      route: MaterialPageRoute(builder: (context) => const HomeContent()),
    ),
    MenuItem(
      name: 'Prayer Times',
      icon: const Icon(
        Icons.mosque_outlined,
        color: Color.fromARGB(255, 61, 0, 97),
      ),
      route: MaterialPageRoute(builder: (context) => const HomeScreen()),
    ),
    MenuItem(
      name: 'Hadith',
      icon: const Icon(Icons.book, color: Color.fromARGB(255, 61, 0, 97)),
      route: MaterialPageRoute(builder: (context) => const HomeScreen()),
    ),
    MenuItem(
      name: 'Qibla Direction',
      icon: const Icon(Icons.zoom_out_map_sharp,
          color: Color.fromARGB(255, 61, 0, 97)),
      route: MaterialPageRoute(builder: (context) => const HomeScreen()),
    ),
    MenuItem(
      name: 'Settings',
      icon: const Icon(Icons.settings, color: Color.fromARGB(255, 61, 0, 97)),
      route: MaterialPageRoute(builder: (context) => const HomeScreen()),
    ),
    MenuItem(
      name: 'QURAN',
      icon: const Icon(Icons.abc, color: Color.fromARGB(255, 61, 0, 97)),
      route: MaterialPageRoute(builder: (context) => const HomeScreen()),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: menuItems.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, menuItem.route);
            },
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(55, 197, 96, 255),
                    // color: ,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: menuItem.icon,
                ),
                const SizedBox(height: 5),
                Text(
                  menuItem.name,
                  style: TextStyle(fontSize:15),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
