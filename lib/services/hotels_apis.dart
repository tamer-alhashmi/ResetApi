import 'dart:convert';
import 'package:apireset2/model/hotel_categories.dart';
import 'package:apireset2/model/hotel.dart';
// import 'package:apireset2/model/hotel_likeDislike.dart';
import 'package:http/http.dart' as http;

// import '../model/hotel.dart';

class HotelsApi {
  static Future<List<Hotel>> fetchHotel() async {
    print('fetchHotel Called');
    const url =
        'https://raw.githubusercontent.com/tamer-alhashmi/hh_hotels/master/JasonFiles/properties.json';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final property = json['property'] as List<dynamic>;
    final hotels = property.map((e) {
      final categories = HotelCategory(
        DeluxeDoubleRoomEnsuite:
            e['categories']['DeluxeDoubleRoomEnsuite'].toString(),
        FamilyRoomDeluxeEnsuiteWithkitchenette: e['categories']
                ['FamilyRoomDeluxeEnsuiteWithkitchenette']
            .toString(),
        StandardDoubleRoomEnsuite:
            e['categories']['StandardDoubleRoomEnsuite'].toString(),
        TripleRoomDeluxeEnsuite:
            e['categories']['TripleRoomDeluxeEnsuite'].toString(),
        TwinRoomStandardEnsuite:
            e['categories']['TwinRoomStandardEnsuite'].toString(),
      );
      //
      // final likeDislike = LikeDisLike(
      // likes: e['likeDislike']['likes'],
      // dislikes: e['likeDislike']['dislikes'],
      // userAction: e['likeDislike']['userAction'],

      return Hotel(
        name: e['name'],
        reception: e['reception'],
        description: e['description'],
        location: e['location'],
        id: e['id'],
        profilePicture: e['profilePicture'],
        // likeDislike: e['likeDislike'],
        // categories: e['categories'],
        // amenities: e['categories'][CategoryAmenities] ,
      );
    }).toList();
    return hotels;
    // ignore: dead_code
    print('FetchUser Completed');
  }
}
