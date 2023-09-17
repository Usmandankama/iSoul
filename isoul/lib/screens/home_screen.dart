import 'package:flutter/material.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "iSoul",
              style: TextStyle(
                  color: AppConstants.headingTextColor,
                  fontSize: AppConstants.headingFontSize,
                  fontFamily: "Monospace",
                  letterSpacing: -2),
            ),
            elevation: 0,
          ),
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              // Text(),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 192, 188, 188),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
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
              const SizedBox(
                height: 20,
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
              MenuAnchor(menuChildren: [
                MenuItemButton(child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),),
                MenuItemButton(child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),)
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Surah",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: AppConstants.defaultFontSize,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
