import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:user_app/auth/home/ui/dashboard.dart';
import 'package:user_app/telemedicine/components/history.dart';
import 'package:user_app/telemedicine/components/new_call.dart';

class Telemedicine extends StatefulWidget {
  const Telemedicine({Key key}) : super(key: key);

  @override
  _TelemedicineState createState() => _TelemedicineState();
}

class _TelemedicineState extends State<Telemedicine>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // initialise it here
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a3ff),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Color(0xff00a3ff),
        bottom: PreferredSize(
          preferredSize: Size(100, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                controller: _tabController,
                isScrollable: false,
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 5,
                tabs: [Tab(text: "NEW CALL"), Tab(text: "HISTORY")],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/icons/vector_6.png'),
              ),
              onPressed: () {},
            ),
          ),
        ],
        title: Text("Telemedicine"),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          NewCall(),
          History(),
        ],
      ),
    );
  }
}
