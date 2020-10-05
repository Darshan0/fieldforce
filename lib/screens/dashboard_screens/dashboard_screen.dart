import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  final List<String> _dropdownValues = ["Current Month", "Last Month"];

  String _currentlySelected = "Current Month";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(allowFontScaling: true, height: 640, width: 360)
          ..init(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.only(
          top: ScreenUtil.getInstance().setHeight(16.0),
          left: ScreenUtil.getInstance().setWidth(16.0),
          right: ScreenUtil.getInstance().setWidth(16.0),
          bottom: ScreenUtil.getInstance().setHeight(16.0)),
      color: Color.fromRGBO(246, 246, 247, 1.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: ScreenUtil.getInstance().setHeight(182),
              width: double.infinity,
              child: Card(
                elevation: 10.0,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil.getInstance().setHeight(10),
                      bottom: ScreenUtil.getInstance().setHeight(10),
                      left: ScreenUtil.getInstance().setWidth(8),
                      right: ScreenUtil.getInstance().setWidth(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          child: Center(
                        child: CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 13.0,
                          animation: true,
                          percent: 0.7,
                          center: new Text(
                            "70.0%",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          footer: new Text(
                            "Sales this month",
                            style: new TextStyle(
                                fontFamily: 'Inter-Regular',
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.green,
                          backgroundColor: Colors.red,
                        ),
                      )),
                      Container(
                          padding: EdgeInsets.only(
                              left: ScreenUtil.getInstance().setWidth(25)),
                          child: Center(
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  DropdownButton(
                                    icon: Icon(Icons.keyboard_arrow_down,
                                        color: Colors.grey,
                                        size: ScreenUtil.getInstance()
                                            .setWidth(15.0)),
                                    underline: SizedBox(),
                                    items: _dropdownValues
                                        .map((value) => DropdownMenuItem(
                                              child: Text(value,
                                                  style: TextStyle(
                                                      fontSize: ScreenUtil
                                                              .getInstance()
                                                          .setSp(12.0),
                                                      fontFamily:
                                                          'Gilroy-ExtraBold',
                                                      color: Colors.black)),
                                              value: value,
                                            ))
                                        .toList(),
                                    onChanged: (String newvalue) {
                                      setState(() {
                                        _currentlySelected = newvalue;
                                      });
                                    },
                                    value: _currentlySelected,
                                  ),
                                ],
                              )),
                              Container(
                                  child: Row(
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Text('Total',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('(Std.Unit)',
                                        style: TextStyle(
                                            fontFamily: 'Inter-Regular',
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(7))),
                                    Text('50')
                                  ]),
                                  SizedBox(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(15)),
                                  Column(children: <Widget>[
                                    Text('Achieved',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('(Std.Unit)',
                                        style: TextStyle(
                                            fontFamily: 'Inter-Regular',
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(7))),
                                    Text('50')
                                  ]),
                                ],
                              )),
                              SizedBox(
                                  height:
                                      ScreenUtil.getInstance().setHeight(15)),
                              Container(
                                  child: Row(
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Text('CRR',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('(Std.Unit/Day)',
                                        style: TextStyle(
                                            fontFamily: 'Inter-Regular',
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(7))),
                                    Text('50')
                                  ]),
                                  SizedBox(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(10)),
                                  Column(children: <Widget>[
                                    Text('RRR',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('(Std.Unit/Day)',
                                        style: TextStyle(
                                            fontFamily: 'Inter-Regular',
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(8))),
                                    Text('50')
                                  ]),
                                ],
                              )),
                            ],
                          )))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(10)),
              height: ScreenUtil.getInstance().setHeight(182),
              width: double.infinity,
              child: Card(
                elevation: 10.0,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil.getInstance().setHeight(10),
                      bottom: ScreenUtil.getInstance().setHeight(10),
                      left: ScreenUtil.getInstance().setWidth(8),
                      right: ScreenUtil.getInstance().setWidth(8)),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(
                            left: ScreenUtil.getInstance().setWidth(25),
                            right: ScreenUtil.getInstance().setWidth(25),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Daily Summary',
                                    style: TextStyle(
                                        fontFamily: 'Gilroy-ExtraBold',
                                        fontSize: ScreenUtil.getInstance()
                                            .setSp(20.0),
                                        color: Color(0xFF616775)),
                                  ),
                                ],
                              )),
                              SizedBox(
                                  height:
                                      ScreenUtil.getInstance().setHeight(20)),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Text('Total Outlet Universe',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                  ]),
                                  SizedBox(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(15)),
                                  Column(children: <Widget>[
                                    Text('10',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                  ]),
                                ],
                              )),
                              SizedBox(
                                  height:
                                      ScreenUtil.getInstance().setHeight(20)),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Text('Call Made',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('50')
                                  ]),
                                  SizedBox(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(15)),
                                  Column(children: <Widget>[
                                    Text('Call Scheduled',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('50')
                                  ]),
                                ],
                              )),
                              SizedBox(
                                  height:
                                      ScreenUtil.getInstance().setHeight(15)),
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(children: <Widget>[
                                    Text('Productive',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('50')
                                  ]),
                                  SizedBox(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(10)),
                                  Column(children: <Widget>[
                                    Text('Total Call',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Gilroy-ExtraBold')),
                                    Text('50')
                                  ]),
                                ],
                              )),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil.getInstance().setHeight(10),
                    left: ScreenUtil.getInstance().setWidth(5)),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {},
                            child: Column(children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: ScreenUtil.getInstance().setWidth(150),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  child: Card(
                                    elevation: 10.0,
                                    child: Icon(Icons.supervisor_account,
                                        color: Color(0xFF294278)),
                                  )),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(6),
                              ),
                              Text('SKU Wise Sales',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gilroy-ExtraBold'))
                            ])),
                        SizedBox(width: ScreenUtil.getInstance().setWidth(10)),
                        GestureDetector(
                            onTap: () {},
                            child: Column(children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: ScreenUtil.getInstance().setWidth(150),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  child: Card(
                                    elevation: 10.0,
                                    child: Icon(Icons.timer_off,
                                        color: Color(0xFF294278)),
                                  )),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(6),
                              ),
                              Text('Sales Summary',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gilroy-ExtraBold'))
                            ])),
                      ]),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {},
                            child: Column(children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: ScreenUtil.getInstance().setWidth(150),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  child: Card(
                                      elevation: 10.0,
                                      child: Icon(Icons.assignment_turned_in,
                                          color: Color(0xFF294278)))),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(6),
                              ),
                              Text('Outlet Wise Sales',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gilroy-ExtraBold'))
                            ])),
                        SizedBox(width: ScreenUtil.getInstance().setWidth(10)),
                        GestureDetector(
                            onTap: () {},
                            child: Column(children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: ScreenUtil.getInstance().setWidth(150),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  child: Card(
                                      elevation: 10.0,
                                      child: Icon(Icons.work,
                                          color: Color(0xFF294278)))),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(6),
                              ),
                              Text('Primary Orders',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gilroy-ExtraBold'))
                            ]))
                      ]),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {},
                            child: Column(children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: ScreenUtil.getInstance().setWidth(150),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  child: Card(
                                      elevation: 10.0,
                                      child: Icon(Icons.assignment_turned_in,
                                          color: Color(0xFF294278)))),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(6),
                              ),
                              Text('Daily DSR',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gilroy-ExtraBold'))
                            ])),
                        SizedBox(width: ScreenUtil.getInstance().setWidth(10)),
                        GestureDetector(
                            onTap: () {},
                            child: Column(children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: ScreenUtil.getInstance().setWidth(150),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  child: Card(
                                      elevation: 10.0,
                                      child: Icon(Icons.work,
                                          color: Color(0xFF294278)))),
                              SizedBox(
                                height: ScreenUtil.getInstance().setHeight(6),
                              ),
                              Text('Monthly DSR',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gilroy-ExtraBold'))
                            ]))
                      ])
                ]))
          ],
        ),
      ),
    )));
  }
}
