import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_industrials/utils/misc_utils.dart';


const tPrimaryColor = Colors.cyan;
const tDarkColor = Colors.black12;
const double coverHeight = 280;
const double profileHeight = 144;


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark?Colors.black87:Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async{
          html.window.open('assets/Shah_Yash.vcf',"_blank");

        },
        label: const Text("Add Contact"),
        icon: const Icon(CupertinoIcons.person_add),
    ),
    );
  }


  Widget buildTop(){
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCover(),
        Positioned(
          top: coverHeight - profileHeight/2,
          child: buildAvatar(),
        ),
      ],
    );
  }

  Widget buildContent(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: profileHeight/1.7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Yash Shah",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: profileHeight/7,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Founder, Orange Industrials",
            textAlign: TextAlign.center,
          ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: profileHeight/5, horizontal: profileHeight/22),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                 InkWell(
                  onTap:  (){
                    Utils.launchUrlutil("tel:+919016467633");
                    },
                  child: const CircleAvatar(
                    radius: profileHeight/4,
                    backgroundColor: Colors.cyan,
                    child: Icon(Icons.call, color: Colors.black,),
                  ),
                ),
                InkWell(
                  onTap:  (){
                    Utils.launchUrlutil("mailto:operations@orangeindustrilas.com");
    },
                  child: const CircleAvatar(
                    radius: profileHeight/4,
                    backgroundColor: Colors.pink,
                    child: Icon(Icons.email, color: Colors.black,),
                  ),
                ),
                InkWell(
                  onTap:  (){
                    Utils.launchUrlutil("https://orangeindustrilas.com");
                  },
                  child: const CircleAvatar(
                    radius: profileHeight/4,
                    backgroundColor: Colors.yellow,

                    child: Icon(CupertinoIcons.globe, color: Colors.black,),
                  ),
                ),
                InkWell(
                  onTap:  (){
                    Utils.launchUrlutil("https://wa.me/919016467633");
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: profileHeight/4,
                    child: Image.asset("assets/whatsapp.png"),
                  ),
                ),
              ],
          ),
           ),
           Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: profileHeight/17, horizontal: profileHeight/34),
                  child: Text(
                    "International Office",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: profileHeight/9,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: profileHeight/17,horizontal: profileHeight/34),
                  child: Text("333, Gauraj Gally, M. J. Market,\nKalbadevi Road,\nMumbai - 400 002."),
                ),
              ],
            ),
          ),
           Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: profileHeight/17,horizontal: profileHeight/34),
                  child: Text(
                      "Domestic Office",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: profileHeight/9,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: profileHeight/17,horizontal: profileHeight/34),
                  child: Text("4/1240, Orange House,\nBegumpura Falsawadi,\nSurat - 395 003."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCover(){
    return Container(
      color: Colors.white,
      child: Image.asset(
        "assets/logo_pic.png",
        width: double.infinity,
        height: coverHeight,
      ),
    );
  }
  Widget buildAvatar(){
    return CircleAvatar(
      radius: profileHeight/2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: const AssetImage("assets/profile_pic.jpg"),

    );
  }



}