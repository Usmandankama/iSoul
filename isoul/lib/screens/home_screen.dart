import 'package:flutter/material.dart';
import 'package:isoul/widgets/menu_items.dart';
import 'package:isoul/widgets/surah_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;

    return MaterialApp(
      // Create the main application with MaterialApp.
      debugShowCheckedModeBanner: false,
      // Disable the debug banner.
      home: Scaffold(
        // Create the main screen scaffold.
        backgroundColor: const Color.fromARGB(148, 197, 96, 255),
        resizeToAvoidBottomInset: false,
        // Prevent the screen from resizing when the keyboard appears.
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '2 Rajab 1445 AH',
                  style: TextStyle(color: Colors.white70),
                ),
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(195, 205, 119, 255),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text('Abuja', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Center(
                child: Text(
              'ISHA',
              style: TextStyle(color: Colors.white, fontSize: 40),
            )),
            const Center(
                child: Text(
              'current prayer',
              style: TextStyle(color: Colors.white70),
            )),
            SizedBox(
              height: screen_height > 600? 150:20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(144, 197, 96, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'START',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '8:00 PM',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(144, 197, 96, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'END',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '11:50 PM',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screen_height > 600? 50:50),
            Container(
              padding: EdgeInsets.only(top: screen_height > 600? 35:0),
              height: screen_height > 600? 350:250,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const MenuWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
