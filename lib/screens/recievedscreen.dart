import 'dart:io';

import 'package:anythings/global/modals.dart';
import 'package:flutter/material.dart';

class RecievedScreen extends StatefulWidget {
  @override
  _RecievedScreenState createState() => _RecievedScreenState();
}

class _RecievedScreenState extends State<RecievedScreen> {
  bool packed = true;

  bool modified = false;

  bool switchButton = true;

  bool switchButtonyn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List 01"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(15)),
              // width: width / 2,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Center(child: Text("List-01")
                        // TextField(
                        //   decoration: InputDecoration(
                        //       hintText: "List-01", border: InputBorder.none),
                        // ),
                        )),
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Start Process",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Center(
                      child: Switch(
                    value: switchButton,
                    onChanged: (value) {
                      setState(() {
                        switchButton = value;
                      });
                    },
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                  )),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Visible",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Center(
                      child: Switch(
                    value: switchButtonyn,
                    onChanged: (value) {
                      setState(() {
                        switchButtonyn = value;
                      });
                    },
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                  )),
                ],
              ),
              buildTitle(context),
              buildseries(context, Product(1, false), 0),
              buildseries(context, Product(1, false), 0),
              buildseries(context, Product(1, false), 0),
            ],
          ))
        ],
      ),
    );
  }

  Padding buildseries(BuildContext context, Product e, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Row(
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 40,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Text(
                      "${index + 1}",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                    constraints: e.camera == true
                        ? BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.width / 1.5,
                          )
                        : BoxConstraints(minHeight: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: e.camera == true
                        ? Image.file(File(e.path.text))
                        : Center(child: Text("e.path.text"))),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 60,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child: TextField(
                  decoration: InputDecoration(hintText: "12 Kg"),
                )),
              ),
              SizedBox(
                width: 2,
              ),
              Checkbox(
                value: packed,
                onChanged: (value) {
                  setState(() {
                    packed = value;
                  });
                },
                activeColor: Colors.blue,
              ),
              Container(
                width: 80,
                child: Checkbox(
                  value: modified,
                  onChanged: (value) {
                    setState(() {
                      modified = value;
                    });
                  },
                  activeColor: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: Container(
        // color: Colors.blue,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blue)),
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Row(
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 40,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: Text(
                  "S.No.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        "Product Name",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 30,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: Text(
                  "Qty",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),

              Container(
                // width: 60,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: FittedBox(
                  child: Text(
                    "Modified Qty",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 50,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: FittedBox(
                  child: Text(
                    "Packed",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // Container(
              //   height: 25,
              //   width: 25,
              //   // decoration: BoxDecoration(
              //   //     borderRadius: BorderRadius.circular(30),
              //   //     color: Colors.lightBlueAccent),
              //   child: Icon(
              //     Icons.add,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
