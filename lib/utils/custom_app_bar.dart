import 'package:flutter/material.dart';
import 'package:orange_industrials/utils/misc_utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomAppBar extends SliverPersistentHeaderDelegate {
  static const double expandedHeight = 168.75;

  CustomAppBar();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: kToolbarHeight,
          color: Colors.black87,
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.black87,
            actions: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                ? []
                : [
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
                  ],
            automaticallyImplyLeading: ResponsiveWrapper.of(context).isSmallerThan(TABLET),
          ),
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / kToolbarHeight,
            child: const Text(
              "Orange Industrials",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 17 - shrinkOffset,
          left: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? (MediaQuery.of(context).size.width - 270) / 2
              : MediaQuery.of(context).size.width / 17,
          child: Opacity(
            opacity: (1 - shrinkOffset / kToolbarHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: 270,
                child: InkWell(
                    onTap: () {
                      Utils.routeHome(context);
                    },
                    child: Image.asset("assets/logo_pic.png")),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => kToolbarHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
