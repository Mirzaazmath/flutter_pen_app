import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_pen_app/utils/text_utlis.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color>_colors= [Colors.black,Colors.grey,Colors.deepOrange,Colors.blueAccent,Colors.pink,Colors.yellow];
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 70,
        leading: Container(
          margin: const  EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,

            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(0,5),
                blurRadius: 5,

              )
            ]
          ),
          child:const  Icon(Icons.sort,color: Colors.black,),
        ),
        actions: [
          Container(
            margin: const  EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0,5),
                    blurRadius: 5,

                  )
                ]
            ),
            child:const  Icon(Icons.shopping_cart_outlined,color: Colors.black,),
          ),
        ],

      ),
      body: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtil(text: "LAMY pico Ballpoint pen",weight: true,size: 35,),
               const  Spacer(),
                TextUtil(text: "small an handy ,pico first shows its full potential when expanded",color: Colors.grey.shade600,),
                const  Spacer(),
                TextUtil(text: "Select Colors",weight: true,),
                const  Spacer(),
               const  SizedBox(height: 10,),
                SizedBox(
                  height: 100,
                  width: 150,
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      for(int i=0;i<_colors.length;i++)...[
                        Stack(

                alignment:Alignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                               border: Border.all(color:i==5? Colors.grey :Colors.white,width: 2),
                                shape: BoxShape.circle
                              ),

                            ),

                            CircleAvatar(
                              radius: 14,
                              backgroundColor:_colors[i] ,
                            ),
                          ],
                        )
                      ]
                    ],
                  ),
                ),
                const  Spacer(),
                TextUtil(text: "\$48.00",weight: true,size: 25,),
                const  Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const  EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap:(){
                          if(count<1){

                          }else{
                            setState(() {
                              count--;
                            });
                          }

                },
                          child: TextUtil(text: "-",size: 25,)),
                      TextUtil(text: "$count",size: 26,),
                      GestureDetector(
                          onTap:(){
                            setState(() {
                                count++;
                              });
                              },
                          child: TextUtil(text: "+",size: 25,))
                    ],
                  ),


                ),
                const  Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),bottomLeft: Radius.circular(30)),
                  ),
                  padding: const  EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child:
                      TextUtil(text: "ADD TO CART",size: 15,color: Colors.white,weight: true,),


                  ),
                const  Spacer(),




              ],

            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset("assets/pen.png"))
            ]),
          );




  }
}
