
import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

import '../Model/record_model.dart';

class CounterController extends GetxController{
  late Future<Album> futureAlbum;
   int count = 0;

  void  increment(){
    //count = (count +  1);
    ++count;
    /// Built in function to update the UI value
    update();
    print("Counter: $count");
  }
   Future<Album> fetchAlbum() async {
     final response = await http
         .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
     if (response.statusCode == 200) {
       // If the server did return a 200 OK response,
       // then parse the JSON.
       return Album.fromJson(jsonDecode(response.body));
     } else {
       // If the server did not return a 200 OK response,
       // then throw an exception.
       throw Exception('Failed to load album');
     }
   }

  @override
  void onInit() {
    // TODO: implement onInit
     super.onInit();
     futureAlbum = fetchAlbum();
  }
}