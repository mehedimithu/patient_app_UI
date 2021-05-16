import 'package:flutter/material.dart';

class NewCall extends StatefulWidget {
  const NewCall({Key key}) : super(key: key);

  @override
  _NewCallState createState() => _NewCallState();
}

class _NewCallState extends State<NewCall> {
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
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
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
                  title: Text('Name'),
                  subtitle: Text('Phone'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 5, right: 8),
            child: Card(
              child: TextField(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Select Doctor',
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
                        subtitle: Text('BMDC\nOncologist'),
                        trailing: Image.asset(
                          'assets/icons/img.png',
                          fit: BoxFit.cover,
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
