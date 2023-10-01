import 'package:flutter/material.dart';
import '../contants.dart' as AppConstants;
import '../models/surah.dart';

class SurahPage extends StatefulWidget {
  final Surah surah;
  const SurahPage({super.key, required this.surah});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  // ignore: non_constant_identifier_names
  List<Surah> surah_item = [];

  void _addToCart(Surah surahs) {
    setState(() {
      surah_item.add(surahs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.pageColor,
      appBar: AppBar(
        foregroundColor: AppConstants.headingTextColor,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.surah.surahNameArabic,
              style: TextStyle(
                color: AppConstants.headingTextColor,
              ),
            ),
            Text(
              widget.surah.surahNameEng,
              style: TextStyle(
                fontSize: 12,
                color: AppConstants.headingTextColor,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Text(widget.surah.cityRevealed),
        ],
      ),
    );
  }
}
