import 'package:flutter/material.dart';
import '../contants.dart' as AppConstants;

class SurahScreen extends StatefulWidget {
  const SurahScreen({super.key});

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        title: Text(
          "Surah Name",
          style: TextStyle(color: AppConstants.secondaryColor),
        ),
      ),
      body: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppConstants.primaryColor, AppConstants.secondaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              // surah.surahNameArabic,
              "",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              // surah.surahNameEng,
              "",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  // surah.cityRevealed,
                  "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  // surah.surahNameEng,
                  "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            // Text(surah.basmallah)
            Text(""),
          ],
        ),
      ),

      // SizedBox(
      //   child: ListView(
      //     children: [
      //       const SurahList(),
      //     ],
      //   ),
      // ),
      // ListView(
      //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //   children: [
      //     ListTile(
      //       tileColor: AppConstants.primaryColor,
      //       title: const Text('ssurahNameArabic'),
      //       subtitle: const Text('surahNameEng'),
      //       leading: const Icon(Icons.accessible),
      //       trailing: const Text("Hello"),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     ListTile(
      //       tileColor: AppConstants.primaryColor,
      //       title: const Text('ssurahNameArabic'),
      //       subtitle: const Text('surahNameEng'),
      //       leading: const Icon(Icons.accessible),
      //       trailing: const Text("Hello"),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     const SurahPage(),
      // ],
      // ),
    );
  }
}
