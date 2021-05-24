import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cancer extends StatelessWidget {
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
                    TextField(
                      textAlign: TextAlign.start,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: "Cancer Type",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "Lip",
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
                        labelText: "Cancer Subtype",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "Tongue, Nose",
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
                        labelText: "Histopathological Type",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "non-salivary gland",
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
                        labelText: "Tumor Classification",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "Acantholytic squamous cell carcinoma",
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
                        labelText: "Grading",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle( fontWeight: FontWeight.bold),
                        hintText: "GX-Cannot be assessed",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    Text("cTNM"),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "CT",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "T1",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "CN",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "N0",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "CM",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "M0",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Stage",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "I",
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("pTNM"),
                        TextField(
                          textAlign: TextAlign.start,
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            labelText: "Neoadjuvant Chemotherapy",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle( fontWeight: FontWeight.bold),
                            hintText: "Yes/No",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "CT",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "T1",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "CN",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "N0",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "CM",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "M0",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (val) {},
                            decoration: InputDecoration(
                              labelText: "Stage",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle( fontWeight: FontWeight.bold),
                              hintText: "I",
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
