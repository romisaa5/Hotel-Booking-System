class Hotel {
  String name;
  List<Room> rooms;
  Hotel({required this.name, required this.rooms});
}

class Room {
  int roomNumber;
  double Pice;
  bool isAvailable;
  Room(
      {required this.roomNumber,
      required this.isAvailable,
      required this.Pice});
}

class User {
  String name;
  List<Booking> bookings;
  User(this.name, this.bookings);
}

class Booking {
  User user;
  Room room;
  bool isPaid;
  DateTime bookingDate;
  Booking(
      {required this.user,
      required this.room,
      required this.isPaid,
      required this.bookingDate});
}
