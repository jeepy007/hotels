import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hotels/main.dart';
import 'package:google_fonts/google_fonts.dart';




const d_green = Color(0xFF54D3C2);


 void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget  {
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
 }


 class HomePage extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: MyAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
           HotelSection(),
          ],
        ),
      )
    );
  }
 }

 class MyAppBar extends StatelessWidget implements PreferredSizeWidget { 
  Size get preferredSize => new Size.fromHeight(50);
  @override 
  Widget build(BuildContext context)  { 
    return AppBar(
      leading: IconButton(onPressed: null,
      icon:Icon(Icons.arrow_back,
      color: Colors.grey[800],
      size: 20,)
      ),
      title: Text('Explore', style: GoogleFonts.nunito(
        color: Colors.black, 
        fontSize: 25,
        fontWeight: FontWeight.w800,
      ),
      ),
      centerTitle: true,
      actions: [
         IconButton(onPressed: null,
      icon:Icon(Icons.favorite_outline_outlined,
      color: Colors.grey,
      size: 20,)
      ),
       IconButton(onPressed: null,
      icon:Icon(Icons.place,
      color: Colors.grey,
      size: 20,)
      ),
      ],
      backgroundColor: Colors.white,
    );
  }
 } 


 class SearchSection extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              color: Colors.grey[200],
              padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(30),
                           boxShadow:  [ 
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0,3),
                            )
                           ],
                        ),
                       
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'London',
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          boxShadow:  [ 
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 4,
                              offset: Offset(0,4),
                            )
                           ],
                           borderRadius: BorderRadius.all(
                            Radius.circular(25)
                            ),
                        ),
                        child: ElevatedButton(onPressed: null,
                         child: Icon(Icons.search,
                         size: 26,
                         ),
                         style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          primary: d_green,
                         ),
                         ),
                        
                      ),

                    ],
                  ),
                  //SizedBox(height: 50,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Text('Choose date',
                          style: GoogleFonts.nunito(
                            color: Colors.grey,
                            fontSize: 15,
                          ),),
                           SizedBox(height: 8,),
                          Text('12 Dec - 22 Dec', 
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 17,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Number of rooms',
                          style: GoogleFonts.nunito(
                            color: Colors.grey,
                            fontSize: 15,
                          ),),
                          SizedBox(height: 8,),
                          Text('1 Room - 2 Adults',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 17,
                          ),),
                        ],
                      ),
                    ),
                  ],
                 )
                ],
              ),
            );
   } 
 } 



 class HotelSection extends StatelessWidget { 
  final List hotelList = [ 
    {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/h2.jpeg',
      'price': 180,
     } ,
     {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/h3.jpeg',
      'price': 180,
     } ,
     {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/h4.jpeg',
      'price': 180,
     } ,
     {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/h5.jpeg',
      'price': 180,
     } ,
  ];
  @override 
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('550 hotels founds',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          ),
                          SizedBox(width: 50,),
                         Text('Filters',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          ),
                          IconButton(onPressed: null,
                           icon: Icon(Icons.filter_list_off_outlined),
                           color: d_green,
                           ),
                      ],
                    ),
                  ),
                  Container(
                   
                    height: 1000,
                  ),
                ],
              ),
            );
   } 
 }