import 'package:fieldforce/screens/homepage_screen/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_item.dart';

class RetailerOrders extends StatefulWidget{
  @override
  RetailerOrdersState createState() {
    return RetailerOrdersState();
  }


}


class RetailerOrdersState extends State<RetailerOrders>{
  
  
  Widget getProducts(BuildContext context , int position){
    
    ScreenUtil.instance = ScreenUtil(height: 640.0 , width: 360.0 , allowFontScaling: true)..init(context);
    return GestureDetector( 
      
      onTap:(){ 
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
                            Text("1 Lit Pp Buffalo 1000ML", style: TextStyle(fontFamily: 'Inter-SemiBold', fontSize: ScreenUtil.getInstance().setSp(16.0),color:  Color(0xFF23252A))),
                          ],
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                                    
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
                              child: Text('Dairy Product', style: TextStyle(color: Colors.white , fontFamily: 'Inter-Bold' , fontSize: ScreenUtil.getInstance().setSp(10.0)),),
                          )
                         ),
                           Container(
                           height: ScreenUtil.getInstance().setHeight(20.0),
                           width: ScreenUtil.getInstance().setWidth(70.0),
                           child:TextField(
                             keyboardType: TextInputType.number,
                             maxLines: 1,
                             decoration: InputDecoration(
                               hintText: "Pcs"
                             ),
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
  
  
  orderSummary(BuildContext context){
      
      showModalBottomSheet(
        
        context: context,
        enableDrag: true,
        isScrollControlled: true,
        elevation: 10,
        
        builder:(BuildContext context) {
          
          return Container(
            
            height: ScreenUtil.getInstance().setHeight(800),
            padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(24.0),
              right: ScreenUtil.getInstance().setWidth(20.0),
              left: ScreenUtil.getInstance().setWidth(20.0),
              bottom: ScreenUtil.getInstance().setHeight(2.0)
              
            ),
            
            child: SingleChildScrollView(
              
              
              child:Column(
              
               mainAxisSize: MainAxisSize.max,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text('Order Summary', textScaleFactor: 1.0 , style: TextStyle(fontFamily: 'Gilroy-ExtraBold' , fontSize: ScreenUtil.getInstance().setSp(24.0) , color: Color(0xFF616775)),),
                     IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pop();},)
                   ],
                 ),
              ],
            ),
           )
          );
        },
      );
    }
  
  
  
  
  
  
  
  @override
  Widget build(BuildContext context) {

    ScreenUtil.instance = ScreenUtil(allowFontScaling: true , height: 640 , width: 360)..init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFF616775),
          ),
          actionsIconTheme: IconThemeData(
            color: Color(0xFF616775),
          ),
          backgroundColor: Colors.white,
          title: Text('Retailer Orders', style: TextStyle(fontFamily: 'Gilroy-ExtraBold', fontSize: ScreenUtil.getInstance().setSp(20.0) , color:Color(0xFF616775)),),
          actions: [

            IconButton(icon: Icon(Icons.info_outline), onPressed: (){orderSummary(context);}),
            IconButton(icon: Icon(Icons.done), onPressed: (){ Navigator.push(context, new MaterialPageRoute(builder: (BuildContext buildcontext) => RetailerOrders()));}),
          ],
        ),
        body:Container(
            padding: EdgeInsets.only(
              top: ScreenUtil.getInstance().setHeight(10),
              left: ScreenUtil.getInstance().setWidth(10),
              right:  ScreenUtil.getInstance().setWidth(10),
            ),
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
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
          SizedBox(
            height: 10,
          ),
           SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CategoryItem(
                        title: "Dairy Products\nBulk Packs",
                        isActive: true,
                        press: () {},
                      ),
                      CategoryItem(
                        title: "Dairy Products\nLup Packs",
                        press: () {},
                      ),
                      CategoryItem(
                        title: "Dairy Products\nRegular Packs",
                         press: () {},
                      ),
                      CategoryItem(
                        title: "Masalas \nBox Masala",
                        press: () {},
                      ),
                      CategoryItem(
                        title: "Masalas \nBulk packs Masala",
                        press: () {},
                      ),
                      CategoryItem(
                        title: "Masalas \nCtdssr packs Masala",
                        press: () {},
                      ),
                      CategoryItem(
                        title: "Masalas \nSheets Masala 10rs",
                        press: () {},
                      ),
                      CategoryItem(
                        title: "Masalas \nSheets Masala 5rs",
                        press: () {},
                      ),
                    ],
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
              return getProducts(context, index);
              }
           ),
         ),
              ],
            ),

            ) 
         ),
      )
    );
  }
}