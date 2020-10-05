import 'package:fieldforce/screens/retailer_screens/retailer_stock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RetailerDetails extends StatefulWidget{
  @override
  RetailerDetailsState createState() {
    return RetailerDetailsState();
  }


}

class RetailerDetailsState extends State<RetailerDetails>{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true , height: 640 , width: 360)..init(context);
    return SafeArea(
      child:  Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width/1.5,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.network('https://www.tricity.in/wp-content/uploads/2017/02/GOYAL-DEPARTMENTAL-STORE.jpg', fit: BoxFit.fill),
                    ),
                    Container(          
                      padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setHeight(10),
                        left: ScreenUtil.getInstance().setWidth(10),
                        right: ScreenUtil.getInstance().setWidth(20)
                      ),            
                      color: Color.fromRGBO(00, 00, 00, 0.5),
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(Icons.arrow_back , size: ScreenUtil.getInstance().setHeight(24), color: Colors.white),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(Icons.multiline_chart ,size: ScreenUtil.getInstance().setHeight(30), color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                       GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(Icons.replay_10 , size: ScreenUtil.getInstance().setHeight(30) , color: Colors.white),
                                      )
                                    ],
                                  )
                                ),
                              ],
                            )
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width/2.5
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text('SRI LAKSHMI NARAYANA STORES', style: TextStyle(fontFamily: 'Gilroy-ExtraBold' , color: Colors.white , fontSize: ScreenUtil.getInstance().setSp(24)),),
                              ) 
                            ),
                          )
                        ],
                      )

                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                     Container(
                       width: double.infinity,
                       color: Color(0xFFe6e6e6),
                       padding: EdgeInsets.only(
                          top: ScreenUtil.getInstance().setHeight(10),
                          bottom: ScreenUtil.getInstance().setHeight(10),
                          left: ScreenUtil.getInstance().setWidth(10)
                      ),
                      child: Text("MY SALES HISTORY" , style: TextStyle(fontFamily: "Inter-Meduim", fontSize: ScreenUtil.getInstance().setSp(16) , fontWeight: FontWeight.bold , color: Colors.black54),),
                     ),
                     Container(
                       width: double.infinity,
                       padding: EdgeInsets.only(
                         top: ScreenUtil.getInstance().setHeight(5),
                         bottom: ScreenUtil.getInstance().setHeight(5),
                         left : ScreenUtil.getInstance().setWidth(5),
                         right: ScreenUtil.getInstance().setWidth(5)
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Total Order value" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Total Order Quantity" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(15),
                            child: Divider(
                              height: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Avg. Order value" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Avg. Order Qty" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Lines Cut per PC" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(15),
                            child: Divider(
                              height: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Last Visit" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Last Productive call" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                            ],
                          )
                         ],
                       ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(10),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                     Container(
                       width: double.infinity,
                       color: Color(0xFFe6e6e6),
                       padding: EdgeInsets.only(
                          top: ScreenUtil.getInstance().setHeight(10),
                          bottom: ScreenUtil.getInstance().setHeight(10),
                          left: ScreenUtil.getInstance().setWidth(10)
                      ),
                      child: Text("OUTLET SALES HISTORY" , style: TextStyle(fontFamily: "Inter-Meduim", fontSize: ScreenUtil.getInstance().setSp(16) , fontWeight: FontWeight.bold , color: Colors.black54),),
                     ),
                     Container(
                       width: double.infinity,
                       padding: EdgeInsets.only(
                         top: ScreenUtil.getInstance().setHeight(5),
                         bottom: ScreenUtil.getInstance().setHeight(5),
                         left : ScreenUtil.getInstance().setWidth(5),
                         right: ScreenUtil.getInstance().setWidth(5)
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Total Order value" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Total Order Quantity" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(15),
                            child: Divider(
                              height: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Avg. Order value" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Avg. Order Qty" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Lines Cut per PC" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13),color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(15),
                            child: Divider(
                              height: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Last Visit" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("Last Productive call" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(13), color: Color(0xFF535967)  ),),
                                  SizedBox(height: ScreenUtil.getInstance().setHeight(3),),
                                  Text("0" , style: TextStyle(fontFamily: "Inter-Regular" , fontSize: ScreenUtil.getInstance().setSp(16), fontWeight: FontWeight.bold , color: Color(0xFF535967)  ),)
                                ],
                              ),
                            ],
                          )
                         ],
                       ),
                    )
                  ],
                ),
              ),
            ]
          )
        ),
        bottomNavigationBar:  Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(50),
        child: RaisedButton(
          child: Text('Begin Visit', style: TextStyle(fontFamily: 'Inter-Meduim', fontSize: ScreenUtil.getInstance().setSp(14.0), color: Colors.white)),
          color: Color(0xFF244290), onPressed: () async {
            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext buildcontext) => RetailerStock()));
          }
        ),
      ),
    )
    );
  }
} 