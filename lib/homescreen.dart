import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

import 'detailscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff494bb0),
              Color(0xff61adcc),
            ]
          )
        ),
        child: Stack(
          children: [
            Positioned.fill(
              right: -180,
                child: Image.asset("assets/headphone1.png")),
            Positioned.fill(
                child: Container(
                  color:const  Color(0xff494bb0).withOpacity(0.3),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                           const    Expanded(
                                  child: Text("me.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
                              IconButton(onPressed: (){}, icon:const  Icon(Icons.shopping_cart_outlined,color: Colors.white,)),
                              IconButton(onPressed: (){}, icon:const  Icon(Icons.apps,color: Colors.white,)),

                            ],
                          ),

                        ),
                        const  Padding(
                           padding:  EdgeInsets.all(25),
                           child: Row(
                             children: [
                               RotatedBox(
                                  quarterTurns: 3,
                                  child:  Text("WIRELESS",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),)
                        ),
                               SizedBox(width: 10,),
                               Text("Head-\nphones",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 50),)
                             ],
                           ),
                         ),
                        const SizedBox(height: 400,),

                        Center(
                          child: GradientSlideToAct(
                            text: "Swipe left to access",

                            width: 300,
                            dragableIconBackgroundColor: Colors.white,
                            textStyle: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                            backgroundColor: Colors.black,
                            onSubmit: (){
                              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>DetailScreen()));

                            },
                            gradient:  const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff494bb0),
                                  Color(0xff61adcc),
                                ]
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
            
          ],
        )
      ),
    );
  }
}
