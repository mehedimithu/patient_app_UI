import 'package:flutter/material.dart';

import 'components/prescriptions.dart';
import 'components/treatment.dart';


class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
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
                tabs: [Tab(text: "PRESCRIPTIONS"), Tab(text: "TREATMENT")],
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
          Prescriptions(),
          Treatment(),

        ],
      ),
    );
  }
}
