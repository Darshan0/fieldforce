

import 'package:fieldforce/screens/homepage_screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'dart:async';

class PinScreen extends StatefulWidget {
  String username;
  int phoneNumber;
  String companyname;

  PinScreen({this.username, this.phoneNumber, this.companyname});

  @override
  PinScreenState createState() {
    return PinScreenState();
  }
}

class PinScreenState extends State<PinScreen> {
  @override
  Future initState() {
    super.initState();
  }

  _showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  _catchOTPValidationException(int statuscode) {
    switch (statuscode) {
      case 456:
        _showToast(
            "Error code 456 while generating pin, Email us at contactus@tagbox.in");
        break;

      case 457:
        _showToast(
            "Error code 457 while generating pin, Email us at contactus@tagbox.in");
        break;

      case 458:
        _showToast(
            "Error Code 458 while generating pin, Device doesn't exist in the Database");
        break;

      default:
        break;
    }
  }

  final enterPin = TextEditingController();
  final confirmPin = TextEditingController();
  bool invalidpin = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(allowFontScaling: true, width: 360.0, height: 640.0)
          ..init(context);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(ScreenUtil.getInstance().setHeight(61.0)),
            child: Container(
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(17.0),
                  right: ScreenUtil.getInstance().setWidth(17.0),
                  top: ScreenUtil.getInstance().setHeight(18.0),
                  bottom: ScreenUtil.getInstance().setHeight(16.0),
                ),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Create your pin',
                      style: TextStyle(
                          fontFamily: 'Gilroy-ExtraBold',
                          fontSize: ScreenUtil.getInstance().setSp(24.0),
                          color: Color(0xFF616775)),
                    ),
                  ],
                ))),
        body: Container(
            padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setHeight(30.0),
                left: ScreenUtil.getInstance().setWidth(16.0),
                right: ScreenUtil.getInstance().setWidth(16.0)),
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    bottom: ScreenUtil.getInstance().setHeight(24.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Enter Pin',
                        style: TextStyle(
                            fontFamily: 'Inter-Medium',
                            fontSize: ScreenUtil.getInstance().setSp(14.0),
                            color: Color(0xFF616775))),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                    TextField(
                      maxLength: 6,
                      controller: enterPin,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Color(0xFF244290),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ))),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: ScreenUtil.getInstance().setHeight(24.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Confirm Pin',
                        style: TextStyle(
                            fontFamily: 'Inter-Medium',
                            fontSize: ScreenUtil.getInstance().setSp(14.0),
                            color: Color(0xFF616775))),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                    TextField(
                      maxLength: 6,
                      controller: confirmPin,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Color(0xFF244290),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ))),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.info, color: Colors.grey),
                    SizedBox(
                      width: ScreenUtil.getInstance().setWidth(8.0),
                    ),
                    Text('Enter a 6 digit pin',
                        style: TextStyle(
                            fontFamily: 'Inter-Medium',
                            fontSize: ScreenUtil.getInstance().setSp(14.0),
                            color: Color(0xFF616775))),
                  ],
                ),
              )
            ])),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: ScreenUtil.getInstance().setHeight(50),
          child: RaisedButton(
              child: Text('Start Day',
                  style: TextStyle(
                      fontFamily: 'Inter-Meduim',
                      fontSize: ScreenUtil.getInstance().setSp(14.0),
                      color: Colors.white)),
              color: Color(0xFF244290),
              onPressed: () async {
                if (enterPin.text != "" || confirmPin.text != "") {
                  if (enterPin.text.length == 6) {
                    if (enterPin.text == confirmPin.text) {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    } else {
                      confirmPin.clear();
                      _showToast("Pin doesnt match");
                    }
                  } else {
                    _showToast("Pin doesn't contain 6 digits");
                  }
                } else {
                  _showToast("Pin is blank");
                }
              }),
        ),
      ),
    );
  }
}
