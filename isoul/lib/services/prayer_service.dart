import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:isoul/models/prayer.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class PrayerService {
  String? city;
  List prayers = [];
  String apiKey = 'bc8467b250mshc49327a68354964p1b596bjsn2df12ebf9dbe';
  static const BASE_URL = "http://muslimsalat.com/";

  Future<Prayer> getPrayerTime(String cityName) async {
    var uri = Uri.https('muslimsalat.p.rapidapi.com', '/$cityName.json');
    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'bc8467b250mshc49327a68354964p1b596bjsn2df12ebf9dbe',
      'X-RapidAPI-Host': 'muslimsalat.p.rapidapi.com'
    });
    if (response.statusCode == 200) {
      return Prayer.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<String> getCurrentCity() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    String? city = placemarks[0].locality;

    return city ?? "";
  }
}
