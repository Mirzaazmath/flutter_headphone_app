import 'package:flutter/material.dart';
import 'package:me_headphone/rotateanimation.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title:const   Text("me.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),),
        actions: [
          IconButton(onPressed: (){}, icon:const  Icon(Icons.shopping_cart_outlined,color: Colors.black,)),
          IconButton(onPressed: (){}, icon:const  Icon(Icons.apps,color: Colors.black,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RotateAnimationWidget(),


            ClipOval(
              child: Container(
              height: 10,
                width: 200,
                color: Colors.grey.shade300,


              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                        decoration: BoxDecoration(
                          color:const  Color(0xffb30b00),
                          borderRadius: BorderRadius.circular(20)
                        ),

                        child:const Text("New",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                      ),
                     const  Text("Unisson",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
                      Row(

                        children: [

                        const   Text("Headphones"),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                            decoration: BoxDecoration(
                                color:const  Color(0xfff9e2ea),
                                borderRadius: BorderRadius.circular(20)
                            ),

                            child:const Text("4.7",style: TextStyle(color: Color(0xffb30b00),fontWeight: FontWeight.bold,fontSize: 10),),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow:const  [
                        BoxShadow(
                          color: Color(0xffd1dff5),
                          offset: Offset(6,5),
                          blurRadius: 30
                        ),
                        BoxShadow(
                            color: Color(0xffd1dff5),
                            offset: Offset(-5,5),
                            blurRadius:30
                        )
                      ]
                    ),
                    child:const  Icon(Icons.favorite_border,color: Color(0xff204d90),),
                  ),
                  Container(
                    padding:const  EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff5f64e6),
                        boxShadow:const  [
                          BoxShadow(
                              color: Color(0xffb4b4f5),
                              offset: Offset(0,10),
                              blurRadius: 10
                          ),

                        ]
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Price",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                            Text("\$399",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),

                          ],
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
           const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(30),

              decoration: const BoxDecoration(
                color: Color(0xffecf3f9),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))

              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:const Color(0xffcfdef5).withOpacity(0.5),

                            ),
                            child:const  Icon(Icons.headphones_outlined,color: Color(0xff204d90),),
                          ),
                         const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Type",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Closed back\ncircum-aural",style: TextStyle(fontSize: 10),)
                            ],
                          )

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffcfdef5).withOpacity(0.5),

                            ),
                            child:const  Icon(Icons.tune,color: Color(0xff204d90),),
                          ),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Frequency",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("15Hz-22KHz",style: TextStyle(fontSize: 10),)
                            ],
                          )

                        ],
                      )
                    ],
                  ),
                 const  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffcfdef5).withOpacity(0.5),

                            ),
                            child:const  Icon(Icons.rss_feed,color: Color(0xff204d90),),
                          ),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Range",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(">15m\nBluetooth",style: TextStyle(fontSize: 10),)
                            ],
                          )

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffcfdef5).withOpacity(0.5),

                            ),
                            child:const  Icon(Icons.battery_0_bar,color: Color(0xff204d90),),
                          ),
                          const  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Battery Life",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("Up to 20h",style: TextStyle(fontSize: 10),)
                            ],
                          )

                        ],
                      )
                    ],
                  ),
               const    SizedBox(height: 20,),
                 const  Text("As the most critically acclaimed model in the M-Series line, THE M50x hits the right spot when it comes to delivering a balanced sound. It seals your music in tightly with their contoured earcups, isolating all the ambient noise with no sound leakage, with minimal bleed. One of the top picks of online reviewers, top audio engineers, and cult followers agree, the M50x is an unmatched combination of audio and build-quality that gets the job done. Hour after hour, year after year.",style: TextStyle(fontSize: 10),)
                ],
              ),

            )

          ],
        ),
      ),
    );
  }
}


