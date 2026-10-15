class DateGroup {
  final String when;
  final List<String> msgs;

  DateGroup({
    required this.when,
    required this.msgs,
  });
}

class Message {
  final int id;
  final String name;
  final String img;
  final bool online;
  final int unread;
  final List<DateGroup> dates;

  Message({
    required this.id,
    required this.name,
    required this.img,
    required this.online,
    required this.unread,
    required this.dates,
  });
}