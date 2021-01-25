import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:m_s_m/UI/HomePage.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _heightFactorAnimation;
  double collapsedHeightFactor = 0.90;
  double expandedHeightFactor = 0.75;
  bool isAnimationCompleted = false;
  double screenHeight = 0;
  bool _tapInProgress;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(microseconds: 500));
    _heightFactorAnimation = Tween<double>(begin: collapsedHeightFactor, end: expandedHeightFactor).animate(_controller);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://i.pinimg.com/564x/48/0a/01/480a01969e4c8d78113145514c4f7870.jpg'),
              fit: BoxFit.cover,
          ) ,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: 30.0,
              left: 10.0,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black54,
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyPage()));
                },
              ),
            ),
        GestureDetector(
          onVerticalDragUpdate: _handVerticalUpdate,
          onVerticalDragEnd: _handVerticalEnd,

            child:Container(

              width: MediaQuery.of(context).size.width,

              margin: const EdgeInsets.only(top: 530.0),
              padding: EdgeInsets.all(28.0),
              decoration: new BoxDecoration(
                color: const Color(0xFF212121).withOpacity(0.8),

                border: new Border.all(color: Colors.black54,
                ),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 50,
                    right: 85,
                    child: Text('Alia Bhatt ', textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'jost',fontWeight: FontWeight.w700, fontSize: 35, color: Colors.white),),
                  ),
                  Positioned(
                    top: 110,
                    right: 47,
                    child: Text('Moody, Floaty, Fire and DESIRE ! ☀️',textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'jost',fontWeight: FontWeight.w300, fontSize: 14, color: Colors.white),),
                  ),
                ],
              ),
            ),
        ),

          ],
        ),
      ),
    );
  }


  void _handVerticalUpdate(DragUpdateDetails details) {

    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 600),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return ExtendedPage();
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
    );
  }

  void _handVerticalEnd(DragEndDetails details) {
    if(_controller.value >= 0.5){
      _controller.forward();}else{_controller.reverse();}
    }
  }

class ExtendedPage extends StatefulWidget{
  @override
  _ExtendedPageState createState() => _ExtendedPageState();
}

class _ExtendedPageState extends State<ExtendedPage>{
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.down,
      key: UniqueKey(),
      onDismissed: (_) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage())),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 1000,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 40,
                        left: 15,
                        child: Text('  aliaabhatt', style: TextStyle(fontFamily: 'jost',fontWeight: FontWeight.w600, fontSize: 28, color: Colors.white),),
                      ),
                      Positioned(
                        top: 80,
                        left: 30,
                        child: ButtonTheme(
                          minWidth: 120,
                          height: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.black)),
                          child: FlatButton(
                            color: Colors.blueGrey,
                            textColor: Colors.black,
                            padding: EdgeInsets.all(8.0),

                            onPressed: () {},
                            child: Text(
                              "follow +",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'jost',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        left: 15,
                        child: Container(
                          height: 270.0,
                          width: 170.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.transparent),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                                child: Image.network(
                                  'https://1847884116.rsc.cdn77.org/hindi/gallery/actress/aliabhatt/aliabhatt161019_5.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                            overflow: Overflow.clip,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        right: 30,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              iconSize: 35.0,
                              color: Colors.white,
                              icon: Icon(
                                Icons.group,
                              ),
                              onPressed: (){},
                            ),
                            Text(
                              'followers',
                              style: TextStyle(fontFamily: 'jost', fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 170,
                        right: 30,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              iconSize: 35.0,
                              color: Colors.white,
                              icon: Icon(
                                Icons.supervisor_account,
                              ),
                              onPressed: (){},
                            ),
                            Text(
                              'following',
                              style: TextStyle(fontFamily: 'jost', fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 260,
                        right: 30,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              iconSize: 35.0,
                              color: Colors.white,
                              icon: Icon(
                                Icons.favorite,
                              ),
                              onPressed: (){},
                            ),
                            Text(
                              'favorites',
                              style: TextStyle(fontFamily: 'jost', fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 350,
                        right: 30,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              iconSize: 35.0,
                              color: Colors.white,
                              icon: Icon(
                                Icons.queue_music,
                              ),
                              onPressed: (){},
                            ),
                            Text(
                              'playlist',
                              style: TextStyle(fontFamily: 'jost', fontWeight: FontWeight.w300, color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }

}
