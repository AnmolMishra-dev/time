import 'package:flutter/material.dart';
import 'package:timeclockwizard/helper/constant.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      // ),
      bottomNavigationBar: copyRight(),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Center(child: Image.asset("assets/images/blue_logo.png")),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 30, color: defaultColor),
              )),
            ),
            SizedBox(height: 40),
            CustomTextFeild(
              hintText: "Username/Email id",
              prefix: Icon(Icons.person),
            ),
            Padding(
                padding: EdgeInsets.only(top: 40),
                child: CustomButton(
                  title: "Reset",
                  width: 200,
                  callBack: () {},
                )),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: CustomButton(
                  title: "Back to Login",
                  backgroundColor: Colors.transparent,
                  textColor: Colors.black,
                  callBack: () {
                    popToBack(context);
                  },
                )),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
