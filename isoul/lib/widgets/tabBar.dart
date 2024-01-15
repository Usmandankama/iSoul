import 'package:flutter/material.dart';

class TabBar extends StatefulWidget {
  const TabBar({super.key});

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
//Align(
//   alignment: Alignment.center,
//   child: TabBar(
//     labelStyle: const TextStyle(fontFamily: 'monospace'),
//     indicator: BoxDecoration(
//       color: const Color.fromARGB(255, 255, 247, 247),
//       borderRadius: BorderRadius.circular(35),
//       border: Border.all(
//         width: 1,
//         style: BorderStyle.solid,
//         strokeAlign: 1,
//       ),
//     ),
//     splashBorderRadius: BorderRadius.circular(20),
//     isScrollable: true,
//     padding: const EdgeInsets.only(top: 10, left: 40, bottom: 10),
//     labelColor: const Color.fromARGB(255, 0, 0, 0),
//     unselectedLabelColor: const Color.fromARGB(255, 252, 252, 252),
//     controller: _tabController,
//     indicatorSize: TabBarIndicatorSize.tab,
//     labelPadding: const EdgeInsets.symmetric(horizontal: 25),
//     unselectedLabelStyle: const TextStyle(color: Colors.black45),
//     dividerColor: Colors.transparent,
//     tabs: const [
//       Tab(icon: Icon(Icons.home), text: 'Home'),
//       Tab(icon: Icon(Icons.menu_book_rounded), text: 'Quran'),
//       Tab(icon: Icon(Icons.mosque), text: 'Prayer')
//     ],
//   ),
// ),
// SizedBox(
//   width: double.maxFinite,
//   height: 350,
//   child: TabBarView(
//     controller: _tabController,
//     children: const [
//       Text('data', style: TextStyle(color: Colors.amber)),
//       SurahList(),
//       Text('data'),
//     ],
//   ),
// ),
