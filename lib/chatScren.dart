import 'package:flutter/material.dart';
import './conversationModel.dart';

class ChartScreen2 extends StatefulWidget {
  final ConversationModel conversation;

  const ChartScreen2({Key key, this.conversation}) : super(key: key);
  @override
  _ChartScreen2State createState() => _ChartScreen2State(conversation);
}

class _ChartScreen2State extends State<ChartScreen2> {
  final ConversationModel conversation;
  _ChartScreen2State(this.conversation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe8dfd8),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(63.0),
        child: AppBar(
          backgroundColor: Color(0xFF128C7E),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).maybePop(),
          ),
          titleSpacing: 0,
          title: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(conversation.image),
            ),
            title: Text(
              conversation.fullName,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            subtitle: Text(
              conversation.date,
              style:
                  TextStyle(color: Colors.white.withOpacity(.7), fontSize: 12),
            ),
          ),
          actions: <Widget>[
            Icon(Icons.videocam),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            conversation.message,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 21),
                            child: Text(
                              conversation.date,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: -3,
                      top: 12,
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                            height: 10, width: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.tag_faces,
                          color: Colors.grey,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 180,
                          height: 20,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type message',
                              contentPadding: EdgeInsets.only(left: 5),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -3,
                    top: 12,
                    child: ClipPath(
                      clipper: TriangleClipper(),
                      child:
                          Container(height: 10, width: 30, color: Colors.white),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xFF128C7E), shape: BoxShape.circle),
                child:
                    Icon(Icons.keyboard_voice, color: Colors.white, size: 32),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
