import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateRetailer extends StatefulWidget{
 
  @override
  CreateRetailerState createState() {
    return CreateRetailerState();
  }

}

class CreateRetailerState extends State<CreateRetailer>{
  
  



  
  
  final retailName = TextEditingController();
  final retailAddress = TextEditingController();
  final retailerName = TextEditingController();
  final retailerPhone = TextEditingController();
  final retailArea = TextEditingController();
  final retailType = TextEditingController();

  @override
  void initState(){
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
  
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true , height: 640.0 , width: 360.0 )..init(context);
        
    return SafeArea(
      
      child:Scaffold(
        
        appBar:PreferredSize(
          
          preferredSize:Size.fromHeight(ScreenUtil.getInstance().setHeight(70.0)),
          child: Container(
            
            color: Color(0xFFFBFCFD),
            padding: EdgeInsets.only(
              
              top: ScreenUtil.getInstance().setHeight(12.0),
              left: ScreenUtil.getInstance().setWidth(16.0),
              right: ScreenUtil.getInstance().setWidth(16.0)
              
            ),
            
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    
                    GestureDetector(
                      onTap: () {Navigator.of(context).pop();},
                      child:Icon(Icons.arrow_back) ,
                    ),
                  ],
                ),
                
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(8.0)),
                  child: Text('Create a new retailer', style: TextStyle(fontFamily: 'Gilroy-ExtraBold', fontSize: ScreenUtil.getInstance().setSp(24.0) , color: Color(0xFF616775))),
                
                )
              ],
            ),
          ),
        ),
        
        body: SingleChildScrollView(
          
          child: Container(
            padding: EdgeInsets.only(
              
              top: ScreenUtil.getInstance().setHeight(21.0),
              left: ScreenUtil.getInstance().setWidth(16.0),
              right: ScreenUtil.getInstance().setWidth(16.0)
            ),
            
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                
                Container(
                  
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Retailer Name',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                      controller: retailName,
                      decoration: InputDecoration(border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))),
                      )
                   ],
                 ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Retailer Address',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                        maxLines: 5,
                        controller: retailAddress,
                        decoration: InputDecoration(border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))),
                      )
                   ],
                 ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Contact Name',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                        controller: retailerName,
                        decoration: InputDecoration(border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))),
                      )
                   ],
                 ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Contact Phone',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                      controller: retailerPhone,
                      decoration: InputDecoration(border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))),
                      )
                   ],
                 ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Area Name',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                      controller: retailArea,
                      decoration: InputDecoration(border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))),
                      )
                   ],
                 ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(24.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text('Retailer Type',style: TextStyle(fontFamily: 'Inter-Medium',fontSize: ScreenUtil.getInstance().setSp(14.0),color: Color(0xFF616775))),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(7.5)),
                      TextField(
                      controller: retailType,
                      decoration: InputDecoration(border:new OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF244290),style: BorderStyle.solid,width: 1.0,))),
                      )
                   ],
                 ),
                ),
              ],
            )
          ),
        ),
      )
    );
  }     
}