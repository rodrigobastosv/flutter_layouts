class Call {
  final String name;
  final String time;
  final bool received;
  final CallType callType;
  final String imageUrl;

  Call({this.name, this.time, this.received, this.callType, this.imageUrl});
}

enum CallType {
  audio,
  video
}

List<Call> callData = [
  Call(
      name: "Hitesh Choudhary",
      time: "10 April, 6:03 pm",
      received: true,
      callType: CallType.video,
      imageUrl:
          "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Call(
      name: "Saksham Choudhary",
      time: "10 April, 6:03 pm",
      received: false,
      callType: CallType.video,
      imageUrl:
          "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Call(
      name: "Raushan Jha",
      time: "10 April, 6:03 pm",
      received: false,
      callType: CallType.audio,
      imageUrl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Call(
      name: "Nitesh",
      time: "14 April, 6:08pm",
      received: false,
      callType: CallType.video,
      imageUrl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Call(
      name: "Kaushal Jha",
      time: "11 April, 7:03 pm",
      received: true,
      callType: CallType.audio,
      imageUrl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
];
