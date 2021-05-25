import 'package:flutter/material.dart';

class Others extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a3ff),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 414,
                color: Colors.white,
                child: ListTile(
                  leading: Image.asset(
                    'assets/icons/vector_1.png',
                    fit: BoxFit.cover,
                  ),
                  title: Text('Md. Saifur Rahman'),
                  subtitle: Text('0130-2333200'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5,left: 8,right: 8),
                width: 398,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Emergency Contact'),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Contact Name",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "M. A Hasan",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Contact Number",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "01725173546",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: "Present Address",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "Dhaka",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: "Permenant Address",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "Dhaka",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Division",
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              hintText: "Dhaka",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "District",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "Dhaka",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: "NID",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "19809298204821984",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Diagnosis Type",
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              hintText: "Cytopathology",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Diagnosis date",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "23 Apr 2018",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
