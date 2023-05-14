
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import '../../res/components/carousel_slider/carousal_slider.dart';
import '../../res/components/listview_topserch/listviewtopserch.dart';
import '../../res/components/service_request_screen/service_request_screen.dart';
import '../../res/components/service_requestitem/ServiceRequestItem.dart';
import '../../res/components/build_body/buildBody.dart';
import '../../res/components/servuceandmyrefferalcard/servuceandmyrefferalcard.dart';
import '../computer_screen/computer_repair.dart';
import '../notifications_screen/notification_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../request_screen/request_service.dart';
import '../search_service_screen/serch_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _items = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.amber,
    Colors.brown,
    Colors.yellow,
    Colors.blue,
  ];

  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _boxHeight = 150.0;

  var size, screenheight, screenwidth;

  final ScrollController controller = ScrollController();
  final ScrollController controller2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    screenheight = size.height;
    screenwidth = size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Good Morning",
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: '\nJohn Williams',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ]
          ),
        ),
        leading: Image.asset('assets/image/15.png'),
        actions: <Widget>[

          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Searchservice()));
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Notificationscreen()));
            },
            icon: Icon(Icons.notification_important),
          ),
        ],

      ),

      body: SingleChildScrollView(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Carousalslider(),
           // buildPageView(_items),
            servuceandmyrefferalcard(84, "My service requests"),
            servuceandmyrefferalcard(129, "My referral earnings",),
            listviewtopserch('hhh', "jjjj"),
          Servicerequestscreen(),

          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color(0xffE8E8E8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 60,
                child: InkWell(
                  onTap: () {

                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard, color: Color(0xff212325), size: 30,),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RequestService()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_sharp, color: Color(0xff212325),
                        size: 50,),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Profilescreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_outline, color: Color(0xff212325),
                        size: 30,),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }

}



