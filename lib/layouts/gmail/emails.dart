import 'package:flutter/material.dart';

class Email {
  final String text;
  final String avatarText;
  final String sender;
  final String time;
  final Color avatarColor;
  final bool isStarred;
  final String file;

  Email({
    this.text,
    this.avatarText,
    this.sender,
    this.time,
    this.avatarColor,
    this.isStarred,
    this.file,
  });
}

final emailsData = [
  Email(
    text: 'Lorem ipsum quisque fames cubilia proin',
    avatarText: 'P',
    sender: 'Philip Hracek',
    time: '23:11',
    avatarColor: Colors.primaries[0],
    file: 'important.pdf',
    isStarred: true
  ),
  Email(
      text: 'posuere blandit sem magna, interdum pretium mi tincidunt vitae primis cubilia sociosqu. metus blandit leo taciti ',
      avatarText: 'E',
      sender: 'Emily Fortuna',
      time: '20:55',
      avatarColor: Colors.primaries[1],
      isStarred: true
  ),
  Email(
      text: 'facilisis purus condimentum pretium sit, elit taciti nunc',
      avatarText: 'B',
      sender: 'Bill Gates',
      time: '21:12',
      avatarColor: Colors.primaries[2],
      isStarred: false
  ),
  Email(
      text: 'Taciti nulla conubia vitae gravida vivamus sed potenti mor',
      avatarText: 'S',
      sender: 'Steve Jobs',
      time: '10:01',
      avatarColor: Colors.primaries[3],
      file: 'routine.pdf',
      isStarred: false
  ),
  Email(
      text: 'Diam ligula aliquam vivamus rhoncus vulputate ullamcorper',
      avatarText: 'M',
      sender: 'Melinda Gates',
      time: '06:33',
      avatarColor: Colors.primaries[4],
      isStarred: false
  ),
  Email(
      text: 'pulvinar ante quisque fusce ornare nisi pretium aliquam etiam rho',
      avatarText: 'L',
      sender: 'Lara Andrade',
      time: '04:15',
      avatarColor: Colors.primaries[5],
      isStarred: true
  ),
  Email(
      text: 'Orci turpis integer euismod ad, mi quisque. ',
      avatarText: 'D',
      sender: 'Denis Baleta',
      time: '03:02',
      avatarColor: Colors.primaries[6],
      isStarred: false
  ),
  Email(
      text: 'pulvinar ante quisque fusce ornare nisi pretium aliquam etiam rho',
      avatarText: 'W',
      sender: 'Wesly Viana',
      time: '01:11',
      avatarColor: Colors.primaries[0],
      isStarred: false
  ),
  Email(
      text: 'sagittis interdum litora arcu justo netus, commodo urna inceptos velit ligula ultrices integer facilisis. ',
      avatarText: 'L',
      sender: 'Luan Lima',
      time: '04:15',
      avatarColor: Colors.primaries[7],
      isStarred: false
  ),
  Email(
      text: 'pulvinar ante quisque fusce ornare nisi pretium aliquam etiam rho',
      avatarText: 'F',
      sender: 'Frango Loiro',
      time: '22:31',
      avatarColor: Colors.primaries[8],
      isStarred: false
  ),
];