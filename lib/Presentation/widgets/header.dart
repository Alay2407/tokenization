import 'package:flutter/material.dart';

import '../../utils/colors/custom_color.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 0.6,
                  color: Colors.grey.shade50,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(children: [Icon(Icons.download,color: CustomColors.blue), Text('UserQR',style: TextStyle(color: CustomColors.black,),)]),
                  ),
                ),
                // Icon(Icons.download),
                // Text(data)

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    'assets/images/qr_img.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  elevation: 0.6,

                  color: Colors.grey.shade50,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(children: [Icon(Icons.supervised_user_circle,color: CustomColors.blue), Text('Profile',style: TextStyle(color: CustomColors.black,))]),
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
