import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_s_m/UI/notificationfeed.dart';
import 'package:m_s_m/UI/profile.dart';
import 'file:///F:/Android%20Studio%20Projects/m_s_m/lib/UI/linkplay.dart';

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
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3ehZ3AyVoCn9sZ9aji9jTc_R1HYTVstUrsg&usqp=CAU"
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlrVVY3NJqGRfH92b77CXa12V93VcJ8eHyLg&usqp=CAU'),
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
                                  "https://images.indianexpress.com/2020/06/Shah-Rukh-Khan-759-2.jpg"
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
            Row(
              children: <Widget>[
                SizedBox(
                  width: 25.0,
                ),
                Text('World of Music', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,),),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.transparent),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        'assets/world.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 50.0,
                      child: Icon(
                        Icons.library_music,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right: 50.0,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right:10.0,
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  overflow: Overflow.clip,
                ),
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 25.0,
                ),
                Text('#Trending Playlists', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,),),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv6Qegu-10ar1rey2y-Zuq8LJJUIMQGXe65w&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjV_XEfpwjSjdyGvgsDuKFyKNXgX5oiBVzw&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv6Qegu-10ar1rey2y-Zuq8LJJUIMQGXe65w&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjV_XEfpwjSjdyGvgsDuKFyKNXgX5oiBVzw&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv6Qegu-10ar1rey2y-Zuq8LJJUIMQGXe65w&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),



            Row(
              children: <Widget>[
                SizedBox(
                  width: 25.0,
                ),
                Text('World of Music', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,),),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.transparent),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      child: Image.asset(
                        'assets/world.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 50.0,
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right: 50.0,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      right:10.0,
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  overflow: Overflow.clip,
                ),
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 25.0,
                ),
                Text('#Trending Playlists', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,),),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv6Qegu-10ar1rey2y-Zuq8LJJUIMQGXe65w&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjV_XEfpwjSjdyGvgsDuKFyKNXgX5oiBVzw&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv6Qegu-10ar1rey2y-Zuq8LJJUIMQGXe65w&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjV_XEfpwjSjdyGvgsDuKFyKNXgX5oiBVzw&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 130.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv6Qegu-10ar1rey2y-Zuq8LJJUIMQGXe65w&usqp=CAU',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                      overflow: Overflow.clip,
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    bottomNavigationBar: new Container(
    color: Colors.white,
    height: 50.0,
    alignment: Alignment.center,
    child: new BottomAppBar(
    child: new Row(
    // alignment: MainAxisAlignment.spaceAround,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
    new IconButton(
    icon: Icon(
    Icons.home,
    ),
    onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyPage()));
    },
    ),
    new IconButton(
    icon: Icon(
    Icons.phonelink_ring,
    ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LinkPlayPage()));
    },
    ),
    new IconButton(
    icon: Icon(
    Icons.rss_feed,
    ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => FeedPage()));
    },
    ),
    new IconButton(
    icon: Icon(
    Icons.person_outline,
    ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
    },
    ),
    ],
    ),
    ),
    )
    );
  }

}