import 'dart:io';
import 'dart:ui';
import 'package:anythings/global/modals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Mechanic extends StatefulWidget {
  @override
  _MechanicState createState() => _MechanicState();
}

class _MechanicState extends State<Mechanic> {
  var _image;
  final picker = ImagePicker();
  Future getImage(bool camera) async {
    final pickedFile = await picker.getImage(
        source: camera == true ? ImageSource.camera : ImageSource.gallery);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Become a Mechanic"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Shop Name",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.lightBlue,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   print(value);
                        //   if (value.length > 10) {
                        //     return "Invalid Number";
                        //   }
                        //   return "";
                        // },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Your Mobile Number",
                            prefixIcon: Icon(
                              Icons.mobile_friendly,
                              color: Colors.lightBlue,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // enabledBorder: InputBorder.none,
                            hintText: "Enter Your Email Address",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.lightBlue,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Address",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Experience",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter city",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DropdownButton(
                        hint: Text("Select State"),
                        items: [
                          DropdownMenuItem(
                            child: Text("AndhraPradesh"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Telanga"),
                            value: 2,
                          )
                        ],
                        onChanged: (va) {}),
                    SizedBox(
                      height: 5,
                    ),
                    DropdownButton(
                        hint: Text("Select Country"),
                        items: [
                          DropdownMenuItem(
                            child: Text("India"),
                            value: 1,
                          ),
                        ],
                        onChanged: (va) {}),
                    SizedBox(
                      height: 5,
                    ),
                    DropdownButton(
                        hint: Text("Select District"),
                        items: [
                          DropdownMenuItem(
                            child: Text("AndhraPradesh"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Telanga"),
                            value: 2,
                          )
                        ],
                        onChanged: (va) {}),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Zip",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Fax Number",
                            prefixIcon: Icon(
                              Icons.format_textdirection_l_to_r,
                              color: Colors.lightBlue,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Certified"),
                    Row(
                      children: [
                        Spacer(),
                        Text("Yes"),
                        Checkbox(
                          value: true,
                          onChanged: (v) {},
                        ),
                        Row(
                          children: [
                            Text("No"),
                            Checkbox(
                              value: false,
                              onChanged: (v) {},
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        getImage(false);
                        setState(() {});
                      },
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Text(
                            "Select Logo",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: _image != null
                          ? Image.file(_image)
                          : Icon(
                              Icons.person,
                              size: 50,
                            ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        color: Colors.lightBlue,
                        child: Container(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
