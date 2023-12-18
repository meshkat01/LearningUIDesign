
import 'package:flutter/material.dart';
import 'package:ui_assignment_one/screen/video_section.dart';

import 'description_section.dart';
class CoursesScreen extends StatefulWidget {
  String img;
  CoursesScreen(this.img);

  @override
  State<CoursesScreen> createState() => _CourserScreenState();
}

class _CourserScreenState extends State<CoursesScreen> {

  bool isVideosSection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img, style: TextStyle(
          fontWeight: FontWeight.bold,letterSpacing: 1.0,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications,
              size: 28.0,
              color: Color(0xFF674AEF),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.play_arrow_rounded,
                  color: Color(0xFF674AEF),
                    size: 55.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Text("${widget.img} Complete Courses",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 5.0,),
            Text("Created by Dear Trainee",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 5.0,),
            Text("30 Videos",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color:isVideosSection ? Color(0xFF674AEF)
                       : Color(0xFF674AEF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                         isVideosSection = true;
                        });
                      },
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 35.0),
                          child: Text("Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color:isVideosSection ? Color(0xFF674AEF).withOpacity(0.6)
                        : Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection = false;
                        });
                      },
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 35.0),
                          child: Text("Description",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //2 difrent screen

            SizedBox(height: 10.0,),

            isVideosSection ? VideoSection() : DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
