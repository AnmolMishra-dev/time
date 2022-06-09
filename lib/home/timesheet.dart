import 'package:flutter/material.dart';
import 'package:timeclockwizard/helper/constant.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Timesheet extends StatefulWidget {
  Timesheet({Key key}) : super(key: key);

  @override
  _TimesheetState createState() => _TimesheetState();
}

class _TimesheetState extends State<Timesheet> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  List listTimesheetData = [
    {
      "title": "Test User",
      "date": "Fri, Dec 15",
      "total_duration": "8 Hours 0 Min",
      "clock_in_clock_out": "11:00 AM - 06:00PM"
    },
    {
      "title": "Test User",
      "date": "Fri, Dec 15",
      "total_duration": "8 Hours 0 Min",
      "clock_in_clock_out": "11:00 AM - 06:00PM"
    }
  ];

  bool isDataLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      isDataLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Timesheet'),
      body: isDataLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SmartRefresher(
              enablePullDown: true,
              enablePullUp: false,
              controller: _refreshController,
              onRefresh: () => {},
              // onLoading: _onLoading,
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: listTimesheetData.length,
                itemBuilder: (context, index) {
                  var item = listTimesheetData[index];
                  return Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Card(
                        color: cardBackGroundColor.withOpacity(0.5),
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: defaultColor,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)))),
                                  title: Text("TEST"),
                                  subtitle: Text("TEST"),
                                )
                              ],
                            ))),
                  );
                },
              ),
            ),
    );
  }
}
