import 'package:flutter/material.dart';

class Treatment extends StatefulWidget {
  @override
  _TreatmentState createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('assets/images/vector.png'),
                    ),
                    title: Text('Full Name'),
                    subtitle: Text('PID'),
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            hintText: "Search what do you want?",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Card(
                    elevation: 3,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 26,
                            backgroundImage:
                            AssetImage('assets/images/img.png'),
                          ),
                          title: Text('Lab Test'),
                          subtitle: Text('Visit Date: 17 Feb 2021'),
                          trailing: GestureDetector(
                            onTap: () {
                              // Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 26,
                            backgroundImage:
                            AssetImage('assets/images/img.png'),
                          ),
                          title: Text('Lab Test'),
                          subtitle: Text('Visit Date: 17 Feb 2021'),
                          trailing: GestureDetector(
                            onTap: () {
                              // Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 26,
                            backgroundImage:
                            AssetImage('assets/images/img.png'),
                          ),
                          title: Text('Lab Test'),
                          subtitle: Text('Visit Date: 17 Feb 2021'),
                          trailing: GestureDetector(
                            onTap: () {
                              // Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
