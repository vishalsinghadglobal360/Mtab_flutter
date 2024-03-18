import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mtabflutter/AppColors.dart';

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
    var fontSize = 16.0;
    final width = MediaQuery.of(context).size.width.toInt();
    if (width <= 480) {
      fontSize = 16.0;
    } else if (width > 480 && width <= 960) {
      fontSize = 16.0;
    } else {
      fontSize = 28.0;
    }

    return Scaffold(
      backgroundColor: DESHBOARD_BG_COLOR,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                            width: MediaQuery.of(context).size.width * 0.35,
                            fit: BoxFit.fill,
                            'assets/images/deshborad_top_img.png'),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Image.asset(
                                'assets/images/ic_approval_status.png',
                                height: 20,
                                width: 30,
                                fit: BoxFit.fill,
                              )),
                          SizedBox(width: 10,),
                          Image.asset(
                            height: 20,
                            width: 30,
                            'assets/images/mail.png',
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10,),
                          Image.asset(
                            'assets/images/ic_audio_list.png',
                            height: 20,
                            width: 30,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 10,),
                          SizedBox(
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: 40,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Scan Reg No/QR Code",
                                        style: TextStyle(
                                            fontSize: 16.0, color: Colors.grey),
                                      ),
                                      Icon(Icons.search, size: 28,color: Colors.grey,),
                                    ],
                                  ))),
                          SizedBox(width: 10,),
                          ElevatedButton(
                              onPressed: () {},
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset('assets/images/logout.png')),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(40, 40), // Set this
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(12)) // and this
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "User ID: test@123",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(width: 10),
                      Text("Version : 1.1",
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                ),
                Flexible(
                  flex: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.06,
                                    height: MediaQuery.of(context).size.height * 0.10,
                                    child: Image.asset(
                                      'assets/images/jobcard.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.18,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("MY Jobcards",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: fontSize,
                                          )))
                                ],
                              ),
                              Center(
                                child: Container(
                                    height: MediaQuery.of(context).size.width * 0.10,
                                    width: 2,
                                    margin: EdgeInsets.only( left: 10,right: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            PRIMARY_COLOR,
                                            Colors.white,
                                            PRIMARY_COLOR,
                                          ],
                                        ))),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.06,
                                    height: MediaQuery.of(context).size.height * 0.10,
                                    child: Image.asset(
                                      'assets/images/ic_appointments.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.18,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("MY Appointments",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: fontSize,
                                          )))
                                ],
                              ),
                              Center(
                                child: Container(
                                    height: MediaQuery.of(context).size.width * 0.10,
                                    width: 2,
                                    margin: EdgeInsets.only( left: 10,right: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            PRIMARY_COLOR,
                                            Colors.white,
                                            PRIMARY_COLOR,
                                          ],
                                        ))),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.09,
                                    height: MediaQuery.of(context).size.height * 0.10,
                                    child: Image.asset(
                                      'assets/images/deskboard_img.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.18,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Vehicle History",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: fontSize,
                                          )))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.06,
                                    height:
                                    MediaQuery.of(context).size.height * 0.10,
                                    child: Image.asset(
                                      'assets/images/ic_notification.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.18,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("MY Notification",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: fontSize,
                                          )))
                                ],
                              ),
                              Center(
                                child: Container(
                                    height:
                                    MediaQuery.of(context).size.width * 0.10,
                                    width: 2,
                                    margin: EdgeInsets.only( left: 10,right: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            PRIMARY_COLOR,
                                            Colors.white,
                                            PRIMARY_COLOR,
                                          ],
                                        ))),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.08,
                                    height:
                                    MediaQuery.of(context).size.height * 0.12,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/images/ic_suzuki_connect_grid.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.18,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Suzuki Connect Request Form",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: fontSize,
                                          )))
                                ],
                              ),
                              Center(
                                child: Container(
                                    height:
                                    MediaQuery.of(context).size.width * 0.10,
                                    margin: EdgeInsets.only( left: 10,right: 10),
                                    width: 2,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            PRIMARY_COLOR,
                                            Colors.white,
                                            PRIMARY_COLOR,
                                          ],
                                        ))),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.08,
                                    height:
                                    MediaQuery.of(context).size.height * 0.12,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/images/ic_suzuki_connect_grid.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.18,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text("Suzuki Connect Drivable Advice",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: fontSize,
                                          )))
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )

                /*   Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
            width: MediaQuery.of(context).size.width * 0.50,
            child: Row(
              children: [
                Image.asset(
                    height: 50,
                    fit: BoxFit.fill,
                    'assets/images/deshborad_top_img.png')
              ],
            ),
                              ),
                              Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/mail.png'),
              Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Image.asset(
                    'assets/images/ic_approval_status.png',
                    height: 30,
                    width: 40,
                    fit: BoxFit.fill,
                  )),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/images/ic_audio_list.png',
                    height: 30,
                    width: 40,
                    fit: BoxFit.fill,
                  )),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: SizedBox(
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
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
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
                  margin: EdgeInsets.only(right: 10, left: 5),
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
                          )))
            ],
                              ))
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
                  child: Text(
                    "User ID: test@123",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text("Version : 1.1",
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
                          child: Text("MY Jobcards",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              )))
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
                          child: Text("MY Appointments",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              )))
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
                          child: Text("Vehicle History",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              )))
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
                            child: Text("MY Notification",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                )))
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
                            child: Text("Suzuki Connect Request Form",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                )))
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
                            child: Text("Suzuki Connect Drivable Advice",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)))
                      ],
                    ),
                  ],
                ),
              ),
            ],
                              )
                            ],
                          )*/
              ],
            ),
          )),
    );
  }
}
