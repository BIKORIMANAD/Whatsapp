import 'package:flutter/material.dart';
import './conversationModel.dart';
import 'chatScren.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: conversation.length,
      itemBuilder: (BuildContext context, index) =>
          conversations(context, conversation[index]),
    );
  }
}

Widget conversations(
    BuildContext context, ConversationModel conversationModel) {
  return InkWell(
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => ChartScreen2(
              conversation: conversationModel,
            ))),
    child: Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: ClipOval(
              child: Image.network(conversationModel.image),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      conversationModel.fullName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      conversationModel.message,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(conversationModel.date,
                        style: TextStyle(
                            color: conversationModel.messageCount > 0
                                ? Color(0xFF25D366)
                                : Colors.grey,
                            fontSize: 12)),
                    conversationModel.messageCount > 0
                        ? Chip(
                            backgroundColor: Color(0xFF25D366),
                            label: Text(
                              '${conversationModel.messageCount}',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        : Text(''),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 330,
            height: 1,
            margin: EdgeInsets.only(left: 56, top: 21),
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}
