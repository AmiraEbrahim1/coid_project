import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,  28, 30, 124   ),
      body:SingleChildScrollView(
        child: Container(
          width:MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(

            children:
            [
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20),
                child:Column(
                  children: [
                    SizedBox(height: 100,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Sign Up!',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text('Enter your name',
                        style: TextStyle(color: Colors.white,
                            fontSize: 20),),
                    ),
                    //  SizedBox(height: 50,),
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return 'name must be not empty';
                        }
                      },
                      decoration: InputDecoration(

                        // labelText: 'Enter your name',
                        // labelStyle: TextStyle(
                        //     color:Colors.white
                        // ),
                        prefixIcon: Icon(Icons.person,color: Colors.red,),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text('Enter your email',
                        style: TextStyle(color: Colors.white,
                            fontSize: 20),),
                    ),
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return 'email must be not empty';
                        }
                      },
                      decoration: InputDecoration(

                        // labelText: 'Enter your email',
                        // labelStyle: TextStyle(
                        //     color:Colors.white
                        // ),
                        prefixIcon: Icon(Icons.email,color: Colors.red,),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 130),
                      child: Text('Enter your password',
                        style: TextStyle(color: Colors.white,
                            fontSize: 20),),
                    ),
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return 'password must be not empty';
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        // labelText: 'Enter your password',
                        // labelStyle: TextStyle(
                        //     color:Colors.white
                        // ),
                        prefixIcon: Icon(Icons.lock,color: Colors.red,),



                      ),

                    ),

                    SizedBox(height: 130,),

                    Padding(
                      padding: const EdgeInsets.only(left:150),
                      child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(243, 183, 59 , 1)
                        ),
                        child: TextButton(onPressed: (){
                        },
                            child: Text('Next',
                              style: TextStyle(color: Colors. black,fontSize: 17,fontWeight:FontWeight.bold),)),
                      ),
                    ),


                  ],

                ),
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

    );
  }
}
