import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mtabflutter/AppColors.dart';
import 'package:mtabflutter/viewmodels/splash_view_model.dart';
import 'package:provider/provider.dart';

class DeshBoard extends StatefulWidget {
  const DeshBoard({super.key});

  @override
  _DeshBoardState createState() => _DeshBoardState();
}

class _DeshBoardState extends State<DeshBoard> {
  TextEditingController userNameCt =
      TextEditingController(text: 'bbsr.susanta');
  TextEditingController passwordCt = TextEditingController(text: 'maruti123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(color: DESHBOARD_BG_COLOR),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                        'assets/images/deshborad_top_img.png' // Adjust the width as needed
                        )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/mail.png'),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Image.asset('assets/images/ic_approval_status.png',height: 30,width: 40,fit: BoxFit.fill,)),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset('assets/images/ic_audio_list.png',height: 30,width: 40,fit: BoxFit.fill,)),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child:  SizedBox(
                        width: 350,
                        child: Container(
                            margin: EdgeInsets.only(right: 10.0),
                            alignment: Alignment.centerLeft,
                            height: 60,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Scan Reg No/QR Code",
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.grey),
                                ),
                                Icon(Icons.search, size: 35),
                              ],
                            )))),
                 Container(
                   margin: EdgeInsets.only(right: 10,left: 5),
                   child: ElevatedButton(
                         onPressed: () {},
                         child: SizedBox(
                             width: 40,
                             height: 40,
                             child: Image.asset('assets/images/logout.png')),
                         style: ElevatedButton.styleFrom(
                             minimumSize: Size(50, 50), // Set this
                             padding: EdgeInsets.zero,
                             shape: RoundedRectangleBorder(
                                 borderRadius:
                                 BorderRadius.circular(12)) // and this
                         )
                     )
                 )

                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child:     Text(
                      "User ID: test@123",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child:  Text("Version : 1.1",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    )

                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/jobcard.png',
                                height: 100, width: 90, fit: BoxFit.fill),
                            Container(
                                alignment: Alignment.center,
                                width: 250,
                                margin: EdgeInsets.only(top: 10),
                                child: Text("MY Jobcards",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            30 /*,fontWeight: FontWeight.bold*/)))
                          ],
                        ),
                        Center(
                          child: Container(
                              height: 200,
                              width: 3,
                              margin: EdgeInsets.only(right: 25, left: 25),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.blue,
                                  Colors.white,
                                  Colors.blue,
                                ],
                              ))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/ic_appointments.png',
                                height: 100, width: 90, fit: BoxFit.fill),
                            Container(
                                alignment: Alignment.center,
                                width: 250,
                                margin: EdgeInsets.only(top: 10),
                                child: Text("MY Appointments",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            30 /*,fontWeight: FontWeight.bold*/)))
                          ],
                        ),
                        Center(
                          child: Container(
                              height: 200,
                              width: 3,
                              margin: EdgeInsets.only(right: 25, left: 25),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.blue,
                                  Colors.white,
                                  Colors.blue,
                                ],
                              ))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/deskboard_img.png',
                                fit: BoxFit.fill),
                            Container(
                                alignment: Alignment.center,
                                width: 250,
                                margin: EdgeInsets.only(top: 10),
                                child: Text("Vehicle History",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            30 /*,fontWeight: FontWeight.bold*/)))
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/ic_notification.png',
                                  height: 100, width: 100, fit: BoxFit.fill),
                              Container(
                                  alignment: Alignment.center,
                                  width: 250,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("MY Notification",textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              30 /*,fontWeight: FontWeight.bold*/)))
                            ],
                          ),
                          Center(
                            child: Container(
                                height: 200,
                                width: 3,
                                margin: EdgeInsets.only(right: 25, left: 25),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blue,
                                    Colors.white,
                                    Colors.blue,
                                  ],
                                ))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  'assets/images/ic_suzuki_connect_grid.png',
                                  height: 100,
                                  width: 90,
                                  fit: BoxFit.fill),
                              Container(
                                  alignment: Alignment.center,
                                  width: 250,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("Suzuki Connect Request Form",textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              30 /*,fontWeight: FontWeight.bold*/)))
                            ],
                          ),
                          Center(
                            child: Container(
                                height: 200,
                                width: 3,
                                margin: EdgeInsets.only(right: 25, left: 25),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blue,
                                    Colors.white,
                                    Colors.blue,
                                  ],
                                ))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  'assets/images/ic_suzuki_connect_grid.png',
                                  height: 100,
                                  width: 90,
                                  fit: BoxFit.fill),
                              Container(
                                  alignment: Alignment.center,
                                  width: 250,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("Suzuki Connect Drivable Advice",textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              30 /*,fontWeight: FontWeight.bold*/)))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
