import 'package:flutter/material.dart';
import 'package:isoul/custom/contants.dart' as colors;

import '../models/prayer.dart';

class PrayerList extends StatefulWidget {
  const PrayerList({super.key});

  @override
  State<PrayerList> createState() => _PrayerListState();
}

class _PrayerListState extends State<PrayerList> {
  List<Prayer> prayers = [
    Prayer(prayerName: 'Subhi', time: '5:30 am', icon: Icons.sunny_snowing),
    Prayer(prayerName: 'Dhuhr', time: '1:00 pm', icon: Icons.sunny),
    Prayer(prayerName: 'Asr', time: '4:00 pm', icon: Icons.sunny_snowing),
    Prayer(
        prayerName: 'Maghrib',
        time: '6:30 pm',
        icon: Icons.nightlight_round_rounded),
    Prayer(
        prayerName: 'Isha', time: '8:00 am', icon: Icons.nights_stay_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return ListView.builder(
      padding:  EdgeInsets.symmetric(vertical: screenHeight>600?20:10),
      shrinkWrap: true,
      itemCount: prayers.length,
      itemBuilder: (context, index) {
        Prayer prayer = prayers[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              ListTile(
                shape: const StadiumBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: screenHeight > 600?10:3),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(
                    prayer.icon,
                    color: Colors.black54,
                  ),
                ),
                title: Text(
                  prayer.prayerName,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: screenHeight > 600 ? 25 : 20,
                  ),
                ),
                subtitle: Text(
                  prayer.time,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                    fontSize: screenHeight > 600 ? 15 : 13,
                  ),
                ),
                trailing:  Icon(Icons.volume_up_rounded,color: colors.backgroundColor,),
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
