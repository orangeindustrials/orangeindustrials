import 'package:flutter/material.dart';
import 'package:orange_industrials/utils/custom_footer.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:orange_industrials/utils/custom_app_bar.dart';
import 'package:orange_industrials/utils/misc_utils.dart';
import 'dart:html' as html;


class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          drawer: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? Drawer(
                  backgroundColor: Colors.black45,
                  shadowColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Menu",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                              ),
                            ),
                            const Divider(),
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
                            const Divider(),
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
                          ],
                        ),
                        const Text(
                          "Orange Industrials",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : null,
          body: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: CustomAppBar(),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 34,
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(17.0),
                            child: Text(
                              "CONTACT US",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 34,
                              ),
                            ),
                          ),
                          ResponsiveRowColumn(
                            layout: ResponsiveWrapper.of(context)
                                    .isSmallerThan(TABLET)
                                ? ResponsiveRowColumnType.COLUMN
                                : ResponsiveRowColumnType.ROW,
                            rowCrossAxisAlignment: CrossAxisAlignment.start,
                            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            columnMainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              ResponsiveRowColumnItem(
                                rowFlex: 1,
                                columnOrder: 2,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 34),
                                      child: Text(
                                        "It would be our pleasure to assist you.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 27,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 34, horizontal: 8),
                                          child: TextButton(
                                            onPressed: () {
                                              Utils.launchUrlutil(
                                                  "tel:+919016467633");
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.cyan,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Icon(Icons.phone),
                                                Text(" Phone"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 34, horizontal: 8),
                                          child: TextButton(
                                            onPressed: () {
                                              Utils.launchUrlutil(
                                                  "mailto:operations@orangeindustrilas.com");
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.pink,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Icon(Icons.email),
                                                Text(" Email"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 34, horizontal: 8),
                                          child: TextButton(
                                            onPressed: () {
                                              html.window.open('assets/Shah_Yash.vcf',"_blank");

                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.yellow,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Icon(Icons.contact_phone),
                                                Text(" Contact Card"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 34, horizontal: 8),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.black87,
                                            ),
                                            onPressed: () {
                                              Utils.launchUrlutil(
                                                  "https://wa.me/919016467633");
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: Colors.green,
                                                  radius: 10,
                                                  child: Image.asset(
                                                      "assets/whatsapp.png"),
                                                ),
                                                const Text(" WhatsApp"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.0),
                                              child: Text(
                                                "International Office",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(11.0),
                                              child: Text(
                                                "333, Gauraj Gally, M. J. Market,\nKalbadevi Road, Marine Lines,\nMumbai - 400 002.",
                                                maxLines: 5,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.0),
                                              child: Text(
                                                "Domestic Office",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(11.0),
                                              child: Text(
                                                "4/1240, Orange House,\nBegumpura Falsawadi,\nSurat - 395 003.",
                                                maxLines: 5,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 34,
                                    )
                                  ],
                                ),
                              ),
                              ResponsiveRowColumnItem(
                                rowFlex: 1,
                                columnOrder: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 11.0),
                                  child: Image.asset(
                                    "assets/office_pic.jpg",
                                    width:
                                        MediaQuery.of(context).size.width * 0.45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const CustomFooter(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
