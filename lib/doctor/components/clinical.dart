import 'package:flutter/material.dart';

class Clinical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a3ff),
      body: Column(
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
            margin: EdgeInsets.only(top: 10, left: 8, right: 8),
            width: 398,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  textAlign: TextAlign.start,
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    labelText: "BMDC",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    hintText: "A1213",
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
                    labelText: "NID",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    hintText: "191323534343",
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
                          labelText: "DIVISION",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                    labelText: "Specialty",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    hintText: "Oncologist",
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
                    labelText: "Clinic",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    hintText: "Dhaka medical college hospital",
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
                          labelText: "Qualification 1",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "MBBS",
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
                          labelText: "Qualification 2",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          hintText: "FCPS",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
