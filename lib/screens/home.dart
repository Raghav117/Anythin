import 'package:anythings/screens/contact_screen.dart';
import 'package:anythings/screens/createnewlist.dart';
import 'package:anythings/screens/oldvehicle.dart';
import 'package:anythings/screens/options.dart';
import 'package:anythings/screens/profile.dart';
import 'package:anythings/screens/recievedlist.dart';
import 'package:anythings/screens/recievedscreen.dart';
import 'package:anythings/screens/sharedDetails.dart';
import 'package:anythings/screens/uploadnewlist.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'package:anythings/screens/sharescreen.dart';
import 'enquiry.dart';
import 'mechanic.dart';
import 'oldlist.dart';
import 'settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var scaffoldKey;
  final GlobalKey<ScaffoldState> drawerKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: drawerKey,
        drawer: Drawer(
          // key: drawerKey,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserAccountsDrawerHeader(
                          currentAccountPicture: CircleAvatar(),
                          accountName: Text("Mr. Srikant Ji"),
                          accountEmail: Text("raghavgarg.81.rg@gmail.com")),
                      MaterialButton(
                        onPressed: () {},
                        splashColor: Colors.lightBlueAccent,
                        hoverColor: Colors.lightBlueAccent,
                        highlightColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(

                            // borderRadius: BorderRadius.circular(20),
                            // side: BorderSide(color: Colors.white, width: 0.5)
                            ),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "Active List",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return RecievedList();
                            },
                          ));
                        },
                        splashColor: Colors.lightBlueAccent,
                        hoverColor: Colors.lightBlueAccent,
                        highlightColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(

                            // borderRadius: BorderRadius.circular(20),
                            // side: BorderSide(color: Colors.white, width: 0.5)
                            ),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "Recieved List",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return OldList();
                              },
                            ));
                          },
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Old List",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      MaterialButton(
                          onPressed: () {},
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "User Ratings and Reviews",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Settings();
                              },
                            ));
                          },
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Settings",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Enquiry();
                              },
                            ));
                          },
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Enquiry",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Profile();
                              },
                            ));
                          },
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Profile",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Mechanic();
                              },
                            ));
                          },
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Mechanic",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return OldVehicle();
                              },
                            ));
                          },
                          splashColor: Colors.lightBlueAccent,
                          hoverColor: Colors.lightBlueAccent,
                          highlightColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(

                              // borderRadius: BorderRadius.circular(20),
                              // side: BorderSide(color: Colors.white, width: 0.5)
                              ),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "Old Vehicle",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                constraints: BoxConstraints(),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // if (drawerKey.currentState.isDrawerOpen) {
                            //   drawerKey.currentState.openEndDrawer();
                            // } else {
                            drawerKey.currentState.openDrawer();
                            // }
                            // drawerKey.openDrawer();
                            // scaffoldKey.currentState
                            // Scaffold.of(context).openDrawer();
                            // showDialog(
                            //   context: context,
                            //   builder: (context) {
                            //     return AlertDialog(
                            //       title: Column(
                            //         children: [
                            //           FlatButton(
                            //               onPressed: () {},
                            //               child: Text(
                            //                 "Active List",
                            //                 style: TextStyle(fontSize: 20),
                            //               )),
                            //           FlatButton(
                            //               onPressed: () {},
                            //               child: Text(
                            //                 "Recieved List",
                            //                 style: TextStyle(fontSize: 20),
                            //               )),
                            //           FlatButton(
                            //               onPressed: () {
                            //                 Navigator.of(context)
                            //                     .push(MaterialPageRoute(
                            //                   builder: (context) {
                            //                     return OldList();
                            //                   },
                            //                 ));
                            //               },
                            //               child: Text(
                            //                 "Old List",
                            //                 style: TextStyle(fontSize: 20),
                            //               )),
                            //           FlatButton(
                            //               onPressed: () {},
                            //               child: Text(
                            //                 "User ratings and reviews",
                            //                 style: TextStyle(fontSize: 20),
                            //               )),
                            //           SizedBox(
                            //             height: 20,
                            //           ),
                            //           FlatButton(
                            //               onPressed: () {
                            //                 Navigator.of(context)
                            //                     .push(MaterialPageRoute(
                            //                   builder: (context) {
                            //                     return Settings();
                            //                   },
                            //                 ));
                            //               },
                            //               child: Text(
                            //                 "Settings",
                            //                 style: TextStyle(
                            //                     fontSize: 20,
                            //                     fontWeight: FontWeight.bold),
                            //               )),
                            //         ],
                            //       ),
                            //     );
                            //   },
                            // );

                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) {
                            //     return Options();
                            //   },
                            // ));
                            // showDialog(
                            //   context: context,
                            //   builder: (context) => AlertDialog(
                            //     title: Column(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Text("List"),
                            //         SizedBox(
                            //           height: 15,
                            //         ),
                            //         Text(
                            //           "Active List",
                            //           style: TextStyle(fontSize: 15),
                            //         ),
                            //         Text(
                            //           "Recieved List",
                            //           style: TextStyle(fontSize: 15),
                            //         ),
                            //         Text(
                            //           "Old List",
                            //           style: TextStyle(fontSize: 15),
                            //         ),
                            //         Text(
                            //           "User ratings and reviews",
                            //           style: TextStyle(fontSize: 15),
                            //         ),
                            //         SizedBox(
                            //           height: 15,
                            //         ),
                            //         Text("Settings"),
                            //         SizedBox(
                            //           height: 15,
                            //         ),
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceBetween,
                            //           children: [
                            //             Text(
                            //               "Notification",
                            //               style: TextStyle(fontSize: 15),
                            //             ),
                            //             Checkbox(value: true, onChanged: (value) {})
                            //           ],
                            //         ),
                            //         SizedBox(
                            //           height: 10,
                            //         ),
                            //         Text(
                            //           "Block Contact",
                            //           style: TextStyle(fontSize: 15),
                            //         ),
                            //         SizedBox(
                            //           height: 10,
                            //         ),
                            //         Text(
                            //           "Freeze Out",
                            //           style: TextStyle(fontSize: 15),
                            //         ),
                            //         Slider(
                            //           activeColor: Colors.blue,
                            //           min: 0,
                            //           max: 60,
                            //           label: "Minutes",
                            //           onChangeEnd: (value) {},
                            //           onChangeStart: (value) {},
                            //           onChanged: (value) {},
                            //           value: 25,
                            //         ),
                            //         SizedBox(
                            //           height: 10,
                            //         ),
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceBetween,
                            //           children: [
                            //             Text(
                            //               "Are You Seller",
                            //               style: TextStyle(fontSize: 15),
                            //             ),
                            //             Checkbox(value: true, onChanged: (value) {})
                            //           ],
                            //         ),
                            //         SizedBox(
                            //           height: 10,
                            //         ),
                            //         // Row(
                            //         //   mainAxisAlignment:
                            //         //       MainAxisAlignment.spaceBetween,
                            //         //   children: [
                            //         //     Text(
                            //         //       "Are You Buyer",
                            //         //       style: TextStyle(fontSize: 15),
                            //         //     ),
                            //         //     Checkbox(value: true, onChanged: (value) {})
                            //         //   ],
                            //         // ),
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceBetween,
                            //           children: [
                            //             Text(
                            //               "Visible Contact Number \nto shared person",
                            //               style: TextStyle(fontSize: 15),
                            //             ),
                            //             Checkbox(value: true, onChanged: (value) {})
                            //           ],
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // );
                          },
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return CreateNewList();
                              },
                            ));
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                constraints: BoxConstraints(
                                    minWidth:
                                        MediaQuery.of(context).size.width / 3,
                                    minHeight: 40),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0.5)),
                                child: Center(
                                  child: Text(
                                    "Create new list",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 25,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0.5)),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return UploadNewList();
                              },
                            ));
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                constraints: BoxConstraints(
                                    minWidth:
                                        MediaQuery.of(context).size.width / 3,
                                    minHeight: 40),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0.5)),
                                child: Center(
                                  child: Text(
                                    "Upload new list",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await ImagePicker.pickImage(
                                      source: ImageSource.gallery);
                                },
                                child: Container(
                                  height: 40,
                                  width: 25,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 0.5)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    )
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(
                    //             Icons.circle,
                    //             size: 10,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //         Text(
                    //           "Personal",
                    //           style: TextStyle(color: Colors.white),
                    //         )
                    //       ],
                    //     ),
                    //     Row(
                    //       children: [
                    //         IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(
                    //             Icons.blur_circular,
                    //             size: 10,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //         Text(
                    //           "Business",
                    //           style: TextStyle(color: Colors.white),
                    //         )
                    //       ],
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
              Column(
                children: [
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                  tile(context),
                ],
              )
            ],
          ),
        ));
  }
}

Widget tile(context) {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return RecievedScreen();
            },
          ));
        },
        onLongPress: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)), //this right here
              child: Container(
                height: 500.0,
                width: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text("Share"),
                      trailing: Icon(Icons.share),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ShareScreen();
                          },
                        ));
                      },
                    ),
                    ListTile(
                      title: Text("Shared Details"),
                      trailing: Icon(Icons.share_sharp),
                      onTap: () {
                        Share.share('check out my website https://example.com');
                      },
                    ),
                    // ListTile(
                    //   title: Text("Details"),
                    //   trailing: Icon(Icons.details),
                    //   onTap: () {},
                    // ),
                    ListTile(
                      title: Text("Lock"),
                      trailing: Icon(Icons.lock),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text("Edit"),
                      trailing: Icon(Icons.edit),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CreateNewList();
                          },
                        ));
                      },
                    ),
                    ListTile(
                      title: Text("Delete"),
                      trailing: Icon(Icons.delete),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => Dialog(
                                    child: Container(
                                  width: 200,
                                  color: Colors.white,
                                  height: 200,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FlatButton(
                                              onPressed: () {},
                                              child: Text("Yes")),
                                          FlatButton(
                                              onPressed: () {},
                                              child: Text("No")),
                                        ],
                                      ),
                                    ],
                                  ),
                                )));
                      },
                    ),
                    ListTile(
                      title: Text("Properties"),
                      trailing: Icon(Icons.location_city),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 75,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Birthday list",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text("Create Date",
                          style: TextStyle(
                              //  color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) {
                        //         return ShareScreen();
                        //       },
                        //     ));
                        //   },
                        //   child: Icon(
                        //     Icons.share,
                        //     color: Colors.grey,
                        //     size: 25,
                        //   ),
                        // ),

                        //! *********************  Reuse Code  *************************
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) {
                        //         return SharedDetails();
                        //       },
                        //     ));
                        //   },
                        //   child: Icon(
                        //     Icons.access_alarm_rounded,
                        //     color: Colors.black,
                        //     size: 20,
                        //   ),
                        // )
                      ]),
                      Text(
                        "In Process: 12/30",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
}
