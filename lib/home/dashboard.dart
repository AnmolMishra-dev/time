import 'package:flutter/material.dart';
import 'package:timeclockwizard/helper/constant.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
        // ),
        body: Stack(
      children: [
        Container(
            height: screenHeight / 3,
            child: Row(
              children: [],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [defaultColor, defaultColor1],
                ))),
        new Container(
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.only(top: (screenHeight / 3) - 80),
            child: ListView(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 0, right: 20, left: 20),
                    child: cardWidget("Total Check-In & Out Time", "160:02 / ",
                        "180:00", "Hours")),
                Padding(
                    padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                    child:
                        cardWidget("Total Break Time", "160:00", "", "Hours")),
                Padding(
                    padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: cardWidget("Total Absences", "1.5", "", "Days")),
                Padding(
                    padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: Padding(
                                padding: EdgeInsets.only(top: 10, right: 10),
                                child: squareContainer(
                                    Colors.green, "New Messages", "12"))),
                        Expanded(
                            flex: 5,
                            child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: squareContainer(HexColor("#AC830F"),
                                    "Pending Request", "56")))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: Padding(
                                padding: EdgeInsets.only(top: 10, right: 10),
                                child: squareContainer(HexColor("#31076E"),
                                    "Event in Stats", "15"))),
                        Expanded(
                            flex: 5,
                            child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: squareContainer(
                                    HexColor("#4BA3FB"), "New Task", "21")))
                      ],
                    )),
                SizedBox(height: 50)
              ],
            ))
      ],
    ));
  }
}

Widget squareContainer(Color color, String title, String subTitle) {
  return Container(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 15, right: 20, left: 20),
              child: Text(
                subTitle,
                style: TextStyle(fontSize: 35, color: color),
              )),
          Padding(
              padding: EdgeInsets.only(top: 15, right: 20, left: 20),
              child: Text(
                title,
                style:
                    TextStyle(fontSize: 22, color: color, letterSpacing: 0.5),
              )),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: color.withAlpha(20)));
}

Widget cardWidget(title, subtitle, subtitle1, subtitle2) {
  return Card(
    child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Image.asset(
                    clockImage,
                    // height: 150,
                    // width: 150,
                  ),
                )),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Text(
                            title,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: defaultColor1),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: RichText(
                            text: TextSpan(
                              text: subtitle,
                              style: TextStyle(color: textColor1, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                    text: subtitle1,
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            subtitle2,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                // fontSize: 18,
                                color: Colors.grey),
                          )),
                    ],
                  ),
                ))
          ],
        )),
  );
}
