import 'package:flutter/material.dart';
import 'package:isoul/widgets/surah_list.dart';
// ignore: library_prefixes
import '../contants.dart' as AppConstants;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   title: Text(
        //     "iSoul",
        //     style: TextStyle(
        //         color: AppConstants.subTitleTextColor,
        //         fontSize: AppConstants.headingFontSize,
        //         fontFamily: "Monospace",
        //         letterSpacing: -2),
                
        //   ),
        //   elevation: 0,
        // ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'Assalamualikum',
              style: TextStyle(
                  fontSize: AppConstants.subtitleFontSize,
                  color: const Color.fromARGB(255, 102, 102, 102)),
            ),
            Text(
              'Usman Abubakar',
              style: TextStyle(
                fontSize: AppConstants.headingFontSize,
                color: AppConstants.headingTextColor,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: AppConstants.secondaryTextColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  autocorrect: false,
                  decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 0, 0, 0),
                      hintText: 'Search',
                      border: InputBorder.none,
                      suffixIcon: const Icon(Icons.search),
                      suffixIconColor: AppConstants.secondaryColor),
                ),
              ),
            ),
            const SurahList(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppConstants.secondaryColor,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.book),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
