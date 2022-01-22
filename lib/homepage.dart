import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {

    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;

    double boxH = sHeight*0.25;
    double boxW = sWidth*0.4;

    double boroboxH = sHeight*0.2228;
    double boroboxW = sWidth*0.8091;

    double khaliH = sHeight*0.01;
    double khaliW = sWidth*0.07;

    double insideH = sHeight*0.01;
    double insideW = sWidth*0.01;

    double iconH = sHeight*0.10557;
    double iconW = sWidth*0.18599;

    double textH = sHeight*0.0679;
    double textW = sWidth*0.21256;

    return Scaffold(
      backgroundColor: Color(0xFFf6f8ff),
      appBar: AppBar(
        title: Text("BMI Calculator",
        style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Color(0xFFffffff),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment(0.0, -0.96),
            child: Row(
              children: [
                Container(
                  height: khaliH,
                  width: khaliW,
                ),
                Container(
                  height: boxH,
                  width: boxW,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5.0,
                        blurRadius: 7.0,
                        offset: Offset(0,3),
                      ),
                    ]
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: iconH,
                          width: iconW,
                          child: LayoutBuilder(builder: (context, constraint) {
                            return new Icon(FontAwesomeIcons.mars, size: constraint.biggest.height);
                          }),
                        ),
                        Container(
                          height: insideH,
                          width: insideW,
                        ),
                        Container(
                          height: textH,
                          width: textW,
                          child: AutoSizeText(
                            "Male",
                            style: TextStyle(fontSize: 30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: khaliH,
                  width: khaliW,
                ),
                Container(
                  height: boxH,
                  width: boxW,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5.0,
                          blurRadius: 7.0,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: iconH,
                          width: iconW,
                          child: LayoutBuilder(builder: (context, constraint) {
                            return new Icon(FontAwesomeIcons.venus, size: constraint.biggest.height);
                          }),
                        ),
                        Container(
                          height: insideH,
                          width: insideW,
                        ),
                        Container(
                          height: textH,
                          width: textW,
                          child: AutoSizeText(
                            "Female",
                            style: TextStyle(fontSize: 30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment(0.0, -0.13),
            child: Container(
              height: boroboxH,
              width: boroboxW,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5.0,
                      blurRadius: 7.0,
                      offset: Offset(0,3),
                    ),
                  ]
              ),
            ),
          ),
          Container(
            alignment: Alignment(0.9,0.7),
            child: Row(
              children: [
                Container(
                  height: khaliH,
                  width: khaliW,
                ),
                Container(
                  height: boxH,
                  width: boxW,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5.0,
                          blurRadius: 7.0,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                ),
                Container(
                  height: khaliH,
                  width: khaliW,
                ),
                Container(
                  height: boxH,
                  width: boxW,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5.0,
                          blurRadius: 7.0,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment(0.0,0.99),
            child: ElevatedButton(
              onPressed: (){
              },
              child: Text("Results"),

            ),
          ),
        ],
      ),
    );
  }
}
