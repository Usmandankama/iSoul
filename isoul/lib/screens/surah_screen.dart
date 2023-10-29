import 'package:flutter/material.dart';
import '../models/surah.dart';

class SurahPage extends StatefulWidget {
  final Surah surah;
  const SurahPage({super.key, required this.surah});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.white,
        title: Text(
          widget.surah.surahNameArabic,
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: ayahts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  textColor: Colors.white,
                  trailing: Text("$index"),
                  title: Text(
                    ayahts[index]['text'],
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(fontSize: 20),
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
