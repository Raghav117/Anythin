import 'package:flutter/material.dart';

class Enquiry extends StatefulWidget {
  @override
  _EnquiryState createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("Enquiry"),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              SizedBox(
                height: height / 12,
              ),
              Center(
                  child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Container(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Your Name",
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
                                  hintText: "Vehical Model",
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  prefixIcon: Icon(
                                    Icons.model_training,
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
                              // obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Message",
                                  // suffixIcon: Icon(Icons.remove_red_eye),
                                  prefixIcon: Icon(
                                    Icons.message,
                                    color: Colors.lightBlue,
                                  )),
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
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ))))
            ])));
  }
}
