import 'package:flutter/material.dart';

import '../../utils/colors/custom_color.dart';
import '../widgets/my_text_field.dart';
import 'congratulations_screen.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fNameController = TextEditingController();
    final lNameController = TextEditingController();
    final cardNumberController = TextEditingController();
    final cvvController = TextEditingController();
    final expirtDateController = TextEditingController();
    final Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Details'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/card_bg.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card number',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                Text('**** **** **** ****',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white)),
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Card name',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white)),
                                      Text('SAVLIYA MILAN',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Expiry Date',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white)),
                                      Text('MM/YY',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                  controller: fNameController,
                  hintText: 'First Name',
                  obscureText: false,
                  keyboardType: TextInputType.text),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: lNameController,
                  hintText: 'Last Name',
                  obscureText: false,
                  keyboardType: TextInputType.text),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: cardNumberController,
                  hintText: 'Card Number',
                  obscureText: false,
                  keyboardType: TextInputType.number),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MyTextField(
                        controller: cvvController,
                        hintText: 'CVV',
                        obscureText: false,
                        keyboardType: TextInputType.number),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: MyTextField(
                        controller: expirtDateController,
                        hintText: 'Expiry Date',
                        obscureText: false,
                        keyboardType: TextInputType.datetime),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  controller: Controller,
                  hintText: 'Card Number',
                  obscureText: false,
                  keyboardType: TextInputType.number),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: TextButton(
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CongratulationsScreen()));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: CustomColors.blue,
                        foregroundColor: CustomColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text(
                      "Pay",
                      style: TextStyle(
                          fontFamily: "RedHatDisplay",
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
