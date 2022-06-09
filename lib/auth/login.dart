import 'package:flutter/material.dart';
import 'package:timeclockwizard/auth/forgotpassword.dart';
import 'package:timeclockwizard/helper/constant.dart';
import 'package:timeclockwizard/home/home.dart';
import 'package:timeclockwizard/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  gotoForgotPassword() {
    print('gotoForgotPassword');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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
                "Log In",
                style: TextStyle(fontSize: 30, color: defaultColor),
              )),
            ),
            SizedBox(height: 40),
            CustomTextFeild(
              hintText: "Sub domain",
              prefix: Icon(Icons.domain),
            ),
            CustomTextFeild(
              hintText: "Username/Email id",
              prefix: Icon(Icons.person),
            ),
            CustomTextFeild(
              hintText: "Password",
              isSecureTextField: true,
              prefix: Icon(Icons.lock),
              maxLines: 1,
            ),
            Padding(
                padding: EdgeInsets.only(top: 40),
                child: CustomButton(
                  title: "Login",
                  width: 200,
                  callBack: () {
                    pushAndReplace(context, Home());
                  },
                )),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: CustomButton(
                    title: "Forgot Password?",
                    backgroundColor: Colors.transparent,
                    textColor: Colors.black,
                    callBack: () => {pushTo(context, Routes.forgotpassword)})),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
