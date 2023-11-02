import 'package:flutter/material.dart';
import 'package:flutter_pageview_leftnavigation/navbar.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          'Personal Profile',
          style: TextStyle(
               fontSize: 25),
        ),
        backgroundColor: Color(0xFF7cbbc3),
      ),
      drawer: NavBar(),
      body: const SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/butterfly.jpg'),
            ),
            Text(
              'Traicy Whitney T',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                  ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'Inter',
                  ),
            ),
            SizedBox(
              height: 10,
              width: 250,
              child: Divider(
                color: Color(0xFF7cbbc3),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('whitneytraicy2001@gmail.com',
                        style:
                            TextStyle(fontSize: 18,fontFamily: 'Inter',))),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Chennai',
                  style: TextStyle(fontSize: 20,fontFamily: 'Inter'),
              ),
            ),
            ),
            ),
          ],
        ),
      )),
    );
  }
}
