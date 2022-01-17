import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title: "Calculator",
theme: ThemeData(
  primarySwatch: Colors.orange,
), home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build (BuildContext context) {

    widget custombutton(){
      return expanded(
        child:materialbutton(
          onpressed:(){},

        )

      )


    }
  }
    return Scaffold(
appBar: AppBar(
  title: Text(
    "Calculator",
  ),
),
      body: Container(
        child: Column(
          mainAxisAlignment: mainAxisAlignment.end ,
          children:<widget>[
           Row(
             children:<widget>[

                     ),
                   )
               )
             ],
           )
          ]
        ) ,
      )
      ,
    );
  }






