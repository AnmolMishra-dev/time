import 'package:flutter/material.dart';
import 'package:timeclockwizard/helper/constant.dart';

class Payroll extends StatefulWidget {
  Payroll({Key key}) : super(key: key);

  @override
  _PayrollState createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
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
    return Scaffold(
      appBar: customAppBar('Payroll'),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
