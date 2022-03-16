import 'package:fennesstracking/data/latest.dart';
import 'package:fennesstracking/theme/colors.dart';
import 'package:fennesstracking/widget/chat_activity.dart';
import 'package:fennesstracking/widget/sleep.dart';
import 'package:fennesstracking/widget/water.dart';
import 'package:fennesstracking/widget/workout.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, bottom: 12, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "welcome back",
                        style: TextStyle(fontSize: 14, color: black),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "SoFlorichou",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: black),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: black.withOpacity(0.04),
                    ),
                    child: Center(
                      child: Icon(LineIcons.bell),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "bmi body mass index",
                            style: TextStyle(
                              fontSize: 14,
                              color: white,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "you are normal weight",
                            style: TextStyle(
                              fontSize: 14,
                              color: white,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 95,
                            height: 35,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [fourthColor, thirdColor]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "view more",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 28),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient:
                              LinearGradient(colors: [fourthColor, thirdColor]),
                        ),
                        child: Center(
                          child: Text(
                            "20.6",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondary.withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "message target",
                        style: TextStyle(fontSize: 15, color: black),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/today_detail");
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient:
                                LinearGradient(colors: [secondary, primary]),
                          ),
                          child: Center(
                              child: Text(
                            "check",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: white),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Activity status",
                style: TextStyle(
                    fontSize: 20, color: black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondary.withOpacity(0.15),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: LineChart(activityData()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Heart rate",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.grey.withOpacity(0.02),
                width: double.infinity,
                height: 400,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 350,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        WateIntakeProgressBar(),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "water",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: black),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  "Intake",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: black),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Real time",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey
                                                          .withOpacity(0.5)),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  "Update",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey
                                                          .withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 75,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              gradient:
                                                                  LinearGradient(
                                                                      colors: [
                                                                    primary,
                                                                    secondary
                                                                  ])),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "06m-08m",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              gradient:
                                                                  LinearGradient(
                                                                      colors: [
                                                                    primary,
                                                                    secondary
                                                                  ])),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "09m-11m",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              gradient:
                                                                  LinearGradient(
                                                                      colors: [
                                                                    primary,
                                                                    secondary
                                                                  ])),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "11m-20m",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              gradient:
                                                                  LinearGradient(
                                                                      colors: [
                                                                    primary,
                                                                    secondary
                                                                  ])),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "20m-30m",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5)),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                          4,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Sleep",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: black),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Flexible(
                                                child: LineChart(sleepData())),
                                          ],
                                        ),
                                      )),
                                  SizedBox(height: 30),
                                  Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                          4,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Calories",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: black),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                gradient:
                                                    LinearGradient(colors: [
                                                  fourthColor,
                                                  primary.withOpacity(0.5),
                                                ]),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: primary,
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    "200 kal,",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: white),
                                                  )),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "workout progress",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "weeky",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: black,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: LineChart(workoutProgressData()),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lastest workout",
                    style: TextStyle(color: black),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(latestWorkoutJson.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          latestWorkoutJson[index]['img']))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Fullbody workout",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Fullbody workout",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Stack(
                                    children: [
                                      Container(
                                        width: size.width,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: bgTextField),
                                      ),
                                      Container(
                                        width: size.width * 0.2,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            gradient: LinearGradient(
                                                colors: [secondary, primary])),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                              color: primary,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
