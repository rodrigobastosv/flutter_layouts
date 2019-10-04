class Chat {
  final String name;
  final String message;
  final MessageStatus messageStatus;
  final bool isMuted;
  final int unreadMessagesCount;
  final String time;
  final String imageUrl;

  Chat({this.name, this.message, this.messageStatus, this.isMuted, this.unreadMessagesCount, this.time, this.imageUrl});
}

enum MessageStatus {
  arrivedAndRead,
  arrivedAndNotRead,
  notArrived
}

List<Chat> messageData = [
  Chat(
      name: "Hitesh Choudhary",
      messageStatus: MessageStatus.arrivedAndRead,
      message: "Learn Code Online",
      time: "10:12",
      isMuted: true,
      unreadMessagesCount: 0,
      imageUrl:
          "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Saksham",
      messageStatus: MessageStatus.notArrived,
      message: "welcome to flutter course",
      time: "02:16",
      isMuted: true,
      unreadMessagesCount: 2,
      imageUrl:
          "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Raushan Jha",
      messageStatus: MessageStatus.arrivedAndRead,
      message:
          "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
      time: "11:11",
      isMuted: false,
      unreadMessagesCount: 0,
      imageUrl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Nitesh",
      messageStatus: MessageStatus.arrivedAndNotRead,
      message: "Python ",
      time: "20:21",
      isMuted: false,
      unreadMessagesCount: 3,
      imageUrl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Kaushal Jha",
      messageStatus: MessageStatus.arrivedAndNotRead,
      message: "The dark fire will not avail you! Flame of Udûn!",
      time: "1:12",
      isMuted: false,
      unreadMessagesCount: 15,
      imageUrl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Raushan Jha",
      messageStatus: MessageStatus.notArrived,
      message:
          "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
      time: "11:11",
      isMuted: false,
      unreadMessagesCount: 0,
      imageUrl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Nitesh",
      messageStatus: MessageStatus.notArrived,
      message: "Python ",
      time: "20:21",
      isMuted: false,
      unreadMessagesCount: 1,
      imageUrl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Chat(
      name: "Kaushal Jha",
      messageStatus: MessageStatus.arrivedAndRead,
      message: "The dark fire will not avail you! Flame of Udûn!",
      time: "1:12",
      isMuted: true,
      unreadMessagesCount: 0,
      imageUrl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
];
