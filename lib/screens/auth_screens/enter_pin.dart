
import 'package:fieldforce/screens/auth_screens/register_user.dart';
import 'package:fieldforce/screens/homepage_screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EnterPinScreen extends StatefulWidget {
  @override
  EnterPinScreenState createState() {
    return EnterPinScreenState();
  }
}

class EnterPinScreenState extends State<EnterPinScreen> {
  String encryptedpin;

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
  void initState() {
    super.initState();
  }

  final enterPin = TextEditingController();
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
                        'Enter your pin',
                        style: TextStyle(
                            fontFamily: 'Gilroy-ExtraBold',
                            fontSize: ScreenUtil.getInstance().setSp(24.0),
                            color: Color(0xFF616775)),
                      ),
                    ]))),
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
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
              }),
        ),
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
                      controller: enterPin,
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Color(0xFF244290),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ))),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          (RegisterUser())),
                                  ModalRoute.withName('/'));
                            },
                            child: Container(
                              child: Text('Login as different user ?',
                                  style: TextStyle(
                                      fontFamily: 'Inter-Meduim',
                                      fontSize:
                                          ScreenUtil.getInstance().setSp(14.0),
                                      color: Colors.indigo)),
                              color: Colors.transparent,
                            )))
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
