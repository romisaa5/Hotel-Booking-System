class Hotel {
  String name;
  List<Room> rooms;
  Hotel({required this.name, required this.rooms});
  void addRoom(Room room) {
    rooms.add(room);
  }

  void showAvailableRooms() {
    print("Available Rooms: ");
    for (var room in rooms) {
      if (room.isAvailable) {
        print("Room ${room.roomNumber} - Price: ${room.Pice}");
      }
    }
  }
}

class Room {
  int roomNumber;
  double Pice;
  bool isAvailable;
  Room({required this.roomNumber, this.isAvailable = true, required this.Pice});
  void bookRoom() {
    if (isAvailable) {
      isAvailable = false;
      print("Room \$roomNumber has been booked.");
    } else {
      print("Room \$roomNumber is already booked.");
    }
  }

  void cancelBooking() {
    isAvailable = true;
    print("Booking for Room \$roomNumber has been canceled.");
  }
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
