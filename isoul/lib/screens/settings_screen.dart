import 'package:flutter/material.dart';
import 'package:isoul/custom/contants.dart' as colors;
import 'package:isoul/screens/home_screen.dart';
import 'package:isoul/widgets/settings_list.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.backgroundColor,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 20),
          SettingsList(
            title: 'Accounts',
            subtitle: 'Stuff nd stuff',
            icon: Icons.person,
            route: HomeScreen(),
          ),
          SettingsList(
            title: 'Security',
            subtitle: 'Stuff nd stuff',
            icon: Icons.person,
            route: HomeScreen(),
          ),
          SettingsList(
            title: 'Accounts',
            subtitle: 'Stuff nd stuff',
            icon: Icons.person,
            route: HomeScreen(),
          ),
          SettingsList(
            title: 'Accounts',
            subtitle: 'Stuff nd stuff',
            icon: Icons.person,
            route: HomeScreen(),
          ),
          SettingsList(
            title: 'Accounts',
            subtitle: 'Stuff nd stuff',
            icon: Icons.person,
            route: HomeScreen(),
          ),
        ],
      ),
    );
  }
}
