import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool is_lightMode = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: const Color.fromARGB(255, 23, 36, 41),
      elevation: 10,
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 70),
              child: Text(
                'iSoul',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: is_lightMode
                      ? const Color.fromARGB(122, 0, 0, 0)
                      : Colors.amber,
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (is_lightMode) {
                        is_lightMode = false;
                      } else {
                        is_lightMode = true;
                      }
                    });
                  },
                  icon: Icon(
                    is_lightMode
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.mosque,
              color: Colors.white,
            ),
            title: Text(
              'Prayer times',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.list_rounded,
              color: Colors.white,
            ),
            title: Text(
              '99 Name of Allah',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              'About this app',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.share,
              color: Colors.white,
            ),
            title: Text(
              'Share this app',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
