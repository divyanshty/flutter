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
  int firnum;
  int secondnum;
  String texttodisplay ="";
  String res;
  String operationtoperform;

  void btnclicked(String btntext){
if(btntext == "C"){
  texttodisplay ="";
  firnum = 0;
  secondnum = 0;
  res = "";
}else if(btntext=="+" = btntext== "-" = btntext=="x" btntext=="/"){
  firnum = int.parse(texttodisplay);
  res = "";
  operationtoperform = btntext;
}
else if(btntext == ""){
  secondnum = int.parse(texttodisplay);
  if(operationtoperform == "+"){
    res = (firnum + secondnum).toString();
  }
  if(operationtoperform == "-"){
    res = (firnum - secondnum).toString();
  }
  if(operationtoperform == "x"){
    res = (firnum * secondnum).toString();
  }
  if(operationtoperform == "/"){
    res = (firnum ~/ secondnum).toString();
  }
}else{
  res = int.parse(texttodisplay + btntext).toString();
}

setState(() {
  texttodisplay = res;
});
  }
  Widget custombutton(String btnval){
    return Expanded(
        child: OutlineButton(
            padding: EdgeInsets.all(20.0),
            onPressed: ()=> btnclicked(btnval),
            child: Text (
              "$btnvalue",
              style: TextStyle(
                  fontSize: 20.0
              ),
            )
        )

  @override
  Widget build (BuildContext context) {

      );
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
            Expanded(
child: Container(
  padding: EdgeInsets.all(10.0),
  alignment: Alignment.bottomRight,
      child: Text(
      "$texttodisplay",
  style: TextStyle(
      fontSize: 20.0,
  fontWeight: FontWeight.w700
      ),
      ),
      ),
                )
           Row(
  children:<widget>[
  custombutton(9),
  custombutton(8),
  custombutton(7),
  custombutton(+),
  )
  )
  ],
  ),
  Row(
  children:<widget>[
  custombutton(6),
  custombutton(5),
  custombutton(4),
  custombutton(-),
  )
  )
  ],
  ),
  Row(
  children:<widget>[
  custombutton(3),
  custombutton(2),
  custombutton(1),
  custombutton(x),
  )
  )
  ],
  ),
  Row(
  children:<widget>[
  custombutton(C),
  custombutton(0),
  custombutton(=),
  custombutton(/),
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






