import 'package:flutter/material.dart';
import 'package:user_app/doctor/components/doctor.dart';
import 'package:user_app/doctor/doctor_list.dart';
import 'package:user_app/profile/profile.dart';
import 'package:user_app/telemedicine/ui/telemedicine_ui.dart';

class Dashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff00a3ff),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Color(0xff00a3ff) ,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.exit_to_app),
          ),
        ],
        title: Text("Dashboard"),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.apps),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 104,
                      width: 414,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(
                            leading: Image.asset(
                              'assets/icons/vector_1.png',
                              fit: BoxFit.cover,
                            ),
                            title: Text('User Name'),
                            subtitle: Text('Phone'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => DoctorList()));
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            child: GridTile(
                              child: Image.asset(
                                'assets/icons/vector_2.png',
                                alignment: Alignment.center,
                              ),
                              footer: Text(
                                'Doctors',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff545454),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.32,
                                ),
                              ),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            child: GridTile(
                              child: Image.asset(
                                'assets/icons/vector_5.png',
                                alignment: Alignment.center,
                              ),
                              footer: Center(
                                child: Text(
                                  'History',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff545454),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.32,
                                  ),
                                ),
                              ),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Telemedicine()));
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            child: GridTile(
                              child: Image.asset(
                                'assets/icons/vector_4.png',
                                alignment: Alignment.center,
                              ),
                              footer: Center(
                                  child: Text(
                                'Telemedicine',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff545454),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.32,
                                ),
                              )),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Profile()));
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            child: GridTile(
                              child: Image.asset(
                                'assets/icons/vector_1.png',
                                alignment: Alignment.center,
                              ),
                              footer: Text(
                                'My Profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff545454),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.32,
                                ),
                              ),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
