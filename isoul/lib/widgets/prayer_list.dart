import 'dart:async';

import 'package:flutter/material.dart';
import 'package:isoul/custom/contants.dart' as colors;
import 'package:isoul/services/prayer_service.dart';
import '../models/prayer.dart';

class PrayerList extends StatefulWidget {
  const PrayerList({super.key});

  @override
  State<PrayerList> createState() => _PrayerListState();
}

class _PrayerListState extends State<PrayerList> {
  Prayer? prayerTime;
  bool isWaiting = true;

  @override
  void initState() {
    super.initState();
    _fetchPrayerTime();
  }

  _fetchPrayerTime() async {
    final _PrayerService = PrayerService();
    String cityName = await _PrayerService.getCurrentCity();
    print(cityName);
    try {
      final _prayerTime = await _PrayerService.getPrayerTime(cityName);
      setState(() {
        prayerTime = _prayerTime;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    String? fajrPrayer = prayerTime?.fajr;
    String? duhurPrayer = prayerTime?.zuhur;
    String? asrPrayer = prayerTime?.asr;
    String? maghribPrayer = prayerTime?.magrib;
    String? ishaPrayer = prayerTime?.isha;
    List prayers = [
      fajrPrayer,
      duhurPrayer,
      asrPrayer,
      maghribPrayer,
      ishaPrayer
    ];

    List<String> prayerName = [
      'Fajr',
      'Zuhur',
      'Asr',
      'Maghrib',
      'Isha',
    ];
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        isWaiting = false;
      });
    });

    double screenHeight = MediaQuery.of(context).size.height;
    return isWaiting
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            padding:
                EdgeInsets.symmetric(vertical: screenHeight > 600 ? 20 : 10),
            shrinkWrap: true,
            itemCount: prayers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    ListTile(
                      shape: const StadiumBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: screenHeight > 600 ? 10 : 3),
                      title: Text(
                        prayerName[index],
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: screenHeight > 600 ? 25 : 20,
                        ),
                      ),
                      subtitle: Text(
                        prayers[index],
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: screenHeight > 600 ? 15 : 13,
                        ),
                      ),
                      trailing: Icon(
                        Icons.volume_up_rounded,
                        color: colors.backgroundColor,
                      ),
                      tileColor: const Color.fromARGB(223, 245, 245, 245),
                    ),
                    SizedBox(height: screenHeight > 600 ? 15 : 5)
                  ],
                ),
              );
            },
          );
  }
}
