import 'package:flutter/material.dart';
import 'package:ui_assignment_one/Screen/welcome_screen.dart';
import 'package:ui_assignment_one/screen/video_section.dart';

import 'courses_screen.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

  List catName=[
    "Categorys",
    "Clasess",
    "Free Courses",
    "Books Store",
    "Live Courses",
    "List Bord",
  ];
  List<Color> catColors=[
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];
List<Icon> catIcons=[
  Icon(Icons.category, color: Colors.white, size: 20.0,),
  Icon(Icons.video_library, color: Colors.white, size: 20.0,),
  Icon(Icons.assignment, color: Colors.white, size: 20.0,),
  Icon(Icons.store, color: Colors.white, size: 20.0,),
  Icon(Icons.play_circle_fill, color: Colors.white, size: 20.0,),
  Icon(Icons.emoji_events, color: Colors.white, size: 20.0,),
];

List imgList=[
  "Flutter",
  "PHP",
  "Python",
  "React",
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15.0,bottom: 10.0,left: 15.0,right: 15.0),
              decoration: BoxDecoration(
                color: Color(0xff674AEF),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.dashboard,
                      size: 30,
                        color: Colors.white,
                      ),
                      Icon(Icons.notification_add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 3.0,bottom: 15.0),
                    child: Text("Hi, Trainner",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                      letterSpacing:1.0,
                      wordSpacing: 2.0,
                      color: Colors.white,
                    ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5.0,bottom: 20.0),
                    alignment: Alignment.center,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"Search here.....",
                          prefixIcon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: Column(
                children: [
                  GridView.builder(

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: catName.length,
                    itemBuilder: (context, index){
                        return Column(
                          children: [
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: catColors[index],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text(catName[index],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),

                            ),
                            ),
                          ],
                        );
                    },
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Text("Courses",
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      Text("See all",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF674AEF),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  GridView.builder(
                    itemCount: imgList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ), itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CoursesScreen(
                              imgList[index]),
                          ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xFFF5F3FF),
                          ),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(10.0),
                                child: Image.asset("images/${imgList[index]}.png",
                                  width: 100.0, height: 80.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(imgList[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                                color: Colors.black.withOpacity(0.6),
                              ),
                              ),
                              Text("30 Videos",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                              ),
                              ),
                            ],

                          ),
                        ),
                      );
                  }),
                ],
              ),
            ),

          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF674AEF),
        iconSize: 32.0,
        selectedFontSize: 18.0,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (value){
          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage(),));
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "Courses"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
