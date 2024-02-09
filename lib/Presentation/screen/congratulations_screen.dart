import 'package:flutter/material.dart';
import 'package:tokenization/Presentation/screen/home_screen.dart';

import '../../utils/colors/custom_color.dart';
import 'card_details.dart';


class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/right_check.webp',
                  height: 70,
                  width: 70,
                ),
                const SizedBox(
                  height: 37,
                ),
                const Text("Congratulations!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: "RedHatDisplay",
                      color: CustomColors.black,
                    )),
                const Text("Thank you for this Payment ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "RedHatDisplay",
                      color: CustomColors.black,
                    )),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomeScreen()));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: CustomColors.blue,
                        foregroundColor: CustomColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text(
                      "Back to home",
                      style: TextStyle(
                          fontFamily: "RedHatDisplay",
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
