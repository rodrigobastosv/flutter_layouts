import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chat.dart';

class TalksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => TalkTabItem(
                chat: messageData[index],
              ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: messageData.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Color(0xFF17d825),
      ),
    );
  }
}

class TalkTabItem extends StatelessWidget {
  TalkTabItem({this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chat.imageUrl),
        backgroundColor: Colors.transparent,
      ),
      trailing: Column(
        children: <Widget>[
          Text(
            chat.time,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 8),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                color: chat.unreadMessagesCount > 0
                    ? Colors.green
                    : Colors.transparent,
                shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Text(
              chat.unreadMessagesCount.toString(),
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      title: Text(
        chat.name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          _buildIcon(chat.messageStatus),
          SizedBox(width: 6),
          Flexible(
              child: Text(
            chat.message,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black),
          )),
          SizedBox(width: 6),
          chat.isMuted
              ? Icon(Icons.volume_off, color: Colors.grey)
              : Container(),
        ],
      ),
    );
  }

  Widget _buildIcon(MessageStatus messageStatus) {
    switch (messageStatus) {
      case MessageStatus.arrivedAndRead:
        return Icon(FontAwesomeIcons.checkDouble, color: Colors.blue, size: 12);
      case MessageStatus.arrivedAndNotRead:
        return Icon(FontAwesomeIcons.checkDouble, color: Colors.grey, size: 12);
      case MessageStatus.notArrived:
        return Icon(FontAwesomeIcons.check, color: Colors.grey, size: 12);
    }
    return Icon(FontAwesomeIcons.checkDouble, size: 12);
  }
}