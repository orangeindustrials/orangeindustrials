import 'package:flutter/material.dart';
import 'package:orange_industrials/utils/custom_footer.dart';
import 'package:orange_industrials/utils/misc_utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:orange_industrials/utils/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                delegate: SliverChildListDelegate([
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(ResponsiveWrapper.of(context).isSmallerThan(TABLET)?"assets/display_pic_long.png":"assets/display_pic.png", fit: BoxFit.cover,),

                      const Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Text(
                          "PRODUCTS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 34,
                          ),
                        ),
                      ),
                      ResponsiveRowColumn(
                        layout:
                            ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                                ? ResponsiveRowColumnType.COLUMN
                                : ResponsiveRowColumnType.ROW,
                        rowCrossAxisAlignment: CrossAxisAlignment.center,
                        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(34.0),
                              child: Image.asset(
                                'assets/printer_pic.webp',
                                width: MediaQuery.of(context).size.width * 0.45,
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            child: Column(
                              children: const [
                                Text(
                                  "Large Format Digital Printers",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(17.0),
                                  child: Text(
                                    "InkJet printers with advanced Precision-Core Technology, that can print high resolution designs.",
                                    maxLines: 5,
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ResponsiveRowColumn(
                        layout:
                            ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                                ? ResponsiveRowColumnType.COLUMN
                                : ResponsiveRowColumnType.ROW,
                        rowCrossAxisAlignment: CrossAxisAlignment.center,
                        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            columnOrder: 2,
                            child: Column(
                              children: const [
                                Text(
                                  "Best Quality Sublimation Papers",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(17.0),
                                  child: Text(
                                    "High Quality Coated Sublimation Paper offers excellent color accuracy, sharpness, and detail, making it an ideal choice for printing high-quality designs polyester fabrics.",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                    maxLines: 5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            columnOrder: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(34.0),
                              child: Image.asset(
                                'assets/paper_pic.webp',
                                width: MediaQuery.of(context).size.width * 0.45,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ResponsiveRowColumn(
                        layout:
                            ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                                ? ResponsiveRowColumnType.COLUMN
                                : ResponsiveRowColumnType.ROW,
                        rowCrossAxisAlignment: CrossAxisAlignment.center,
                        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            child: Image.asset(
                              'assets/blanket_pic.jpg',
                              width: MediaQuery.of(context).size.width * 0.45,
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            child: Column(
                              children: const [
                                Text(
                                  "100% Nomex Endless Blankets/Felts",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(17.0),
                                  child: Text(
                                    "Pure Nomex Blankets/Felts for Transfer Printing at high temperatures for perfectly smooth transfer of sublimation ink.",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                    maxLines: 5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const CustomFooter(),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
