import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name for the UI
  String time; // Time in that location
  String flag; // URL to an asset flag icon
  String url; // Location URL for API endpoint
  bool isDaytime; // True or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data);

      // Get properties from data
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
      // print(datetime);
      // print(offset);

      // Create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // Set the time property
      isDaytime = (now.hour > 6) && (now.hour < 20) ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught Error: $e');
      time = 'Could not get time data.';
    }
  }
}
