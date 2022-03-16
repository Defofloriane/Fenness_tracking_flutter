// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:fennesstracking/data/latest.dart';
import 'package:fennesstracking/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodayTargetDetailPage extends StatefulWidget {
  const TodayTargetDetailPage({Key? key}) : super(key: key);

  @override
  State<TodayTargetDetailPage> createState() => _TodayTargetDetailPageState();
}

class _TodayTargetDetailPageState extends State<TodayTargetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: black.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: black,
                  ),
                ),
              ),
            ),
            Text(
              "Activity Traker",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: black.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Icon(
                    Icons.iso_outlined,
                    color: black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: secondary.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today Target",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              secondary,
                              primary,
                            ]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 18,
                            color: white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  SvgPicture.asset("assets/images/glass.svg"),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Water Intake",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Flexible(
                          child: Container(
                            height: 65,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/foot_step.svg"),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Food Steps",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activity progress",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: black),
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welky",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.keyboard_arrow_down_sharp, color: white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(weekly.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Flexible(
                                child: Stack(
                              children: [
                                Container(
                                  width: 20,
                                  height: size.height,
                                  decoration: BoxDecoration(
                                    color: bgTextField,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    width: 20,
                                    height:
                                        size.height * weekly[index]['count'],
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: weekly[index]['color']),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                            Text(weekly[index]['day'])
                          ],
                        ),
                      );
                    })),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lastest Activity",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Seen more",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
                children: List.generate(latestActivityJson.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage(latestActivityJson[index]['img']))),
                        ),
                        Column(
                          children: [
                            Text(
                              latestActivityJson[index]['title'],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: black,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              latestActivityJson[index]['time_ago'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.share_sharp),
                      ],
                    ),
                  ),
                ),
              );
            })),
          ],
        ),
      ),
    );
  }
}
