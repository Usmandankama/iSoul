import 'package:flutter/material.dart';
import 'package:isoul/widgets/surah_list.dart';
// ignore: library_prefixes
import '../contants.dart' as AppConstants;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   title: Text(
          //     "iSoul",
          //     style: TextStyle(
          //         color: AppConstants.subTitleTextColor,
          //         fontSize: AppConstants.headingFontSize,
          //         fontFamily: "Monospace",
          //         letterSpacing: -2),
          //   ),
          //   elevation: 0,
          // ),
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Assalamualikum',
                style: TextStyle(
                    fontSize: AppConstants.subtitleFontSize,
                    color: const Color.fromARGB(255, 102, 102, 102)),
              ),
              Text(
                'Usman Abubakar',
                style: TextStyle(
                  fontSize: AppConstants.headingFontSize,
                  color: AppConstants.headingTextColor,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: AppConstants.secondaryTextColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    autocorrect: false,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Search',
                        border: InputBorder.none,
                        suffixIcon: const Icon(Icons.search),
                        suffixIconColor: AppConstants.secondaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        AppConstants.subTitleTextColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        AppConstants.subTitleTextColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        AppConstants.subTitleTextColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        AppConstants.subTitleTextColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                ],
              ),
              // const SurahList(),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),    
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: AppConstants.primaryColor,
                title: const Text('ssurahNameArabic'),
                subtitle: const Text('surahNameEng'),
                leading: const Icon(Icons.accessible),
                trailing: const Text("Hello"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ));
  }
}
