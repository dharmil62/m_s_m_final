import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  /// Variables
  Animation gap;
  Animation base;
  Animation reverse;
  AnimationController controller;

  /// Init
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  /// Dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      elevation: 1.0,
      leading: new Icon(Icons.camera_alt),
      title: SizedBox(
        height: 20.0, child: Text("Musical Media", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,),), ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send),
        )
      ],
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  child: RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 40,
                      color: Colors.pinkAccent,
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1564564295391-7f24f26f568b"
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  child: RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 40,
                      color: Colors.greenAccent,
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                                "https://instagram.fbdq2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/116704747_1057762941292820_3085964958096953285_n.jpg?_nc_ht=instagram.fbdq2-1.fna.fbcdn.net&_nc_ohc=rjFmigjQjAsAX-FToj0&tp=1&oh=66a8e1f8f8e48760469dd79b78108f98&oe=60284F13"
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  child: RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 40,
                      color: Colors.blue,
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                                "https://instagram.fbdq2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/61366242_708437896276485_4211085837384810496_n.jpg?_nc_ht=instagram.fbdq2-1.fna.fbcdn.net&_nc_ohc=CRC26LLjbT8AX_xhKZp&tp=1&oh=4ccd9e833817bb47cec5e344173167f2&oe=60286EC4"
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  child: RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 40,
                      color: Colors.black54,
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                                "https://instagram.fbdq2-1.fna.fbcdn.net/v/t51.2885-15/e15/c0.360.720.720a/s150x150/125234162_1092796234512976_4809830116367432105_n.jpg?_nc_ht=instagram.fbdq2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=SzVCZtwNunAAX_Hhk-e&tp=1&oh=e21cb28d1d1231717e7260494ab0e469&oe=60026B58"
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  child: RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 40,
                      color: Colors.lime,
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                                "https://instagram.fbdq2-1.fna.fbcdn.net/v/t51.12442-15/e35/c0.151.695.695a/s150x150/56963314_1366835030136586_3494572656551248991_n.jpg?_nc_ht=instagram.fbdq2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=uUw3e7LSWTgAX9l-6r_&tp=1&oh=b87f9f834a686c2006a549c07765f635&oe=60028FF8"
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black54,
          ),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          iconSize: 40,
          elevation: 5
      ),
    );
  }
}