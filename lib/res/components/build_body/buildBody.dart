import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
class buildPageView extends StatelessWidget {


  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _boxHeight = 150.0;
  var size,screenheight,screenwidth;
  var _items;

  buildPageView(this._items);

  final ScrollController controller = ScrollController();
  final ScrollController controller2 = ScrollController();
 // buildPageView({ Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size;
     screenheight = size.height;
     screenwidth   = size.width;
    return Column(
      children: <Widget>[
        Stack(

          children: <Widget>[
            _buildPageView(),
            _buildCircleIndicator(),


          ],
        ),
      ],
    );
  }
  _buildPageView() {

    return Container(
      color: Color(0xff707070),
      height: screenheight/5.5,
      // padding: EdgeInsets.only(left:12,right: 12),
      //  margin: EdgeInsets.only(left: 20,right: 20,),
      child: PageView.builder(
          itemCount: _items.length,

          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Center(

              child: Image.asset('assets/image/1.png',),

            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 1.0,
      right: 1.0,
      bottom: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

}
