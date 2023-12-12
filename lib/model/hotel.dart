import 'package:apireset2/model/hotel_categories.dart';
import 'package:apireset2/model/hotel_likeDislike.dart';

class Hotel {
  final String name;
  final String reception;
  final String description;
  final String location;
  final int id;
  final String profilePicture;
  // final LikeDisLike likeDislike;

  // final String categories;
  // final String amenities;

  Hotel({
    required this.name,
    required this.reception,
    required this.description,
    required this.location,
    required this.id,
    required this.profilePicture,
    // required this.categories,
    // required this.likeDislike,
    // required this.amenities,
  });
}
