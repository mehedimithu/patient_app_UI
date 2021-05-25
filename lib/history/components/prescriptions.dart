import 'package:flutter/material.dart';

class Prescriptions extends StatefulWidget {
  @override
  _PrescriptionsState createState() => _PrescriptionsState();
}

class _PrescriptionsState extends State<Prescriptions> {
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
                    title: Text('msnjbsjbd'),
                    subtitle: Text('phone'),
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
                            hintText: "Search",
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
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                AssetImage('assets/images/img.png'),
                              ),
                              title: Text('Visit Date:  '),
                              subtitle: Text('Next Visit: After 2 weeks'),
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
                              title: Text('Visit Date:  '),
                              subtitle: Text('Next Visit: After 2 weeks'),
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
                              title: Text('Visit Date:  '),
                              subtitle: Text('Next Visit: After 2 weeks'),
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
                    ],
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
