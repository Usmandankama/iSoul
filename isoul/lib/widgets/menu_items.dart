import 'package:flutter/material.dart';
import 'package:isoul/models/menu.dart';
import 'package:isoul/screens/home_screen.dart';
import 'package:isoul/screens/prayer_screen.dart';
import 'package:isoul/screens/settings_screen.dart';
import 'package:isoul/widgets/quran.dart';
import 'package:isoul/custom/contants.dart' as colors;

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  List<MenuItem> menuItems = [
    MenuItem(
      name: 'Al-Quran',
      icon: Icons.import_contacts,
      route: const HomeContent(),
    ),
    MenuItem(
      name: 'Prayer Times',
      icon: Icons.mosque_outlined,
      route: const PrayerScreen(),
    ),
    MenuItem(
      name: 'Hadith',
      icon: Icons.collections_bookmark_rounded,
      route: const HomeScreen(),
    ),
    MenuItem(
      name: 'Qibla',
      icon: Icons.explore,
      route: const HomeScreen(),
    ),
    MenuItem(
      name: 'Calender',
      icon: Icons.calendar_month_rounded,
      route: const HomeScreen(),
    ),
    MenuItem(
      name: 'Settings',
      icon: Icons.settings,
      route: const SettingsScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: GridView.builder(
        itemCount: menuItems.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => menuItem.route)));
            },
            child: Column(
              children: [
                Container(
                  height: screenHeight > 600? 80:70,
                  width: screenHeight > 600? 80:70,
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(55, 197, 96, 255),
                    color: colors.lighterBackgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(menuItem.icon, color: colors.primaryFontColor),
                ),
                const SizedBox(height: 4),
                Text(
                  menuItem.name,
                  style: TextStyle(
                    fontSize: screenHeight > 600? 15:13,
                    color: colors.primaryFontColor,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
