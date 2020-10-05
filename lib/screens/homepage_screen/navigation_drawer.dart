import 'package:fieldforce/screens/auth_screens/enter_pin.dart';
import 'package:fieldforce/screens/drawer_screens/change_beat_screen.dart';
import 'package:fieldforce/screens/drawer_screens/joint_working_screen.dart';
import 'package:fieldforce/screens/drawer_screens/leave_screen.dart';
import 'package:fieldforce/screens/drawer_screens/official_work_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          
          new UserAccountsDrawerHeader(
            accountName: new Text("Darshan" , style:  TextStyle(color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),), 
            accountEmail: new Text("darshanm806@gmail.com" , style:  TextStyle(color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black,
              child: new Text("D", style: TextStyle( color: Colors.white, fontFamily: 'Gilroy-ExtraBold'),),
            ),
            decoration: new BoxDecoration(
              color: Colors.white,
            ),
          ),

          new ListTile(
            title: new Text('Joint Working', style: TextStyle( color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            leading: Icon(Icons.supervisor_account,color: Color(0xFF294278),),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: () {
              
            },
          ),
          new ListTile(
            title: new Text('Offical Work', style: TextStyle( color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            leading: Icon(Icons.work,color: Color(0xFF294278),),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: () {
              
            },
          ),
          new ListTile(
            title: new Text('Other Activities', style: TextStyle( color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            leading: Icon(Icons.business_center,color: Color(0xFF294278),),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: () {
              
            },
          ),
          new Divider(),

          new ListTile(
            title: new Text('Leave/Weekly off', style: TextStyle( color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            leading: Icon(Icons.timer_off,color: Color(0xFF294278),),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: () {
              
            },
          ),
          new ListTile(
            title: new Text('Change Beat', style: TextStyle( color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            leading: Icon(Icons.assignment_turned_in,color: Color(0xFF294278),),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: () {
              
            },
          ),
          new Divider(),

          new ListTile(
            title: new Text('End Day', style: TextStyle( color: Colors.black, fontFamily: 'Gilroy-ExtraBold'),),
            leading: Icon(Icons.cancel, color: Colors.red),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: () {
              
            },
          ),
        ],
      )
    );
  }
}
