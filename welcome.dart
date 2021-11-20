import 'package:covidworld/signup.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromARGB(255,  28, 30, 124   ),
        body: SingleChildScrollView(
          child:   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height ,
              child: Stack(
                children: [
                  Column(

                    children: [

                      SizedBox(height: 100,),

                      Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Welcome!',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(right:140),
                        child: Text('Enter your name',
                          style: TextStyle(color: Colors.white,
                            fontSize: 20,
                          ),),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          // labelText: 'Enter your name',
                          // labelStyle: TextStyle(
                          //     color:Colors.white
                          // ),
                          prefixIcon: Icon(Icons.person,color: Colors.red,),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(right:115),
                        child: Text('Enter your password',
                          style: TextStyle(color: Colors.white,
                            fontSize: 20,
                          ),),
                      ),
                      TextFormField(

                        obscureText: true,
                        decoration: InputDecoration(
                          // labelText: 'Enter your password',
                          // labelStyle: TextStyle(
                          //     color:Colors.white
                          // ),
                          prefixIcon: Icon(Icons.lock,color: Colors.red,),



                        ),

                      ),

                      SizedBox(height: 150,),

                      Padding(
                        padding: const EdgeInsets.only(left:150),
                        child: Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(243, 183, 59 , 1)
                          ),
                          child: TextButton(onPressed: (){},
                              child: Text('Sign In',
                                style: TextStyle(color: Colors. black,fontSize: 17,fontWeight:FontWeight.bold),)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:150),
                        child: Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO( 248, 139, 202, 1)
                          ),
                          child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) =>SignUp() ));
                          },
                              child: Text('Sign Up',
                                style: TextStyle(color: Colors. black,fontSize: 17,fontWeight:FontWeight.bold),)),

                        ),
                      ),

                    ],

                  ),
                  Positioned(
                      left: 240,
                      //top: 20,
                      child:Image(image: AssetImage('images/mimicorona2.png'),)
                  ),
                  Positioned(
                    // left: ,
                      top: 540,
                      child:Image(image: AssetImage('images/mimicorona.png'),)
                  ),
                ],
              ),
            ),
          ),
        )
    );

  }
}
