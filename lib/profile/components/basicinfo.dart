import 'package:flutter/material.dart';

class BasicInfo extends StatelessWidget {
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
                margin: EdgeInsets.only(top: 5, left: 8, right: 8),
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
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "Md. Saifur Rahman",
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
                              labelText: "Age",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
                              hintText: "45",
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
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Blood Group",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
                              hintText: "A+",
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
                              labelText: "Religion",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
                              hintText: "Islam",
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
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Father\'s Name",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
                              hintText: "Abdullah",
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
                              labelText: "Mothers\'s name ",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle(fontWeight: FontWeight.bold),
                              hintText: "Halima",
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
                        labelText: "Birthplace",
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
                    TextField(
                      textAlign: TextAlign.start,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: "Tobacco",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "No",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
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
