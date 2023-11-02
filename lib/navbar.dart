import 'package:flutter/material.dart';
import 'package:flutter_pageview_leftnavigation/company_profile.dart';
import 'package:flutter_pageview_leftnavigation/pageview_image_screen.dart';
import 'package:flutter_pageview_leftnavigation/pageview_text.dart';
import 'package:flutter_pageview_leftnavigation/personal_profile_screen.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('J.K Rowling Quotes'),
            accountEmail: Text('Version 1.0'),
            currentAccountPicture: ClipOval(
              child: Image.asset(
                'images/jk rowling.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/grey sea.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Quotes Text'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewText()));
            },
          ),
          ListTile(
            title: Text('Quotes Image'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PageViewImageScreen()));
            },
          ),
          ListTile(
            title: Text('Personal Profile'),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PersonalProfileScreen()));
            },
          ),
          ListTile(
            title: Text('Company Profile'),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CompanyProfile()));
            }
          )

        ],
      ),
    );
  }
}
