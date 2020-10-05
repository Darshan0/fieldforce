import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class JointWorkingScreen extends StatefulWidget {
  @override
  JointWorkScreenState createState() {
    return JointWorkScreenState();
  }
}

class JointWorkScreenState extends State<JointWorkingScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(allowFontScaling: true, height: 640, width: 360)
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
                    'Joint Working',
                    style: TextStyle(
                        fontFamily: 'Gilroy-ExtraBold',
                        fontSize: ScreenUtil.getInstance().setSp(20.0),
                        color: Color(0xFF616775)),
                  ),
                ],
              ))),
      body: Container(
          padding: EdgeInsets.only(
            top: ScreenUtil.getInstance().setHeight(10),
            left: ScreenUtil.getInstance().setWidth(10),
            right: ScreenUtil.getInstance().setWidth(10),
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RadioButtonGroup(
                    labels: <String>["ASM", "Distributor", "Others"],
                    onSelected: (String selected) => print(selected)),
                Container(
                  padding: EdgeInsets.only(
                      top: ScreenUtil.getInstance().setHeight(10),
                      left: ScreenUtil.getInstance().setWidth(10),
                      right: ScreenUtil.getInstance().setWidth(10),
                      bottom: ScreenUtil.getInstance().setHeight(10)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Enter Reason',
                            style: TextStyle(
                                fontFamily: 'Inter-Medium',
                                fontSize: ScreenUtil.getInstance().setSp(14.0),
                                color: Color(0xFF616775))),
                        SizedBox(
                            height: ScreenUtil.getInstance().setHeight(7.5)),
                        TextField(
                          controller: null,
                          maxLines: 10,
                          decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide: BorderSide(
                            color: Color(0xFF244290),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ))),
                        ),
                      ]),
                ),
              ],
            ),
          )),
      bottomNavigationBar: Container(
        height: ScreenUtil.getInstance().setHeight(50),
        width: double.infinity,
        child: RaisedButton(
            color: Colors.indigo,
            child: Text('SUBMIT', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
    ));
  }
}
