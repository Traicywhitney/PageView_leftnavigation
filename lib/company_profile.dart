import 'package:flutter/material.dart';
import 'package:flutter_pageview_leftnavigation/navbar.dart';


class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
          title: Text(
            'Company Profile',
            style: TextStyle(
                fontSize: 25,
                ),
          ),
          backgroundColor: Color(0xCC7cbbc3)),
      drawer: NavBar(),
      body: SafeArea(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(35),
                  child: Image.asset('images/company_logo.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Tidy Life India Pvt Ltd',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
            width: 300,
            child: Divider(
              color: Colors.blueAccent.shade100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    '+91 8610338291',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'tidylifeindia@gmail.com',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.web_asset_outlined),
                  title: Text(
                    'http://www.tidylifeindia.com/',
                    style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.location_city),
                title: Text(
                  'No.A3, Mahalakshimi Flats,\nSivagami Street,\nNew Perungalathur,\nChennai-600062',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                ),
              ),
            ),
          )
        ])),
      ),
    );
  }
}
