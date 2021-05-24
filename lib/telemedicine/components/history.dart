import 'package:flutter/material.dart';
import 'package:user_app/telemedicine/components/call_adoctor.dart';

class History extends StatefulWidget {
  const History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
              'Call History',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
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
                        subtitle: Text('Duration 4:26\n0171234434'),
                        trailing: InkWell(
                          child: Image.asset(
                            'assets/icons/redial.png',
                            fit: BoxFit.fill,
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CallADoctor()));
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
