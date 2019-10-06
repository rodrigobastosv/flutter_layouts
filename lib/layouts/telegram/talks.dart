import 'package:flutter/material.dart';
import 'package:flutter_layouts/shared/chat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Talks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.separated(
          itemBuilder: (context, index) =>
              TalkTabItem(chat: messageData[index]),
          separatorBuilder: (context, index) => Divider(),
          itemCount: messageData.length),
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
        radius: 28,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            chat.name,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              chat.messageStatus == MessageStatus.arrivedAndRead ?
                Icon(FontAwesomeIcons.checkDouble, color: Colors.green, size: 12) : Container(),
              SizedBox(width: 8),
              Text(chat.time, style: TextStyle(color: Colors.grey, fontSize: 14)),
            ],
          )
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Text(
              chat.message,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          SizedBox(width: 8),
          chat.unreadMessagesCount > 0 ?
          Chip(
            backgroundColor: Colors.grey[400],
            label: Text(
              chat.unreadMessagesCount.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
