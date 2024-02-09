import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tokenization/Presentation/screen/card_details.dart';
import 'package:tokenization/Presentation/widgets/header.dart';
import 'package:tokenization/utils/colors/custom_color.dart';

import '../widgets/card_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet:,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: CustomColors.blue.withOpacity(0.8),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.document_scanner), label: "Permission"),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Payments"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          CardView(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Hello User,',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(
                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                        Icon(
                          Icons.transfer_within_a_station,
                          size: 40,
                          color: CustomColors.blue,
                        ),
                        Text('Transfer', style: TextStyle(color: CustomColors.black,fontWeight: FontWeight.bold),),
                      ]),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(

                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                        Icon(
                          Icons.monetization_on_rounded,
                          size: 40,
                          color: CustomColors.blue,
                        ),
                        Text('Pay bill',style: TextStyle(color: CustomColors.black,fontWeight: FontWeight.bold),),
                      ]),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Card(

                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                        Icon(
                          Icons.history,
                          size: 40,
                          color: CustomColors.blue,
                        ),
                        Text('View History',style: TextStyle(color: CustomColors.black,fontWeight: FontWeight.bold),),
                      ]),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 380,
                          child: Center(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                GestureDetector(
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.cancel, size: 28,),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text('Ready To Scan', style: TextStyle(fontSize: 30),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 25),
                                  child: SvgPicture.asset(
                                    'assets/images/contactless.svg',
                                    semanticsLabel: 'My SVG Image',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Text('Hold Your Phone Near the Card', style: TextStyle(fontSize: 18),),
                                ),
                                SizedBox(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.9,
                                  height: 60,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const CardDetailsScreen()));
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: CustomColors.blue,
                                          foregroundColor: CustomColors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15))),
                                      child: const Text(
                                        "Scan",
                                        style: TextStyle(
                                            fontFamily: "RedHatDisplay",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(

                      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                          Icon(
                            Icons.tap_and_play,
                            size: 40,
                             color: CustomColors.blue,
                          ),
                          Text('Tap to Pay',style: TextStyle(color: CustomColors.black,fontWeight: FontWeight.bold),),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
