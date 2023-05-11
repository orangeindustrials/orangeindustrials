import 'package:flutter/material.dart';
import 'package:orange_industrials/utils/misc_utils.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Container(
        color: Colors.black87,
        height: 250,
        padding: const EdgeInsets.all(37),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'logo_pic.png',
                  width: 178,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                  TextButton(
                    onPressed: () {
                      Utils.routeHome(context);
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Utils.routeContactUs(context);
                    },
                    child: const Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ])
              ],
            ),
            const SizedBox(height: 17,),
            const Text("COPYRIGHT © 2023 ORANGE INDUSTRIALS - ALL RIGHTS RESERVED.", textAlign: TextAlign.center,),

          ],
        ),
      ),
    );
  }
}
