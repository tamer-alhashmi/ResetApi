class HotelCategory {
  final String DeluxeDoubleRoomEnsuite;
  final String FamilyRoomDeluxeEnsuiteWithkitchenette;
  final String TripleRoomDeluxeEnsuite;
  final String StandardDoubleRoomEnsuite;
  final String TwinRoomStandardEnsuite;

  HotelCategory({
    required this.DeluxeDoubleRoomEnsuite,
    required this.FamilyRoomDeluxeEnsuiteWithkitchenette,
    required this.StandardDoubleRoomEnsuite,
    required this.TripleRoomDeluxeEnsuite,
    required this.TwinRoomStandardEnsuite,
  });
}

class DeluxeDoubleRoomEnsuite {
  final String catname;
  final String categorydescreption;
  final String roomsize;
  final String amenities;

  DeluxeDoubleRoomEnsuite({
    required this.amenities,
    required this.categorydescreption,
    required this.catname,
    required this.roomsize,
  });
}

class FamilyRoomDeluxeEnsuiteWithkitchenette {
  final String catname;
  final String categorydescreption;
  final String roomsize;
  final String amenities;

  FamilyRoomDeluxeEnsuiteWithkitchenette({
    required this.amenities,
    required this.categorydescreption,
    required this.catname,
    required this.roomsize,
  });
}

class StandardDoubleRoomEnsuite {
  final String catname;
  final String categorydescreption;
  final String roomsize;
  final String amenities;

  StandardDoubleRoomEnsuite({
    required this.amenities,
    required this.categorydescreption,
    required this.catname,
    required this.roomsize,
  });
}

class TripleRoomDeluxeEnsuite {
  final String catname;
  final String categorydescreption;
  final String roomsize;
  final String amenities;

  TripleRoomDeluxeEnsuite({
    required this.amenities,
    required this.categorydescreption,
    required this.catname,
    required this.roomsize,
  });
}

class TwinRoomStandardEnsuite {
  final String catname;
  final String categorydescreption;
  final String roomsize;
  final String amenities;

  TwinRoomStandardEnsuite({
    required this.amenities,
    required this.categorydescreption,
    required this.catname,
    required this.roomsize,
  });
}

class CategoryAmenities {
  final String amenities;

  CategoryAmenities(this.amenities);
}
