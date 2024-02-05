import 'package:flutter/material.dart';

class SettingsList extends StatefulWidget {
  final String title;
  final String subtitle;
  final dynamic icon;
  final dynamic route;
  const SettingsList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
  });

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          ListTile(
            shape: const StadiumBorder(),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 30, vertical: screenHeight > 600 ? 10 : 3),
            leading: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                widget.icon,
                color: Colors.black54,
              ),
            ),
            title: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w700,
                fontSize: screenHeight > 600 ? 25 : 20,
              ),
            ),
            subtitle: Text(
              widget.subtitle,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w700,
                fontSize: screenHeight > 600 ? 15 : 13,
              ),
            ),
            tileColor: const Color.fromARGB(223, 245, 245, 245),
          ),
          SizedBox(height: screenHeight > 600 ? 15 : 5)
        ],
      ),
    );
  }
}
