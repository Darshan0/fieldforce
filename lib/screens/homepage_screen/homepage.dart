import 'package:fieldforce/screens/dashboard_screens/dashboard_screen.dart';
import 'package:fieldforce/screens/retailer_screens/create_retailer.dart';
import 'package:fieldforce/screens/retailer_screens/retailer_list.dart';
import 'package:fieldforce/screens/timeline_screens/timeline_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'navigation_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int index = 0;

  List<Widget> _childern;

  SharedPreferences prefs;

  @override
  void initState() {
    _childern = [

      new DashboardScreen(),
      new Retailers(),
      new Retailers(),
      new TimelinePage(
        title: "Activity Tracker",
      )
    ];

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(allowFontScaling: true, width: 360.0, height: 640.0)
          ..init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF244290),
              title: Text(
                'Fieldforce',
                style: TextStyle(
                    fontFamily: 'Gilroy-ExtraBold',
                    fontSize: ScreenUtil.getInstance().setSp(20.0),
                    color: Colors.white),
              ),
            ),
            drawer: NavigationDrawer(),
            body: _childern[index],
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: SizedBox(
              width: ScreenUtil.getInstance().setHeight(40.0),
              height: ScreenUtil.getInstance().setHeight(40.0),
              child: FloatingActionButton(
                backgroundColor: Color(0xFF244290),
                child: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => CreateRetailer()));
                },
              ),
            ),
            bottomNavigationBar: new BottomNavigationBar(
                currentIndex: index,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: Colors.blue,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.show_chart,
                        color: Colors.indigo,
                      ),
                      icon: Icon(
                        Icons.show_chart,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Dashboard',
                        style: TextStyle(color: Colors.black38),
                      )),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.business,
                        color: Colors.indigo,
                      ),
                      icon: Icon(
                        Icons.business,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Retailers',
                        style: TextStyle(color: Colors.black38),
                      )),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.phone_in_talk,
                        color: Colors.indigo,
                      ),
                      icon: Icon(
                        Icons.phone_in_talk,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Telephonic',
                        style: TextStyle(color: Colors.black38),
                      )),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.playlist_add_check,
                        color: Colors.indigo,
                      ),
                      icon: Icon(
                        Icons.playlist_add_check,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Timeline',
                        style: TextStyle(color: Colors.black38),
                      )),
                ],
                onTap: (int index) async {
                  setState(() {
                    this.index = index;
                  });
                })),
      ),
    );
  }
}
