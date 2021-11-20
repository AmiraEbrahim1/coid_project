import 'package:covidworld/start.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';
class CovidWorld extends StatefulWidget {
  const CovidWorld({Key? key}) : super(key: key);

  @override
  _CovidWorldState createState() => _CovidWorldState();
}

class _CovidWorldState extends State<CovidWorld> {
  @override
  void initState()
  {
    super.initState();
    Timer(
        Duration(seconds: 3),()=>Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context)=>CovidStart()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,  28, 30, 124   ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(

              width: 200,
              height: 200,
              child: Image(
                image:AssetImage('images/flamenco-pandemic.png'),),
            ),
            SizedBox(
              height: 30,
            ),

// decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('images/WhatsApp Image 2021-10-20 at 1.55.04 AM.jpeg'),
            //       fit: BoxFit.cover,
            Text('Covid_19',
                style: TextStyle(color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Text('we provide all the services \n you need.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 24),),

          ],
        ),
      ),
    );
  }
}
