import 'package:flutter/material.dart';
import '../models/surah.dart';
import 'package:isoul/custom/contants.dart' as colors;

class SurahContent extends StatefulWidget {
  final Surah surah;
  const SurahContent({super.key, required this.surah});

  @override
  State<SurahContent> createState() => _SurahContentState();
}

class _SurahContentState extends State<SurahContent> {
  bool isLightMode = true;
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
      backgroundColor:
          isLightMode ? const Color.fromRGBO(255, 255, 255, 1) : Colors.black,
      appBar: AppBar(
        backgroundColor: isLightMode ? Colors.black : colors.backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.surah.surahNameArabic,
              style: const TextStyle(
                  // color: isLightMode ? Colors.black : colors.primaryFontColor,
                  ),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                setState(() {
                  if (isLightMode == false) {
                    isLightMode = true;
                  } else if (isLightMode) {
                    isLightMode = false;
                  }
                });
              },
              icon: Icon(isLightMode
                  ? Icons.light_mode_rounded
                  : Icons.light_mode_outlined),
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
                textColor: isLightMode ? Colors.black : colors.primaryFontColor,
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
        },
      ),
    );
  }
}
