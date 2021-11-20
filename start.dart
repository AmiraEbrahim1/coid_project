import 'package:covidworld/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CovidStart extends StatefulWidget {
  const CovidStart({Key? key}) : super(key: key);

  @override
  _CovidStartState createState() => _CovidStartState();
}

class _CovidStartState extends State<CovidStart> {

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
                image:AssetImage('images/flame-the-man-got-sick.png'),),
            ),
            SizedBox(
              height: 180,
            ),

// decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('images/WhatsApp Image 2021-10-20 at 1.55.04 AM.jpeg'),
            //       fit: BoxFit.cover,

            Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(243, 183, 59 , 1)
              ),
              child: TextButton(onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Welcome())
                );
              },
                  child: Text('Start',
                    style: TextStyle(color: Colors. black,fontSize: 17,fontWeight:FontWeight.bold),)),
            )

          ],
        ),
      ),
    );
  }
}
