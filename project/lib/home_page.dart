import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final home = Hero(

      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(

          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/profile.png'),
        ),
      ),
    );

    final welcome = Padding(

      padding: EdgeInsets.all(8.0),
      child: Text(
        
        'Welcome Daniyal',
        style: TextStyle(fontSize: 28.0, color: Colors.white),

      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(

        gradient: LinearGradient(colors: [Colors.blue, Colors.blue]),
      ),

      child: Column(

        children: <Widget>[home, welcome],
      ),



    );
    return Scaffold(
      body: body,
      
    );
  }
}