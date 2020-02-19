import 'package:flutter/material.dart';
import 'chart_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF128C7E),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
          title: Text('Whatsapp',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.more_vert)
          ],
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            ChatScreen(),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.comment),
          backgroundColor: Color(0xFF25D366),
          onPressed: () {},
        ),
      ),
    );
  }
}
