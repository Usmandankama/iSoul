import 'package:flutter/material.dart';
import '../models/surah.dart';
import 'package:isoul/custom/contants.dart' as colors;

class SurahPage extends StatefulWidget {
  final Surah surah;
  const SurahPage({super.key, required this.surah});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  bool isLightMode = false;
  List<dynamic> ayahts = [];
  int index = 1;

  @override
  void initState() {
    super.initState();
    // Initialize the widget state by adding Ayahs from the Surah.
    _addAyah();
  }

  void _addAyah() {
    // Function to add Ayahs to the widget's state.
    setState(() {
      ayahts = widget.surah.ayahts;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: colors.backgroundColor,
        foregroundColor: colors.primaryFontColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.surah.surahNameArabic,
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.light_mode_rounded),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: ayahts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  textColor: colors.primaryFontColor,
                  trailing: Text(
                    "$index",
                    style: TextStyle(fontSize: screenheight > 600 ? 25 : 20),
                  ),
                  title: Text(
                    ayahts[index]['text'],
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: screenheight > 600 ? 25 : 20),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(117, 190, 190, 190),
                  thickness: 1.2,
                )
              ],
            );
          }),
    );
  }
}
