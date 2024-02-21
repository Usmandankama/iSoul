class Prayer {
  String fajr;
  String shurouq;
  String zuhur;
  String asr;
  String magrib;
  String isha;

  Prayer({
    required this.fajr,
    required this.shurouq,
    required this.zuhur,
    required this.asr,
    required this.magrib,
    required this.isha,
  });

  factory Prayer.fromJson(Map<String, dynamic> json) {
    return Prayer(
      fajr: json['items'][0]['fajr'],
      shurouq: json['items'][0]['shurooq'],
      zuhur: json['items'][0]['dhuhr'],
      asr: json['items'][0]['asr'],
      magrib: json['items'][0]['maghrib'],
      isha: json['items'][0]['isha'],
    );
  }
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