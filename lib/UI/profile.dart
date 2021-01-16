import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_s_m/UI/HomePage.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {
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
        Container(
          width: MediaQuery.of(context).size.width,

          margin: const EdgeInsets.only(top: 530.0),
          padding: EdgeInsets.all(28.0),
          decoration: new BoxDecoration(
              color:   const Color(0xFF212121).withOpacity(0.8),

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
          ],
        ),
      ),
    );
  }
}
