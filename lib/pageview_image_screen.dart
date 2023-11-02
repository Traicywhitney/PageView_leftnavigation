
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pageview_leftnavigation/appdata_image.dart';
import 'package:flutter_pageview_leftnavigation/display_image.dart';
import 'package:flutter_pageview_leftnavigation/indicator.dart';
import 'package:flutter_pageview_leftnavigation/navbar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({super.key});

  @override
  State<PageViewImageScreen> createState() => _PageViewImageScreenState();
}

class _PageViewImageScreenState extends State<PageViewImageScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7cbbc3),
        title: Text('J.K Rowling Quotes',style: TextStyle(fontSize: 25),),
        actions: [
          PopupMenuButton<int>(itemBuilder: (context)=>[
            PopupMenuItem(value: 1,child: Text('Share'),),
            PopupMenuItem(value: 2, child: Text('Daily quotes'),),
          ],
          elevation: 2,
          onSelected: (value){
            if(value== 1){
              print('----------->Share option selected');
             _shareImage();
            }else if(value== 2){
              print('------------->Daily Quotes option selected');
            }
          },)
        ],
      ),
      drawer: NavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemCount: appDataImage.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appDataImage: appDataImage[index]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataImage.length,
                    (index) =>
                Indicator.indicator(isActive: _selectedIndex == index ? true : false))
              ],
            ),
          )
        ],
      ),
    );
  }
  void _shareImage() async {
    print('------->_shareImage');

    print(appDataImage[_selectedIndex].image);

    ByteData imageByte = await rootBundle.load(appDataImage[_selectedIndex].image);

    final temp = await getTemporaryDirectory();
    print('----------->Directory: $temp');

    final path = '${temp.path}/wb_1.jpg';
    print('--------->Image Path:$path');

    File(path).writeAsBytesSync(imageByte.buffer.asUint8List());

    await Share.shareFiles([path],);
  }
}
