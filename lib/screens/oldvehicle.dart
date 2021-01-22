import 'package:flutter/material.dart';

class OldVehicle extends StatefulWidget {
  @override
  _OldVehicleState createState() => _OldVehicleState();
}

class _OldVehicleState extends State<OldVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        children: [
          MaterialButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) {
                //     return Enquiry();
                //   },
                // ));
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
                  "+ Add New",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          buildTitle(context),
          Expanded(
            child: ListView(
              children: [
                buildseries(context, 2),
                buildseries(context, 3),
                buildseries(context, 4),
                buildseries(context, 2),
                buildseries(context, 3),
                buildseries(context, 4),
                buildseries(context, 2),
                buildseries(context, 3),
                buildseries(context, 4),
                buildseries(context, 2),
                buildseries(context, 3),
                buildseries(context, 4),
                buildseries(context, 4),
                buildseries(context, 2),
                buildseries(context, 3),
                buildseries(context, 4),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          // color: Colors.blue,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.blue)),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              // scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 60,
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
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        "Registration Number",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 60,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Text(
                    "Status",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),

                Container(
                  width: 50,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Text(
                    "Edit",
                    style: TextStyle(color: Colors.white),
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
                  child: Text(
                    "Delete",
                    style: TextStyle(color: Colors.white),
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
      ),
    );
  }

  buildseries(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          // color: Colors.blue,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.blue)),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              // scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 60,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Text(
                    index.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        "195DJILLNG55",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  width: 60,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Text(
                    "True",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),

                Container(
                    width: 50,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(5),
                    //     border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.edit,
                      color: Colors.blue,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 50,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(5),
                    //     border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),

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
      ),
    );
  }
}
