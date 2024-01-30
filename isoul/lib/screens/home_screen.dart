import 'package:flutter/material.dart';
import 'package:isoul/widgets/menu_items.dart';
import 'package:isoul/custom/contants.dart' as colors;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      // Disable the debug banner.
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Create the main screen scaffold.
        backgroundColor: colors.backgroundColor,
        resizeToAvoidBottomInset: false,
        // Prevent the screen from resizing when the keyboard appears.
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('./assets/images/bg1.jpg'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              children: [
                SizedBox(height: screenHeight > 600 ? 30 : 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 Rajab 1445 AH',
                      style: TextStyle(color: colors.primaryFontColor),
                    ),
                    Container(
                      width: 80,
                      height: 35,
                      decoration: BoxDecoration(
                          color: colors.lighterBackgroundColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: colors.primaryFontColor,
                            size: 15,
                          ),
                          Text('Abuja',
                              style: TextStyle(color: colors.primaryFontColor)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight > 600 ? 120 : 50),
                Center(
                  child: Text(
                    'ISHA',
                    style: TextStyle(
                      color: colors.primaryFontColor,
                      fontSize: 40,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'current prayer',
                    style: TextStyle(color: colors.secondaryFontColor),
                  ),
                ),
                SizedBox(
                  height: screenHeight > 600 ? 120 : 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: colors.lighterBackgroundColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'START',
                              style: TextStyle(
                                  color: colors.primaryFontColor, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8:00 PM',
                              style: TextStyle(
                                  color: colors.primaryFontColor, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: colors.lighterBackgroundColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'END',
                              style: TextStyle(
                                  color: colors.primaryFontColor, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '11:50 PM',
                              style: TextStyle(
                                  color: colors.primaryFontColor, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight > 600 ? 80 : 50),
                const MenuWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
