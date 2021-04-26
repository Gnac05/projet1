import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Exercice1(),
    );
  }
}

class Exercice1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      
        elevation: 0.0,
        //leadingWidth: 20,
        leading: Image.asset(
          "image/arrow-left.png",
          //scale: 0.1,
          //OU
          height: 20.0,
          width: 20.0,
         
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset("image/background.png"),
        ),
        Text(
          'Enter OTP',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 15),
        Text(
          "We have sent you OTP to e-mail \naddress for verification",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Ver(
              itext: "1",
            ),
            Ver(
              itext: "6",
            ),
            Ver(
              itext: "0",
            ),
            Ver(
              itext: "0",
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          height: 40.0,
          width: 300.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.deepPurpleAccent),
          child: Text(
            "NEXT",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Didn\'t Receive the OTP?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'Resend Code',
          style: TextStyle(color: Colors.green),
        ),
      ]),
    );
  }
}

class Ver extends StatelessWidget {
  final String itext;
  const Ver({this.itext});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      height: 40.0,
      width: 25.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        itext,
        style: TextStyle(color: Colors.green),
      ),
    );
  }
}
