// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:timeclockwizard/customtabbar/fancy_bottom_navigation.dart';
import 'package:timeclockwizard/helper/constant.dart';
import 'package:timeclockwizard/home/dashboard.dart';
import 'package:timeclockwizard/home/more.dart';
import 'package:timeclockwizard/home/payroll.dart';
import 'package:timeclockwizard/home/schedule.dart';
import 'package:timeclockwizard/home/timesheet.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int currentPage = 2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Login"),
        //   backgroundColor: tabBackground,
        // ),
        bottomNavigationBar: FancyBottomNavigation(
          barBackgroundColor: tabBackground,
          circleColor: Colors.transparent,
          textColor: Colors.white,
          inactiveIconColor: Colors.white54,
          activeIconColor: Colors.white,
          tabs: [
            TabData(iconData: Icons.time_to_leave, title: "Timesheet"),
            TabData(iconData: Icons.calendar_today, title: "Schedule"),
            TabData(iconData: Icons.speed_outlined, title: "Dashboard"),
            TabData(iconData: Icons.wallet_membership, title: "Payroll"),
            TabData(iconData: Icons.more, title: "More")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ),
        body: currentPage == 0
            ? Timesheet()
            : currentPage == 1
                ? Schedule()
                : currentPage == 2
                    ? Dashboard()
                    : currentPage == 3
                        ? Payroll()
                        : More()
        //  Container(
        //   decoration: BoxDecoration(color: Colors.white),
        //   child: Center(
        //       // child: _getPage(currentPage),
        //       ),
        // ),
        // SingleChildScrollView(
        //   // Center is a layout widget. It takes a single child and positions it
        //   // in the middle of the parent.
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[],
        //   ),
        // ),
        );
  }
}
