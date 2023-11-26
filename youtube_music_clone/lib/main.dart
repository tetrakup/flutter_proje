import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
        body: Column(
          children: [
            //1.kutu
            Container(
              width: double.infinity, 
              height: 120,
              decoration:BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                     const  Color.fromRGBO(62,36, 17, 1),
                     const  Color.fromRGBO(48,14, 24, 1),
              ],
              ),
            ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(width: 30,"assets/images/logo.jpg"),
                          SizedBox(width: 5,),
                          Text(
                            "Music",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                          ),),
                        ],
                      ),
                      Row(
                      children: [
                        Icon(Icons.podcasts, color:Colors.white),
                        SizedBox(width: 15,),
                        Icon(Icons.search , color:Colors.white),
                        SizedBox(width: 15,),
                        CircleAvatar(
                          radius:13,
                          backgroundImage: AssetImage("assets/images/p1.jpg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
             SingleChildScrollView (
              scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  CategoryItem("Energize"),
                  CategoryItem("Workout"),
                  CategoryItem("Feel good"),
                  CategoryItem("Relaxation"),
                  CategoryItem("Chill out"),
                  CategoryItem("Rockets"),
                  CategoryItem("Rockets")
                ],
               ),
             ),
              ],
            ),
            ),
            //2.kutu
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(7, 5, 8, 8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start Radio from a song",
                        style: TextStyle(
                          color: Color.fromARGB(255, 187, 186, 186),
                          fontSize: 12,
                        ),
                        ),
                        //2.text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Quick Picks",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top:3.0, bottom: 3,right: 9,left: 9),//burası
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "play all",
                              style: TextStyle(
                                                  color: Color.fromARGB(255, 187, 186, 186),
                                                  fontSize: 12,
                                                ),),
                            ),
                          ],
                        ),
                        MusicRow("assets/images/cover1.jpg", "Herhangi bir", "Sarki İsmie"),
                        MusicRow("assets/images/cover2.jpg", "Herhayngi bir", "Sarki İsmi"),
                        MusicRow("assets/images/cover3.jpg", "Herhanjgi bir", "Sarki İsmfi"),
                        MusicRow("assets/images/cover4.jpg", "Herhangmi bir", "Sarki İsxmi"),
                        MusicRow("assets/images/cover5.jpg", "Herhangin bir", "Sarki İcsmi"),
                        MusicRow("assets/images/cover6.jpg", "Herhanghi bir", "Sarki fİsmi"),
                        MusicRow("assets/images/cover7.jpg", "Herhanhgi bir", "Sarkil İsmi"),
                        MusicRow("assets/images/cover8.jpg", "Herhajngi bir", "Sarkki İsmi"),
                        MusicRow("assets/images/cover9.jpg", "Herhakngi bir", "Sarhki İsmi"),
                        MusicRow("assets/images/cover10.jpg", "Herhakngi bir", "Sharki İsmi"),

                        SizedBox(height: 20,),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Forgotten favorites",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top:3.0, bottom: 3,right: 9,left: 9),//burası
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "play all",
                              style: TextStyle(
                                                  color: Color.fromARGB(255, 187, 186, 186),
                                                  fontSize: 12,
                                                ),),
                            ),
                          ],
                        ),
                        
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicRow2("assets/images/cover8.jpg", "Herhajngi bir", "Sarkki İsmi"),
                              MusicRow2("assets/images/cover9.jpg", "Herhajngi bir", "Sarkki İsmi"),
                              MusicRow2("assets/images/cover2.jpg", "Herhajngi bir", "Sarkki İsmi"),
                              MusicRow2("assets/images/cover3.jpg", "Herhajngi bir", "Sarkki İsmi"),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            //3.kutu
            Container(
              width: double.infinity,
              height: 60, 
              color:Color.fromRGBO(33, 33, 33, 1), 
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    Column(
                      children: [
                        Icon(Icons.home,color: Colors.white,),
                        Text("Home", style: TextStyle(color: Colors.white, fontSize: 10,),),
                      ],
                    ),
                    //2.column
                    Column(
                      children: [
                        Icon(Icons.play_circle,color: Colors.white,),
                        Text("Samples", style: TextStyle(color: Colors.white, fontSize: 10,),),
                      ],
                    ),
                    //3.colum
                    Column(
                      children: [
                        Icon(Icons.explore,color: Colors.white,),
                        Text("Explorer", style: TextStyle(color: Colors.white, fontSize: 10,),),
                      ],
                    ),
                    //4.column
                    Column(
                      children: [
                        Icon(Icons.subscriptions,color: Colors.white,),
                        Text("Library", style: TextStyle(color: Colors.white, fontSize: 10,),),
                      ],
                    ),
                    //5.colmn
                    Column(
                      children: [
                        Icon(Icons.slideshow,color: Colors.white,),
                        Text("Upgrade", style: TextStyle(color: Colors.white, fontSize: 10,),),
                      ],
                    ),
                  ],),
              ),
              ),
          ],
          ),
          ),
    );
  }

  Padding MusicRow2(String photo, String title,String artist) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  photo,
                                   width: 150,),
                                SizedBox(height: 5,),
                                Text(
                                    title,
                                     style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                     ),
                                     ),
                                     Text(
                                      artist,
                                     style: TextStyle(
                                      color: Color.fromARGB(255, 181, 181, 181),
                                      fontSize:14,
                                     ),
                                     )
                              ],
                            ),
                          ],
                        ),
                      );
  }

  Widget MusicRow(String photo, String title,String artist) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0,),
      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(photo,
                               width: 70,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                     style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                     ),
                                     ),
                                     Text(artist,
                                     style: TextStyle(
                                      color: Color.fromARGB(255, 181, 181, 181),
                                      fontSize:14,
                                     ),
                                     )
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert, color: Colors.white,),
                        ],
                      ),
    );
  }

  Container CategoryItem(String text,) {
    return Container(
                  padding:
      const EdgeInsets.only(top:6.0, bottom: 6.0, left:12 , right:12 ),
      margin:
      const EdgeInsets.only(left:3 , right:3 ),
    decoration: BoxDecoration(
      color: const Color.fromARGB(33, 255, 255, 255),
      borderRadius:BorderRadius.circular(10),
      border:Border.all(
        color: Color.fromARGB(20, 255, 255, 255),
      ),
    ),
    child: Text(
      text, 
    style:TextStyle(
      color:Colors.white,
      fontWeight: FontWeight.normal,),
      ),);
  }
}
