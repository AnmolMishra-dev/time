import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timeclockwizard/auth/login.dart';
import 'package:timeclockwizard/helper/constant.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // AnimationController _controller;
  // Animation<double> _animation;

  void handleTimeout() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new LoginPage()));
  }

  startTimeout() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, handleTimeout);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller = AnimationController(
    //   duration: const Duration(seconds: 3),
    //   vsync: this,
    // )..repeat(reverse: true);
    // _animation = CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.easeInOutQuad,
    // );
    startTimeout();
  }

  @override
  void dispose() {
    // _controller.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Splash"),
      // ),
      body: Container(
          height: height,
          width: width,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [defaultColor, defaultColor1],
          )),
          child: Center(
            child:
                // ScaleTransition(
                //   scale: _animation,
                // child:
                Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/white_logo.png',
                gaplessPlayback: true,
              ),
              // ),
            ),

            // new AnimatedBuilder(
            //   animation: _animation,

            //   builder: (BuildContext context, Widget child) {
            //     return new Image.asset(
            //       'assets/images/white_logo.png',
            //       gaplessPlayback: true,
            //     );
            //   },
            // ),
          )),
    );
  }
}
