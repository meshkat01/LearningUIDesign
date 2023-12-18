import 'package:flutter/material.dart';

import 'home_screen.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/ 1.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/ 1.6,
                      decoration: BoxDecoration(
                        color: Color(0xff674AEF),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70.0)),
                      ),
                      child: Center(
                        child: Image.asset("images/books.png", scale: 0.8,),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child:  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.666,
                    decoration: BoxDecoration(
                      color: Color(0xff674AEF),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child:  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.666,
                    padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70.0)),
                    ),
                    child: Column(
                      children: [
                        Text("Learnig is Everything",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0,
                          wordSpacing: 2.0,
                        ),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black.withOpacity(0.6)
                          ),
                          ),
                        ),
                        SizedBox(height: 60.0,),
                        Material(
                          color: Color(0xFF674AEF),
                          borderRadius: BorderRadius.circular(10.0),
                          child: InkWell(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 15.0),
                              child: Text("Get Start",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
