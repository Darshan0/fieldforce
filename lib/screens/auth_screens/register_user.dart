import 'dart:core';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:fieldforce/screens/auth_screens/enter_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterUser extends StatefulWidget {
  @override
  RegisterUserState createState() {
    return RegisterUserState();
  }
}

class RegisterUserState extends State<RegisterUser> {
  
  String countryCode = "91";

  final emailId = new TextEditingController();
  final phonenumber = new TextEditingController();
  final username = new TextEditingController();
  final companyname = new TextEditingController();

  bool _usernamevalidator = false;
  bool _emailvalidator = false;
  bool _phonenumbervalidator = false;
  bool _companynamevalidator = false;

  @override
  void initState() {
    super.initState();
  }

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

  _onCountryChange(CountryCode code) {
    setState(() {
      countryCode = code.toString();
    });
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
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setHeight(18.0),
                  bottom: ScreenUtil.getInstance().setHeight(16.0),
                  right: ScreenUtil.getInstance().setWidth(20.0)),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Login User',
                    style: TextStyle(
                        fontFamily: 'Gilroy-ExtraBold',
                        fontSize: ScreenUtil.getInstance().setSp(20.0),
                        color: Color(0xFF616775)),
                  ),
                ],
              ))),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(50),
        child: RaisedButton(
          color: Color(0xFF244290),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => OtpScreen(
                          companyname: companyname.text,
                          username: username.text,
                          phonenummber: int.parse(phonenumber.text),
                        )));
          },
          child: Text(
            'Proceed',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
          height: double.infinity,
          color: Colors.white38,
          padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(21.0),
              left: ScreenUtil.getInstance().setWidth(16.0),
              right: ScreenUtil.getInstance().setWidth(16.0)),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  bottom: ScreenUtil.getInstance().setHeight(24.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Organization',
                      style: TextStyle(
                          fontFamily: 'Inter-Medium',
                          fontSize: ScreenUtil.getInstance().setSp(12.0),
                          color: Color(0xFF616775))),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                  TextField(
                    controller: companyname,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xFF244290),
                          style: BorderStyle.solid,
                          width: 1.0,
                        )),
                        errorBorder: _companynamevalidator
                            ? OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.red,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ))
                            : null,
                        errorText: _companynamevalidator
                            ? "Please enter the organization name"
                            : null),
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
                  Text('Username',
                      style: TextStyle(
                          fontFamily: 'Inter-Medium',
                          fontSize: ScreenUtil.getInstance().setSp(12.0),
                          color: Color(0xFF616775))),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                  TextField(
                    controller: username,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xFF244290),
                          style: BorderStyle.solid,
                          width: 1.0,
                        )),
                        errorBorder: _usernamevalidator
                            ? OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.red,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ))
                            : null,
                        errorText: _usernamevalidator
                            ? "Please enter the username"
                            : null),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: ScreenUtil.getInstance().setHeight(3.0),
                    bottom: ScreenUtil.getInstance().setHeight(3.0),
                    left: ScreenUtil.getInstance().setWidth(3.0),
                    right: ScreenUtil.getInstance().setWidth(3.0)),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.only(
                    bottom: ScreenUtil.getInstance().setHeight(24.0)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Center(
                          child: CountryCodePicker(
                        initialSelection: 'IN',
                        favorite: ['+91', 'IN'],
                        onChanged: (code) => _onCountryChange(code),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil.getInstance().setWidth(30)),
                      width: ScreenUtil.getInstance().setWidth(200),
                      child: TextField(
                        controller: phonenumber,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                )),
          ]))),
    ));
  }
}
