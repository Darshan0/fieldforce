import 'package:fieldforce/config/app_constants.dart';
import 'package:fieldforce/screens/auth_screens/enter_pin.dart';
import 'package:fieldforce/screens/auth_screens/register_user.dart';
import 'package:fieldforce/screens/homepage_screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  SplashScreenstate createState() {
    return SplashScreenstate();
  }
}

class SplashScreenstate extends State<Splashscreen> {
  String route = "";

  @override
  initState() {
    super.initState();
    this.getLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/auth': (context) => RegisterUser(),
        '/home': (context) => HomePage(),
        '/enterpin': (context) => EnterPinScreen(),
      },
      home: Scaffold(
          body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: route,
        backgroundColor: Colors.white,
        loaderColor: Colors.indigo,
        loadingText: new Text(
          'Fieldforce',
          style: new TextStyle(fontFamily: 'Gilroy-ExtraBold', fontSize: 32.0),
        ),
      )),
    );
  }

  getLoginStatus() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      bool _checkValue =
          sharedPreferences.containsKey(ApplicationConstants.isFirstLogin);

      if (_checkValue) {
        bool isFirstLogin =
            sharedPreferences.getBool(ApplicationConstants.isFirstLogin);

        if (isFirstLogin) {
          setState(() {
            route = '/auth';
          });
        } else {
          bool _checkUserLoggedout = sharedPreferences
              .containsKey(ApplicationConstants.isUserLoggetOut);

          if (_checkUserLoggedout) {
            bool isloggedout =
                sharedPreferences.getBool(ApplicationConstants.isUserLoggetOut);

            if (isloggedout) {
              setState(() {
                route = '/enterpin';
              });
            } else {
              setState(() {
                route = '/home';
              });
            }
          } else {
            setState(() {
              route = '/auth';
            });
          }
        }
      } else {
        sharedPreferences.setBool(ApplicationConstants.isFirstLogin, true);
        setState(() {
          route = '/auth';
        });
      }
    } catch (e) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      } else {
        SystemNavigator.pop();
      }
    }
  }
}
