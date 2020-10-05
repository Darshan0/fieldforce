import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:fieldforce/screens/retailer_screens/retailer_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Retailers extends StatefulWidget{
  @override
  RetailersState createState() {
    return RetailersState();
  }
}




class RetailersState extends State<Retailers> {
  

  @override
  void initState(){    
    super.initState();
  }


   Widget getRetailers(BuildContext context , int position){
    
    ScreenUtil.instance = ScreenUtil(height: 640.0 , width: 360.0 , allowFontScaling: true)..init(context);
    return GestureDetector( 
      
      onTap:(){ 
        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => RetailerDetails()));
      },
      child:Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          
          width:  double.infinity,
          child: Card(
            
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setHeight(16.0),
                bottom: ScreenUtil.getInstance().setHeight(16.0),
                left: ScreenUtil.getInstance().setWidth(12.0),
                right: ScreenUtil.getInstance().setWidth(20.0)
              ),
              child: Column(
                
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Sri Lakshmi Narayana Stores", style: TextStyle(fontFamily: 'Inter-SemiBold', fontSize: ScreenUtil.getInstance().setSp(16.0),color:  Color(0xFF23252A))),
                          ],
                        ),
                  ),
                  
                  Container(
                    
                    padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(10.0)),
                    child: Row(
                      
                      children: <Widget>[
                        Text('13th Cross Rd, New Thippasandra Post,Cauveri Colony\nGM Palya,C V Raman Nagar, Bengaluru, Karnataka 560075',style:TextStyle(fontFamily: 'Inter-Regular' , fontSize: ScreenUtil.getInstance().setSp(10.0) , color: Color(0xFF3C414D))),
                      ],
                    )
                  ),
                  
                  Divider(height: ScreenUtil.getInstance().setHeight(2.0)),
                  
                  Container(
                     margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(14.0)),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Container(
                           height: ScreenUtil.getInstance().setHeight(20.0),
                           width: ScreenUtil.getInstance().setWidth(70.0),
                           decoration: BoxDecoration(
                             color: Color(0xFF244290),
                             borderRadius: BorderRadius.circular(2.0)
                           ),
                           child:Center(
                              child: Text('NOT VISITED', style: TextStyle(color: Colors.white , fontFamily: 'Inter-Bold' , fontSize: ScreenUtil.getInstance().setSp(10.0)),),
                          )
                         ),
                         Container(
                           height: ScreenUtil.getInstance().setHeight(20.0),
                           width: ScreenUtil.getInstance().setWidth(70.0),
                           decoration: BoxDecoration(
                             color: Color(0xFF244290),
                             borderRadius: BorderRadius.circular(2.0)
                           ),
                           child:Center(
                              child: Text('AAA CLASS', style: TextStyle(color: Colors.white , fontFamily: 'Inter-Bold' , fontSize: ScreenUtil.getInstance().setSp(10.0)),),
                          )
                         ),
                       ],
                     ),
                  ),
                ],
              ),
            )
          ),
        ),
      ],
    )
   );
  }
  
  @override
  Widget build(BuildContext context) {
    
    ScreenUtil.instance = ScreenUtil(height: 640.0 , width: 360.0 , allowFontScaling:true)..init(context);
    return SingleChildScrollView(

      child:  Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(10),
              left: ScreenUtil.getInstance().setWidth(10),
              right:  ScreenUtil.getInstance().setWidth(10),
            ),
            child: Card(
              child: Center(
                child: Padding(
                  padding : EdgeInsets.only(
                    left: ScreenUtil.getInstance().setWidth(10),
                    right:  ScreenUtil.getInstance().setWidth(10),
                  ),
                  child: Row(
                  children: <Widget>[
                    Icon(Icons.search , color : Colors.grey),
                    SizedBox(width: 10),
                    Text('Search')
                  ],
                ),
               )
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(10),
              left: ScreenUtil.getInstance().setWidth(10),
              right:  ScreenUtil.getInstance().setWidth(10),
            ),
            width: double.infinity,
            child:ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
              return getRetailers(context, index);
              }
           ),
         ),
        ],
      )  
    );  
  }
}