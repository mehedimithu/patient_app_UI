import 'package:flutter/material.dart';
import 'package:user_app/doctor/components/doctor.dart';

class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  List<int> list = List();

  @override
  void initState() {
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a3ff),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xff00a3ff),
        title: Text("Doctor List"),
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
            margin: EdgeInsets.only(left: 8, right: 8, top: 6),
            child: Card(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Doctor List',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 32),
              child: Card(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/vector_1.png',
                          fit: BoxFit.cover,
                        ),
                        title: Text('Name of ${list[index]}'),
                        subtitle: Text('BMDC\nOncologist\nHospital Name'),
                        trailing: InkWell(
                          child: Image.asset(
                            'assets/icons/img.png',
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Doctor()));
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
