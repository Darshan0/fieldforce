import 'package:fieldforce/screens/auth_screens/register_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpScreen extends StatefulWidget {
  String companyname;
  String username;
  int phonenummber;

  OtpScreen({this.username, this.phonenummber, this.companyname});

  @override
  OtpScreenState createState() {
    return OtpScreenState();
  }
}

class OtpScreenState extends State<OtpScreen> {
  final enterotp = new TextEditingController();
  String otpvalue;
  bool _otpvalidator = false;

  _showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

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
                    'Enter OTP',
                    style: TextStyle(
                        fontFamily: 'Gilroy-ExtraBold',
                        fontSize: ScreenUtil.getInstance().setSp(24.0),
                        color: Color(0xFF616775)),
                  ),
                ],
              ))),
      bottomNavigationBar: Container(
        height: ScreenUtil.getInstance().setHeight(50),
        width: double.infinity,
        child: RaisedButton(
            color: Colors.indigo,
            child: Text('Login', style: TextStyle(color: Colors.white)),
            onPressed: () {
              if (otpvalue != "") {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => PinScreen()));
              } else {
                setState(() {
                  _otpvalidator = true;
                });
              }
            }),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(20.0),
              left: ScreenUtil.getInstance().setWidth(16.0),
              right: ScreenUtil.getInstance().setWidth(16.0)),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      PinCodeTextField(
                        autofocus: true,
                        controller: enterotp,
                        highlight: true,
                        highlightColor: Colors.blue,
                        defaultBorderColor: Colors.black,
                        hasTextBorderColor: Colors.green,
                        maxLength: 4,
                        onDone: (text) {
                          setState(() {
                            otpvalue = text;
                          });
                        },
                        wrapAlignment: WrapAlignment.spaceAround,
                        pinBoxDecoration:
                            ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                        pinTextStyle: TextStyle(fontSize: 20.0),
                        pinTextAnimatedSwitcherTransition:
                            ProvidedPinBoxTextAnimation.scalingTransition,
                        pinTextAnimatedSwitcherDuration:
                            Duration(milliseconds: 300),
                        highlightAnimationBeginColor: Colors.black,
                        highlightAnimationEndColor: Colors.white12,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
