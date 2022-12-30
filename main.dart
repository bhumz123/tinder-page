import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tinder(),
    ),
  );
}

class Tinder extends StatefulWidget {
  const Tinder({Key? key}) : super(key: key);

  @override
  State<Tinder> createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  int profile = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Tinder Profile"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            profile++;
          });
        },
        child: Icon(Icons.add, size: 40, color: Colors.blueGrey),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'images\WhatsApp Image 2022-12-28 at 17.52.50.jpeg'),
              radius: 60.0,
            ),
            Divider(
              height: 80,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Bhumika Rana',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.deepOrange,
                ),
                SizedBox(width: 20),
                Text(
                  'bhumu983@gmail.com',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
