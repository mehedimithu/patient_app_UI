import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
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
            margin: EdgeInsets.only(top: 10,left: 8,right: 8),
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
                    labelText: "Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle( fontWeight: FontWeight.bold),
                    hintText: "Dr. Ruhul Amin",
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
                          labelText: "Date of birth",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle( fontWeight: FontWeight.bold),
                          hintText: "5 Dec 1910",
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
                          labelText: "Gender",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle( fontWeight: FontWeight.bold),
                          hintText: "Male",
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
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle( fontWeight: FontWeight.bold),
                    hintText: "m@gmail.com",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
                SizedBox(height: 6),
                Text("Patients"),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.start,
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          labelText: "Total",
                          labelStyle: TextStyle( fontWeight: FontWeight.bold),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "12",
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
                          labelText: "Male",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle( fontWeight: FontWeight.bold),
                          hintText: "7",
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
                          labelText: "Female",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle( fontWeight: FontWeight.bold),
                          hintText: "5",
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
