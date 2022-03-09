import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
      CarouselSlider(
      options: CarouselOptions(
           autoPlay: true
          ,height: 230.0),
      items: [
        'https://www.originalseedsstore.com/upload/Special_Offers_logo.png',
       'https://th.bing.com/th/id/OIP.pqP5bCVHovDs71ccTxmCQAHaDL?pid=ImgDet&w=700&h=300&rs=1',
        'https://th.bing.com/th/id/OIP.gKI4XRM_mhpp--S8ysSAEwHaDL?pid=ImgDet&w=718&h=309&rs=1',
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: Image.network(i)
          );
          },
        );
      }).toList(),
    ),



          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
  children: [
    
    Container(
      child:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(Icons.playlist_add,size: 40,color: Colors.white,),
        Text("Orders",style: TextStyle(color: Colors.white,fontSize: 30),)
      ],),
      height: 210.0,
      width: 210.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.blue,
        boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0,10.0)
            )
        ]
      ),
    )
  ],
),
          ),

           Column(

             children: [
               Container(
                 child:

                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.local_offer,size: 40,color: Colors.white,),
                     Text("Offers",style: TextStyle(color: Colors.white,fontSize: 30),)
                   ],),
                 height: 210.0,
                 width: 210.0,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     color: Colors.blueAccent,
                     boxShadow: [
                       BoxShadow(
                           color: Colors.black26,
                           blurRadius: 10.0,
                           offset: Offset(0.0,10.0)
                       )
                     ]
                 ),

               )
             ],
           )



        ],

      ),
    );
  }}
