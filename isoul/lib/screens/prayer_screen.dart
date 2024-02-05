import 'dart:async';
import 'package:flutter/material.dart';
import 'package:isoul/custom/contants.dart' as colors;
import 'package:isoul/screens/settings_screen.dart';
import 'package:isoul/widgets/prayer_list.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({super.key});

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  var hour = DateTime.now().hour;
  var minute = DateTime.now().minute;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        hour = DateTime.now().hour;
        minute = DateTime.now().minute;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colors.primaryFontColor,
      appBar: AppBar(
        backgroundColor: colors.backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Text('Prayer time'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight > 600 ? 250 : 150,
            width: 500,
            decoration: BoxDecoration(
              color: colors.backgroundColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight > 600 ? 30 : 0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    '$hour:$minute',
                    style: TextStyle(
                        color: colors.primaryFontColor,
                        fontSize: screenHeight > 600 ? 50 : 35),
                  ),
                  SizedBox(height: screenHeight > 600 ? 35 : 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'SUNRISE',
                                style: TextStyle(
                                    color: colors.primaryFontColor,
                                    fontSize: 15),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '6:20 AM',
                                style: TextStyle(
                                    color: colors.primaryFontColor,
                                    fontSize: 20),
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
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'SUNSET',
                                style: TextStyle(
                                    color: colors.primaryFontColor,
                                    fontSize: 15),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '6:10 PM',
                                style: TextStyle(
                                    color: colors.primaryFontColor,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: PrayerList()),
        ],
      ),
    );
  }
}
