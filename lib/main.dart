import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Business Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/biyometrik.jpg"),

              ),


              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Sinan ALAGÖZ",style: TextStyle(fontFamily: 'Shojumaru',
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Divider(
                      color: Colors.teal.shade50,
                    ),
                  ),
                  Text("Flutter Developer",
                    style: TextStyle(color: Colors.white,
                      fontFamily: 'WaterBrush',
                      fontSize: 30,
                    ),
                  ),
                ],
              ),


              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child:
                         Padding(
                           padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.phone,color: Colors.teal,),
                              SizedBox(width: 10),
                              Text("+90 505 316 50 96", style: TextStyle(color: Colors.teal, fontSize: 17,fontWeight: FontWeight.bold),),
                            ],
                        ),
                         ),


                      ),


                    ],

                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.mail, color: Colors.teal,),
                              SizedBox(width: 10),
                           //   Text("+90 505 316 50 96", style: TextStyle(color: Colors.teal, fontSize: 17,fontWeight: FontWeight.bold)),
                              Text("sinanalagoz74@gmail.com",
                                style: TextStyle(color: Colors.teal,
                                  fontFamily: "PressStart2P",
                                  fontSize: 10,
                                ),
                              ),

                            ],
                          ),
                        ),


                      ),


                    ],

                  ),





                ],
              ),


            ],
          ),
        ),
      ),

    );
  }
}
