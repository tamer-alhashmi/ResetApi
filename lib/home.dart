// import 'package:final_h_hotels/Properties/Hotels.dart';
import 'dart:math';
import 'dart:ui';
import 'package:apireset2/model/hotel_likeDislike.dart';
import 'package:apireset2/model/hotel.dart';
import 'package:apireset2/services/hotels_apis.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Hotel> hotels = [];

  // this override to call data
  @override
  void initState() {
    super.initState();
    fetchHotel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H&H Hotels'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            final hotel = hotels[index];
            final name = hotel.name;
            final location = hotel.location;
            final description = hotel.description;
            final profilePicture = hotel.profilePicture;
            // final likeDislike = hotel.likeDislike;
            // final manned = hotel.reception == "manned" ? Colors.teal : Colors.tealAccent;
            return ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(profilePicture)),
              title: Text(name),
              // tileColor: manned,
              subtitle: Text(location),
            );
          }),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: fetchHotel,
      //   backgroundColor: Colors.teal, // Set the background color
      //   foregroundColor: Colors.white, // Set the icon color
      //   elevation: 5.0,
      //   child: const Icon(Icons.arrow_forward,
      //     size: 30.0,
      //       semanticLabel: 'FetchUser',
      //   ), // Set the shadow elevation
      //   ),
    );
  }

  Future<void> fetchHotel() async {
    final response = await HotelsApi.fetchHotel();
    setState(() {
      hotels = response;
    });
  }
}
