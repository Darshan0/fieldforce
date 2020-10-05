import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class ActivityScreen extends StatefulWidget{
  @override
  ActivityScreenState createState() {
    return ActivityScreenState();
  }


}

class ActivityScreenState extends State<ActivityScreen>{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true , height: 640 , width: 360)..init(context);
    return SafeArea(
      child: Scaffold(
        body:Container(
            padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(10),
              left: ScreenUtil.getInstance().setWidth(10),
              right:  ScreenUtil.getInstance().setWidth(10),
            ),
            width: double.infinity,
            child: SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                     padding: EdgeInsets.only(
                       top: ScreenUtil.getInstance().setHeight(10),
                       left: ScreenUtil.getInstance().setWidth(10),
                      right:  ScreenUtil.getInstance().setWidth(10),
                      bottom: ScreenUtil.getInstance().setHeight(10)
                    ),
                    child: Text('Choose Activity', style: TextStyle(fontFamily: 'Gilroy-ExtraBold', fontSize: ScreenUtil.getInstance().setSp(20.0) , color:Color(0xFF616775)),),
                  ),

                  RadioButtonGroup(
                    labels: <String>[
                      "Depot Visit",
                      "Head Office Visit",
                      "Gate Meeting",
                      "Distributor Visit",
                      "Others"
                    ],
                    onSelected: (String selected) => print(selected)
                  ),
                  
                  Container(
                    padding: EdgeInsets.only(
                       top: ScreenUtil.getInstance().setHeight(10),
                       left: ScreenUtil.getInstance().setWidth(10),
                      right:  ScreenUtil.getInstance().setWidth(10),
                      bottom: ScreenUtil.getInstance().setHeight(10)
                    ),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Enter Reason',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                        controller: null,
                        maxLines: 10,
                        decoration: new InputDecoration(
                          border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))
                        ),
                        ),
                      ]
                  ),
                  ),
                ],
              ) ,
            )  
         ),
      )
    );
  }

}