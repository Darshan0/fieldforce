import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class ChangeBeatScreen extends StatefulWidget {
  @override
  ChangeBeatScreenState createState() {
    return ChangeBeatScreenState();
  }
}

class ChangeBeatScreenState extends State<ChangeBeatScreen> {
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
                    'Change Beat',
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
                RadioButtonGroup(labels: <String>[
                  "Banglore",
                  "Delhi",
                  "Mysore",
                  "Tumkur",
                  "Coorg"
                ], onSelected: (String selected) => print(selected)),
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
