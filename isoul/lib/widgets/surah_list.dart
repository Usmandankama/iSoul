import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:isoul/models/surah.dart';
import 'package:isoul/screens/surah_screen.dart';
import 'package:http/http.dart' as http;

class SurahList extends StatefulWidget {
  const SurahList({super.key});
  // This class represents a stateful widget for displaying a list of Surahs.
  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  final GlobalKey _listKey = GlobalKey();
  List<dynamic> ayahts = [];
  List<dynamic> surahsFromApi = [];
  bool connectionError = false;

  @override
  void initState() {
    super.initState();
    // Initialize the widget state by fetching Quran data when it's created.
    fetchQuranData();
  }

  void fetchQuranData() async {
    // Function to fetch Quran data from the API.
    try {
      const url = 'http://api.alquran.cloud/v1/quran/quran-uthmani';
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      final body = response.body;
      final json = jsonDecode(body);
      final results = json['data']['surahs'];

      if (response.statusCode == 200) {
        // If the API call is successful, update the state with the fetched data.
        setState(() {
          surahsFromApi = results;
        });
      } else {
        // If there is an error in the API call, set a connection error flag.
        setState(() {
          connectionError = true;
        });
      }
    } catch (e) {
      const Center(
          child: Text(
        "Connection Error",
        style: TextStyle(color: Colors.white, fontSize: 40),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      key: _listKey,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: surahsFromApi.length,
      itemBuilder: (context, index) {
        final surah = surahsFromApi[index];
        final listOfAyahs = surah['ayahs'];
        ayahts = listOfAyahs;
        final name = surah['name'];
        final engName = surah['englishNameTranslation'];
        var surat = Surah(
            surahNameEng: surah['englishNameTranslation'],
            surahNameArabic: surah['name'],
            cityRevealed: surah['revelationType'],
            ayahts: listOfAyahs);
        try {
          return connectionError
              ? const Center(
                  child: Text(
                  "Connection Error",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ))
              // If there is a connection error, display an error message.
              : Column(
                  children: [
                    ListTile(
                      textColor: Colors.white70,
                      onTap: () {
                        // Navigate to a Surah details page on item click.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SurahPage(surah: surat),
                          ),
                        );
                      },
                      leading: Text(
                        engName,
                        style: const TextStyle(fontSize: 15),
                      ),
                      trailing: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(148, 175, 174, 174),
                      thickness: .8,
                    )
                  ],
                );
        } catch (e) {
          return const Center(
            child: Text("Connection Error"),
          );
        }
      },
    );
  }
}
