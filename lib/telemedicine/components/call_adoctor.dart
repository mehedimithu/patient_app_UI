import 'package:flutter/material.dart';

class CallADoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a3ff),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Color(0xff00a3ff),
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
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8, right: 8, top: 7),
        width: 398,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.asset(
                'assets/icons/call.png',
                fit: BoxFit.fill,
              ),
              title: Text(
                'Call Dr. Ruhul Amin',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('0171781286'),
              trailing: IconButton(
                icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/icons/vector_6.png'),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Select call option',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'assets/icons/j.png',
                fit: BoxFit.fill,
              ),
              title: Text(
                'Mobile (Standard call charges apply)',
                style: TextStyle(fontSize: 13),
              ),
              trailing: InkWell(
                child: Image.asset(
                  'assets/icons/img.png',
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/i.png',
                fit: BoxFit.fill,
              ),
              title: Text(
                'Whatsapp (Internet Connection required)',
                style: TextStyle(fontSize: 13),
              ),
              trailing: InkWell(
                child: Image.asset(
                  'assets/icons/img.png',
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/k.png',
                fit: BoxFit.fill,
              ),
              title: Text(
                'Imo (Internet Connection required)',
                style: TextStyle(fontSize: 13),
              ),
              trailing: InkWell(
                child: Image.asset(
                  'assets/icons/img.png',
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
