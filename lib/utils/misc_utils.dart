


import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils{
  static Future<void> launchUrlutil(url) async {
    Uri processedURi = Uri.parse(url);
    if (!await launchUrl(processedURi)) {
      throw Exception('Could not launch $processedURi');
    }
  }
  static void routeHome(BuildContext context){
    Navigator.pushNamed(context, '/');
  }
  static void routeContactUs(BuildContext context){
    Navigator.pushNamed(context, '/contact_us');
  }
}