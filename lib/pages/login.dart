import 'package:fennesstracking/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context);
    return SingleChildScrollView (
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Text(
                "Hey there",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
                  Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12,bottom: 6,top: 4),
                      child: Row(
                        children: [
                         // Icon(Icons.message_outlined),
                         Icon(LineIcons.envelope,color: black.withOpacity(0.5),),
                          SizedBox(width: 15,),
                          Flexible(
                            child: TextField(
                              cursorColor: Colors.black.withOpacity(0.5),
                              decoration: InputDecoration(
                                hintText: "Email",
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
              
              SizedBox(
                height: 15,
              ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12,bottom: 6,top: 4),
                      child: Row(
                        
                        children: [
                          //Icon(Icons.business_center_sharp),
                          Icon(LineIcons.lock,color: black.withOpacity(0.5),),
                          SizedBox(width: 15,),
                          Flexible(
                            child: TextField(
                              cursorColor: Colors.black.withOpacity(0.5),
                              decoration: InputDecoration(
                                hintText: "password"
                              ),
                            ),
                          ),
                            Icon(LineIcons.eye,color: black.withOpacity(0.5),),
                        ],
                      ),
                    ),
              ),

              SizedBox(
                height: 10,
              ),
              Text("forgort password?",style: TextStyle(fontSize: 15),),
              SizedBox(
                height: 90,
              ),
              
                  Column(
                    children:[  InkWell(
                       onTap: () {
              Navigator
                  .pushNamed(context,"/root_app");
            },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                              Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 25,),
                             SizedBox(width: 10,),
                             Text("Login",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                             ),
                            
                             //Icon(Icons.keyboard_backspace_sharp,color: Colors.white,),
                          ],
                        
                        ),
                      ),
                    ),
                    ],
                  ),
                
                SizedBox(height: 20,),
                Row(
                  children: [
                    Flexible(
                      child: Divider(
                        thickness: 0.8,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("Or"),
                     SizedBox(width: 5,),
                        Flexible(
                      child: Divider(
                        thickness: 0.8,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: black.withOpacity(0.1)),
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/images/google_icon.svg",width: 20,),
                      ),
                    ),
                    SizedBox(width: 15,),
                      Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: black.withOpacity(0.1)),
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/images/facebook_icon.svg",width: 20,),
                      ),
                    ),
                  ],
                ),
                ],
          ),
        ),
      ),
    );
  }
}
