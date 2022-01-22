import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';

const activeColor = Color(0xFF566de5);
const inActiveColor = Color(0xFF212121);

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Color maleBoxColor = activeColor;
  Color femaleBoxColor = inActiveColor;

  int height = 180;
  int weight = 60;
  int age = 20;

  String result = "";
  String resultDetail = "Result is here";
  double bmi = 0;
  void updateBoxColor(int gender){
    if(gender == 1)
      {
        if(maleBoxColor == inActiveColor)
          {
            maleBoxColor = activeColor;
            femaleBoxColor = inActiveColor;
          }else{
          maleBoxColor = inActiveColor;
          femaleBoxColor = activeColor;
        }
      }
    else{
      if(femaleBoxColor == inActiveColor)
      {
        femaleBoxColor = activeColor;
        maleBoxColor = inActiveColor;
      }else{
        femaleBoxColor = inActiveColor;
        maleBoxColor = activeColor;
      }
    }
  }

  String calculation(int height, int weight){
    bmi = weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult(double bmi){
    if(bmi >= 25){
      return "You are overweight. Do some exercises";
    }
    else if(bmi>18.5){
      return "You have normal bodyweight";
    }
    else{
      return "You are underweight.Eat a bit more";
    }
  }

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
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        title: Text("BMI Calculator",
        style: TextStyle(
            color: Colors.white,
        ),),
        backgroundColor: Color(0xFF000000),
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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateBoxColor(1);
                      });
                    },
                    child: Container(
                      height: boxH,
                      width: boxW,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: maleBoxColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                                return new Icon(FontAwesomeIcons.mars,color: Colors.white ,size: constraint.biggest.height);
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
                                style: TextStyle(fontSize: 30.0,
                                    color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), // male box
                Container(
                  height: khaliH,
                  width: khaliW,
                ),
                Container(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateBoxColor(2);
                      });
                    },
                    child: Container(
                      height: boxH,
                      width: boxW,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: femaleBoxColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
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
                                return new Icon(FontAwesomeIcons.venus,color: Colors.white, size: constraint.biggest.height);
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
                                style: TextStyle(fontSize: 30.0,
                                    color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), //female box
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
                color: inActiveColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5.0,
                      blurRadius: 7.0,
                      offset: Offset(0,3),
                    ),
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    "Height",
                    style: TextStyle(fontSize: 20.0,
                        color: Colors.white,
                    fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      AutoSizeText(
                        height.toString(),
                        style: TextStyle(fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      AutoSizeText(
                        "cm",
                        style: TextStyle(fontSize: 16.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: activeColor,
                    inactiveColor: inActiveColor,
                    onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                        height = newValue.round();
                    },
                  )
                ],
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
                    color: inActiveColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5.0,
                          blurRadius: 7.0,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "Weight",
                        style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          AutoSizeText(
                            weight.toString(),
                            style: TextStyle(fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          AutoSizeText(
                            "kg",
                            style: TextStyle(fontSize: 16.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton.small(
                            backgroundColor: activeColor,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          ),
                          ),
                          SizedBox(width: sWidth*0.03,),
                          FloatingActionButton.small(
                            backgroundColor: activeColor,
                            onPressed: (){
                              setState(() {
                                if(weight>0){
                                  weight--;
                                }
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                                color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ],
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
                    color: inActiveColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5.0,
                          blurRadius: 7.0,
                          offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "Age",
                        style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          AutoSizeText(
                            age.toString(),
                            style: TextStyle(fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          AutoSizeText(
                            "years",
                            style: TextStyle(fontSize: 16.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton.small(
                            backgroundColor: activeColor,
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: sWidth*0.03,),
                          FloatingActionButton.small(
                            backgroundColor: activeColor,
                            onPressed: (){
                              setState(() {
                                if(age>0){
                                  age--;
                                }
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                result = calculation(height, weight);
                resultDetail = getresult(bmi);
                showDialog(context: context,
                    builder: (BuildContext context){
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: sHeight*0.5,
                          color: inActiveColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText("Result",
                                style: TextStyle(fontSize: 15.0,
                                    color: Colors.white,
                                ),
                              ),
                              AutoSizeText(result.toString(),
                                style: TextStyle(fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              AutoSizeText(resultDetail.toString(),
                                style: TextStyle(fontSize: 15.0,
                                    color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              });

            },
            child: Container(
              alignment: Alignment(0.0, 1.0),
              child: Container(
                height: sHeight*0.08,
                width: double.infinity,
                color: activeColor,
                child: Center(
                  child: AutoSizeText(
                    "Calculate",
                    style: TextStyle(fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
