class Prayer {
  String prayerName;
  String time;
  dynamic icon;
  Prayer({
    required this.prayerName,
    required this.time,
    required this.icon,
  });
}
// void fetchQuranData() async {
//   // Function to fetch Quran data from the API.
//     try {
//       const url = 'http://api.alquran.cloud/v1/quran/quran-uthmani';
//       final uri = Uri.parse(url);
//       final response = await http.get(uri);
//       final body = response.body;
//       final json = jsonDecode(body);
//       final results = json['data']['surahs'];

//       if (response.statusCode == 200) {
//         // If the API call is successful, update the state with the fetched data.
//         setState(() {
//           surahsFromApi = results;
//         });
//       } else {
//         // If there is an error in the API call, set a connection error flag.
//         setState(() {
//           connectionError = true;
//         });
//       }
//     } catch (e) {
//       Center(
//           child: Text(
//         "Connection Error",
//         style: TextStyle(color: colors.primaryFontColor, fontSize: 40),
//       ));
//     }
//   }