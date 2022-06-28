import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hotels/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calendar_page.dart';





const d_green = Color(0xFF54D3C2);


 void main() {
  runApp(MyApp());
}


class  MyAppBar  extends StatelessWidget  {
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
      appBar: AppBar(),

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
                        child: ElevatedButton(onPressed: (() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return CalendarPage();
                          },
                          ),
                          );
                        }),
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
      'title': 'Queen Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/h3.jpeg',
      'price': 180,
     } ,
     {
      'title': 'Lord Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/h4.jpeg',
      'price': 180,
     } ,
     {
      'title': 'Berverly Hotel',
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
                  Column(
                    children: hotelList.map((hotel) {
                      return HotelCard(hotel);
                    }).toList(),
                  )
                ],
              ),
            );
   } 
 }


 class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);
  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18),
        ),
        boxShadow: [
           BoxShadow(
          color: Colors.grey.shade200,
          spreadRadius: 4,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              color: Colors.red,
              image: DecorationImage(image: AssetImage(hotelData ['picture'],
              ),
              fit: BoxFit.cover,
              ),

            ),
            child: Stack(
              children: [
                
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {
                },
                child: Icon(Icons.favorite_border_rounded),
                ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(hotelData['titile'].toString(),
          //       style: GoogleFonts.nunito(
          //         fontSize: 18,
          //         fontWeight: FontWeight.w800,
          //       ),
          //       ),
          //       // Text('$' + hotelData['price']),
          //       Text(hotelData['distance'].toString(),
          //        style: GoogleFonts.nunito(
          //         fontSize: 18,
          //         fontWeight: FontWeight.w800,
          //         ),
          //       ),
          //       Text(hotelData['review'],
          //        style: GoogleFonts.nunito(
          //         fontSize: 18,
          //         fontWeight: FontWeight.w800,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotelData['place'],
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,

                ),
                ),
                Row(
                  children: [
                    Icon(Icons.place,
                    color: d_green,
                    size: 14,
                    ),
                    Text(hotelData['distance'].toString() + "km to city",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ],
                ),
                Text('per night',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.star_rate, 
                    color: d_green,
                    ),
                     Icon(Icons.star_rate, 
                    color: d_green,
                    ),
                     Icon(Icons.star_rate, 
                    color: d_green,
                    ),
                     Icon(Icons.star_rate, 
                    color: d_green,
                    ),
                     Icon(Icons.star_rate, 
                    color: d_green,
                    ),
                    SizedBox(width: 20,),

                  ],
                  
                ),
                Text(hotelData['distance'].toString()  +  'reviews', 
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
 }