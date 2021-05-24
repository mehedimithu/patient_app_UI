import 'package:flutter/material.dart';
import 'package:user_app/doctor/components/basic.dart';
import 'package:user_app/doctor/components/clinical.dart';

import 'components/basicinfo.dart';
import 'components/cancer.dart';
import 'components/others.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // initialise it here
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
                tabs: [Tab(text: "BASIC"), Tab(text: "CANCER"), Tab(text: "OTHERS") ],
              ),
            ],
          ),
        ),
        title: Text("My Profile"),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BasicInfo(),
          Cancer(),
          Others(),
        ],
      ),
    );
  }
}
