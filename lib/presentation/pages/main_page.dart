// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gebetlesen/presentation/pages/ayat_kursi_page.dart';
import 'package:gebetlesen/presentation/pages/bacaan_shalat_page.dart';
import 'package:gebetlesen/presentation/pages/niat_shalat_page.dart';

class MainPage extends StatefulWidget {
  final int initialPage;
  const MainPage({
    Key? key,
    this.initialPage = 0,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int? selectedPage;
  PageController? pageController;
  @override
  void initState() {
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: const [
                Center(
                  child: NiatShalatPage(),
                ),
                Center(
                  child: BacaanShalatPage(),
                ),
                Center(
                  child: AyatKursiPage(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .090),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                selectedPage = index;
                HapticFeedback.lightImpact();
              });
              pageController!.jumpToPage(selectedPage!);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == selectedPage
                      ? displayWidth * .40
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == selectedPage ? displayWidth * .12 : 0,
                    width: index == selectedPage ? displayWidth * .40 : 0,
                    decoration: BoxDecoration(
                      color: index == selectedPage
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(
                    seconds: 1,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == selectedPage
                      ? displayWidth * .40
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == selectedPage ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == selectedPage ? 1 : 0,
                            duration: const Duration(
                              seconds: 1,
                            ),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == selectedPage ? listOfStrings[index] : '',
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == selectedPage ? displayWidth * .03 : 20,
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/' +
                                      listOfIcons[index] +
                                      '.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> listOfStrings = [
    'Niat Shalat',
    'Bacaan Shalat',
    'Ayat Kursi',
  ];
  List<String> listOfIcons = [
    'ic_niat',
    'ic_doa',
    'ic_bacaan',
  ];
}
