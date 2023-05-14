
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenzzed1/view/change_password_screen/change_password_screen.dart';
import '../../res/components/button_component/button_component.dart';
import '../../res/prifile_screen_widget/my_service_request_screen.dart';
import '../edit_profile_screen/edit_profile.dart';
import '../login_screen/login_screen.dart';
import '../notifications_screen/notification_screen.dart';
class Profilescreen extends StatelessWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Profile', style: TextStyle(fontSize: 20, color: Color(0xff212325)),),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => Editprofilescreen()),
                  //(Route<dynamic> route) => false
                );
              },
              child:
              Card(
                clipBehavior: Clip.hardEdge,
                color: Color(0xffEFEFEF),
                child: SizedBox(
                  width: 500,
                  height: 130,
                  child: ListTile(
                    leading: Image.asset('assets/image/16.png',),
                    title: Text('John williams',
                      style: TextStyle(
                          fontSize: 20, color: Color(0xff212325)),),
                    subtitle:
                    Text('Johnwilliams@mail.com\n+1 8019635143',
                      style: TextStyle(
                          fontSize: 15, color: Color(0xff4E4E4E)),),
                    trailing: Icon(
                      Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                    isThreeLine: true,
                  ),

                ),
              ),

            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Myservicerequest()));
              },
              child: Card(
                color: Color(0xffEFEFEF),

                child: ListTile(
                  title: Text(
                      'My service request  ,                               04'),
                  //splashColor: Colors.white30,

                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Card(
                color: Color(0xffEFEFEF),

                child: ListTile(
                  title: Text(
                      'Applied service requests                         02'),

                  // subtitle: Text('04'),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),

                ),

              ),
            ),

            InkWell(
              onTap: () {},
              child: Card(
                color: Color(0xffEFEFEF),
                child: ListTile(
                  title: Text(
                      'Your Referrals                                          03'),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Card(
                color: Color(0xffEFEFEF),
                child: ListTile(
                  title: Text("Referral earnings ",
                    style: TextStyle(color: Color(0xff4E4E4E),),),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>   Notificationscreen  ()),
                  //(Route<dynamic> route) => false
                );
              },
              child: Card(
                color: Color(0xffEFEFEF),

                child: ListTile(
                  title: Text('Notifications',
                    style: TextStyle(color: Color(0xff4E4E4E),),),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>   Changepasswordscreen ()),
                  //(Route<dynamic> route) => false
                );
              },
              child: Card(
                color: Color(0xffEFEFEF),
                child: ListTile(
                  title: Text('Change passoward',
                    style: TextStyle(color: Color(0xff4E4E4E),),),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),
            //  SizedBox(height: 10,),
            InkWell(
              onTap: () {},
              child: Card(
                color: Color(0xffEFEFEF),
                child: ListTile(
                  title: Text('Terms& conditions',
                    style: TextStyle(color: Color(0xff4E4E4E),),),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),
            // SizedBox(height: 5,),
            InkWell(
              onTap: () {},
              child: Card(
                color: Color(0xffEFEFEF),
                child: ListTile(
                  title: Text(
                    'Help', style: TextStyle(color: Color(0xff4E4E4E),),),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Color(0xff4E4E4E),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            AppButton(text: 'log out',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) =>
                        AlertDialog(
                          title: const Text("Please logout"),
                         // content: const Text("heart"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                //color: AppColors.color1,
                                padding: const EdgeInsets.all(14),
                                child: const Text("edit"),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage ()));
                              },
                              child: Container(
                                //color: AppColors.color1,
                                padding: const EdgeInsets.all(14),
                                child: const Text("ok"),
                              ),
                            ),
                          ],
                        ),
                  );
                }

            ),

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




